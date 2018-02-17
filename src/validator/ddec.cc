// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/cfg/dominators.h"
#include "src/cfg/paths.h"
#include "src/cfg/sccs.h"
#include "src/validator/bounded.h"
#include "src/validator/data_collector.h"
#include "src/validator/dual.h"
#include "src/validator/ddec.h"
#include "src/validator/flow_invariant_learner.h"
#include "src/validator/indexer.h"
#include "src/validator/null.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/disjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/implication.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/nonzero.h"
#include "src/validator/invariants/sign.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"

#include <chrono>
#include <algorithm>
#include <set>

// this is configurable via build system
#ifdef STOKE_DEBUG_DDEC
#define DDEC_DEBUG(X) { X }
#else
#define DDEC_DEBUG(X) {   }
#endif

#ifdef STOKE_DEBUG_CEG
#define CEG_DEBUG(X) { X }
#else
#define CEG_DEBUG(X) {   }
#endif



#define DDEC_TC_DEBUG(X) { }

using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

void DdecValidator::warn(string s) {
  for (size_t i = 0; i < 8; ++i)
    cout << "  **************** WARNING **************** " << endl;
  cout << s << endl;
  for (size_t i = 0; i < 2; ++i)
    cout << "  ***************************************** " << endl;

  for (size_t i = 0; i < 8; ++i)
    cerr << "  **************** WARNING **************** " << endl;
  cerr << s << endl;
  for (size_t i = 0; i < 2; ++i)
    cerr << "  ***************************************** " << endl;


}

Instruction get_last_instr(const Cfg& cfg, Cfg::id_type block) {
  auto start_bs = cfg.num_instrs(block);
  return cfg.get_code()[cfg.get_index(Cfg::loc_type(block, start_bs - 1))];
}

/** Returns an invariant representing the fact that the first state transition in the path is taken. */
Invariant* get_jump_inv(const Cfg& cfg, Cfg::id_type sb, const CfgPath& p, bool is_rewrite) {
  auto jump_type = ObligationChecker::is_jump(cfg, sb, p, 0);

  if (jump_type == ObligationChecker::JumpType::NONE) {
    return new TrueInvariant();
  }

  auto start_block = p[0];
  if (p.size() == 1)
    start_block = sb;
  auto start_bs = cfg.num_instrs(start_block);
  assert(start_bs > 0);
  auto jump_instr = cfg.get_code()[cfg.get_index(Cfg::loc_type(start_block, start_bs - 1))];

  if (!jump_instr.is_jcc()) {
    return new TrueInvariant();
  }

  bool is_fallthrough = jump_type == ObligationChecker::JumpType::FALL_THROUGH;
  auto jump_inv = new FlagInvariant(jump_instr, is_rewrite, is_fallthrough);
  return jump_inv;
}


// takes conjunction of the form (A1 and A2 ... Ak) and returns one of form
// ((B => A1) and (B => A2) ... (B => Ak))
ConjunctionInvariant* transform_with_assumption(Invariant* assume, ConjunctionInvariant* conjunction) {

  ConjunctionInvariant* output = new ConjunctionInvariant();

  for (size_t i = 0; i < conjunction->size(); ++i) {
    output->add_invariant(new ImplicationInvariant(assume, (*conjunction)[i]));
  }

  delete conjunction;
  return output;
}



void DdecValidator::make_tcs(const Cfg& target, const Cfg& rewrite) {

  if (no_bv_) //if not using the bounded validator for testcases, skip this entirely.
    return;

  auto target_paths = CfgPaths::enumerate_paths(target, bound_);
  auto rewrite_paths = CfgPaths::enumerate_paths(rewrite, bound_);

  Code nop_code;
  nop_code.push_back(x64asm::Instruction(x64asm::NOP));
  Cfg nop_cfg(nop_code);
  vector<size_t> empty_path;
  empty_path.push_back(1);

  FalseInvariant _false;
  TrueInvariant _true;

  for (auto p : target_paths) {
    DDEC_DEBUG(cout << "Trying path " << p << " ; on target" << endl;)
    bool equiv = check(target, nop_cfg, target.get_entry(), nop_cfg.get_entry(), p, empty_path, _true, _false);
    if (!equiv && checker_has_ceg()) {
      sandbox_.insert_input(checker_get_target_ceg());
    }
  }
  for (auto p : rewrite_paths) {
    DDEC_DEBUG(cout << "Trying path " << p << " ; on rewrite" << endl;)
    bool equiv = check(rewrite, nop_cfg, rewrite.get_entry(), nop_cfg.get_entry(), p, empty_path, _true, _false);
    if (!equiv && checker_has_ceg()) {
      sandbox_.insert_input(checker_get_target_ceg());
    }
  }

}

template <typename T>
T find_min(vector<T> v) {
  assert(v.size() > 0);
  T x = v[0];
  for (size_t i = 1; i < v.size(); ++i)
    if (v[i] < x)
      x = v[i];
  return x;
};

vector<Cfg::id_type> intersect(std::vector<Cfg::id_type>& s1, std::vector<Cfg::id_type>& s2) {
  cout << "S1: " << s1 << endl;
  cout << "S2: " << s2 << endl;
  vector<Cfg::id_type> output;
  std::sort(s1.begin(), s1.end());
  std::sort(s2.begin(), s2.end());
  set_intersection(s1.begin(), s1.end(), s2.begin(), s2.end(),
                   std::inserter(output, output.begin()));
  cout << "S1 intersect S2: " << output << endl;
  return output;
}

vector<Cfg::id_type> dominator_intersect(Cfg& cfg, std::vector<Cfg::id_type>& blocks) {
  CfgDominators dominators(cfg);

  auto all_blocks = blocks;
  for (auto blk : blocks) {
    auto doms = dominators.get_dominators(blk);

    std::vector<Cfg::id_type> dom_vec(doms.begin(), doms.end());
    cout << "Dominators for " << blk << ": " << dom_vec << endl;
    all_blocks = intersect(all_blocks, dom_vec);
  }

  return all_blocks;
}

/** Returns the number of inductive paths we've learned here. */
size_t DdecValidator::learn_inductive_paths_at_block(
  vector<CfgPath>& target_inductive_paths,
  vector<CfgPath>& rewrite_inductive_paths,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block
) {

  cout << "LEARNING PATHS AT BLOCKS " << target_block << " / " << rewrite_block << endl;

  size_t found_pair = 0;

  for (size_t k = 0; k < 4; ++k) {
    size_t bound = (1 << k);
    auto target_paths = CfgPaths::enumerate_paths(target_, bound, target_block, target_block);
    auto rewrite_paths = CfgPaths::enumerate_paths(rewrite_, bound, rewrite_block, rewrite_block);

    cout << "Target paths for " << target_block << " bound=" << bound << endl;
    for (auto it : target_paths) {
      cout << "    " << it << endl;
    }
    cout << "Rewrite paths for " << rewrite_block << " bound=" << bound << endl;
    for (auto it : rewrite_paths) {
      cout << "    " << it << endl;
    }

    for (auto tp : target_paths) {
      for (auto rp : rewrite_paths) {

        /** if we have a loop with another block, the last node on the end is redundant. */
        if (tp.size() > 1 && tp[1] != tp[0]) {
          tp.erase(tp.end()-1);
        }
        if (rp.size() > 1 && rp[1] != rp[0]) {
          rp.erase(rp.end()-1);
        }


        if (control_learner_->pair_feasible(tp, rp, true)) {
          cout << "Found inductive pair " << tp << " and " << rp << endl;
          target_inductive_paths.push_back(tp);
          rewrite_inductive_paths.push_back(rp);
          found_pair++;
        }
      }
    }

    if (found_pair)
      return found_pair;
  }

  return 0;
}

void DdecValidator::add_loop_to_node(
  DualAutomata& pod,
  const vector<CfgPath>& target_inductive_paths,
  const vector<CfgPath>& rewrite_inductive_paths,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block,
  ConjunctionInvariant* invariant
) {

  // add node to dual automata
  DualAutomata::State node(target_block, rewrite_block);
  for (size_t k = 0; k < target_inductive_paths.size(); ++k) {
    /** move the first block in the path to the end. */
    auto tp = target_inductive_paths[k];
    auto rp = rewrite_inductive_paths[k];
    tp.push_back(tp[0]);
    tp.erase(tp.begin());
    rp.push_back(rp[0]);
    rp.erase(rp.begin());

    DualAutomata::Edge e(node, tp, rp);
    pod.add_edge(e);
  }

  // print stuff for the user
  cout << "--------- FOUND A GOOD NODE -----------" << endl;
  cout << "PATHS" << endl;
  for (size_t k = 0; k < target_inductive_paths.size(); ++k) {
    cout << "  " << target_inductive_paths[k] << " / ";
    cout << rewrite_inductive_paths[k] << endl;
  }
  cout << "INVARIANTS" << endl;
  invariant->write_pretty(cout);

  // get relevant invariants only
  ConjunctionInvariant* copy = new ConjunctionInvariant();
  for(size_t i = 0; i < invariant->size(); ++i) {
    auto conj = static_cast<EqualityInvariant*>((*invariant)[i]);
    auto variables = conj->get_variables();
    size_t ghost_count = 0;
    size_t non_ghost_count = 0;
    for (size_t j = 0; j < variables.size(); ++j) {
      auto term = variables[j];
      cout << "         " << term << endl;
      if (term.is_ghost == false)
        non_ghost_count++;
      else 
        ghost_count++;
    }

    if(non_ghost_count > 0 && ghost_count > 1)  {
      copy->add_invariant(conj);
    }
  }

  pod.set_invariant(node, copy);


}

DualAutomata DdecValidator::learn_inductive_paths() {
  cout << "============================================================" << endl;
  cout << "Learning inductive paths and invariants" << endl;

  DualAutomata pod(target_, rewrite_, data_collector_);

  // Learn relations over basic blocks
  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  // Figure out possible inductive program paths and corresponding invariants
  size_t target_num_scc = target_sccs.count();
  size_t rewrite_num_scc = rewrite_sccs.count();
  cout << "Target SCCs: " << target_sccs.count() << endl;
  cout << "Rewrite SCCs: " << rewrite_sccs.count() << endl;
  for (size_t i = 0; i < target_num_scc; ++i) {
    auto target_blocks = target_sccs.get_blocks(i);
    bool found_something_for_target_scc = false;

    for (size_t j = 0; j < rewrite_num_scc; ++j) {
      auto rewrite_blocks = rewrite_sccs.get_blocks(j);

      bool next_scc = false;
      cout << "TRYING SCCS " << i << " / " << j << endl;

      float best_quality = 0;
      vector<CfgPath> best_target_inductive_paths;
      vector<CfgPath> best_rewrite_inductive_paths;
      Cfg::id_type best_target_block = 0;
      Cfg::id_type best_rewrite_block = 0;
      ConjunctionInvariant* best_invariant = NULL;

      for (auto& target_block : target_blocks) {
        for (auto& rewrite_block : rewrite_blocks) {
          vector<CfgPath> target_inductive_paths;
          vector<CfgPath> rewrite_inductive_paths;
          size_t num_paths = learn_inductive_paths_at_block(
                               target_inductive_paths,
                               rewrite_inductive_paths,
                               target_block,
                               rewrite_block);

          if (!num_paths)
            continue;

          auto invariant = learn_inductive_invariant_at_block(
                             target_inductive_paths,
                             rewrite_inductive_paths,
                             target_block,
                             rewrite_block
                           );

          auto quality = invariant_quality(invariant, target_block, rewrite_block);
          cout << " quality = " << quality << endl;

          if(quality > best_quality) {
            cout << "   (best yet)" << endl;
            best_quality = quality;
            best_target_inductive_paths = target_inductive_paths;
            best_rewrite_inductive_paths = rewrite_inductive_paths;
            best_target_block = target_block;
            best_rewrite_block = rewrite_block;
            best_invariant = invariant;
          }

          if (quality == 1) {
            next_scc = true;
            break;
          }
        }
        if (next_scc)
          break;
      }

      if (best_quality > 0) {
        // we found a good pair of blocks for this SCC!
        cout << "FOUND SOMETHING FOR THIS SCC!" << endl;
        add_loop_to_node(pod,
                         best_target_inductive_paths,
                         best_rewrite_inductive_paths,
                         best_target_block,
                         best_rewrite_block,
                         best_invariant);
        found_something_for_target_scc = true;
      }

    }

    if (!found_something_for_target_scc) {
      stringstream ss;
      ss << "For strongly connected component in target CFG with nodes: ";
      for (auto it : target_blocks)
        ss << ", " << it;
      ss << " we cannot find any loop with a corresponding loop in the rewrite.  " << endl;
      ss << "If this code executes in lock-step with a loop in the rewrite, then we ";
      ss << "have a problem!  If it's dead code then worry not." << endl;
      warn(ss.str());
    }
  }

  /** Get a topolical sort for the new POD */
  pod.compute_topological_sort(target_sccs, rewrite_sccs);

  return pod;
}


bool DdecValidator::discharge_exhaustive(DualAutomata& dual, DualAutomata::State state) {
  Invariant* invariant = dual.get_invariant(state);
  auto edges = dual.next_edges(state);
  vector<pair<CfgPath, CfgPath>> path_pairs;
  for (auto edge : edges) {
    path_pairs.push_back(pair<CfgPath,CfgPath>(edge.te, edge.re));
  }
  //cout << "[discharge_exhaustive] Skipping this check!! We're unsound!" << endl;
  //return true;
  bool ok = verify_exhaustive(target_, rewrite_,
                              state.ts, state.rs,
                              path_pairs, *invariant);
  if (ok) {
    cout << "VERIFIED EXHAUSTIVE FOR " << state << endl;
    return true;
  } else {
    cout << "NOT EXHAUSTIVE FOR " << state << endl;
    return false;
  }
}

bool DdecValidator::discharge_exhaustive(DualAutomata& dual) {
  bool okay = true;
  for (auto state : dual.get_edge_reachable_states()) {
    if (state == dual.exit_state())
      continue;

    bool try_again = true;
    bool first = true;
    CpuState ceg;

    while (try_again) {
      try_again = false;
      bool current_okay = discharge_exhaustive(dual, state);
      okay &= current_okay;

      cout << "DischargeExhaustive ---------" << endl;
      cout << "   current_okay " << current_okay << endl;
      cout << "   have ceg     " << checker_has_ceg() << endl;

      // Add a path into the dual that was previously missing
      /*
      if (!current_okay && checker_has_ceg() && (checker_get_target_ceg() != ceg || first)) {
        cout << "Attemping to add edge:" << endl;
        ceg = checker_get_target_ceg();

        // TODO: shorten the paths considering cutpoints ugh
        auto tt = checker_get_target_exhaustive_ceg();
        auto rt = checker_get_rewrite_exhaustive_ceg();

        auto tp = DataCollector::project_states(tt);
        auto rp = DataCollector::project_states(rt);
        DualAutomata::Edge edge(state, tp, rp);
        bool added = dual.add_edge(edge);
        if (added) {
          try_again = true;
          cout << "Successfully added edge" << endl;
        } else {
          cout << "Adding edge failed" << endl;
        }
      } else {
        if (!checker_has_ceg()) {
          cout << "Could not get counterexample... aborting" << endl;
        } else if (checker_get_target_ceg() == ceg && !first) {
          cout << "Got repeated counterexample... something is wrong!" << endl;
        } else if (current_okay) {
          cout << "That went well... moving on!" << endl;
        }
      }
      first = false;
      */
    }
  }

  return okay;
}

/** returns true if everything was successful. */
bool DdecValidator::discharge_edge(DualAutomata& dual, DualAutomata::Edge& edge, size_t conjunct, stringstream& ss) {

  auto start_inv = dual.get_invariant(edge.from);
  auto end_inv = static_cast<ConjunctionInvariant*>(dual.get_invariant(edge.to));
  auto partial_inv = (*end_inv)[conjunct];
  ss << " conjunct " << conjunct << " / " << end_inv->size() << endl;
  ss << "    Edge " << edge << endl;
  ss << "    Proving " << *partial_inv << endl;
  bool valid = false;
  try {
    valid = check(target_, rewrite_, edge.from.ts, edge.from.rs,
                  edge.te, edge.re, *start_inv, *partial_inv);
  } catch (validator_error e) {
    valid = false;
    ss << "     encountered " << e.what() << "; assuming false." << endl;
  }

  return valid;
}

/** returns true if everything was successful. */
bool DdecValidator::discharge_edge(DualAutomata& dual, DualAutomata::Edge& edge) {
  // check this edge
  bool ok = true;
  auto start_inv = dual.get_invariant(edge.from);
  auto end_inv = dual.get_invariant(edge.to);

  cout << "_____________________________" << endl;
  cout << "Edge: " << edge.from << " -> " << edge.to << endl;
  cout << "target: ";
  for (auto it : edge.te) {
    cout << it << " ";
  }
  cout << endl;
  cout << "rewrite: ";
  for (auto it : edge.re) {
    cout << it << " ";
  }
  cout << endl;
  cout << "Assuming: ";
  start_inv->write_pretty(cout);
  cout << endl << endl;

  // check the invariants in the conjunction one at a time
  for (size_t i = 0; i < end_inv->size(); ++i) {
    stringstream ss;
    ok &= discharge_edge(dual, edge, i, ss);
    cout << ss.str();
  }

  return ok;
}

void DdecValidator::discharge_thread_run(DualAutomata& dual, DischargeState& state) {

  if(thread_copies_.size() == 0) {
    for(size_t i = 0; i < thread_count_; ++i) {
      /** should invoke DdecValidator's copy constructor, which in turn makes
        a new Validator with new solver.  Hopefully thread safe enough... */
      thread_copies_.push_back(*this);
    }
  }

  vector<thread> threads;
  auto function = [&] (size_t i) -> void {
    DdecValidator::discharge_thread(thread_copies_[i], dual, state, i);
  };
  for(size_t i = 0; i < thread_count_; ++i) {
    threads.push_back(thread(function, i));
  }

  for(auto& thread : threads) {
    thread.join();
  }
}

void DdecValidator::discharge_thread(DdecValidator& ddec, DualAutomata& dual, DischargeState& discharge_state, size_t i) {
  while(true) {
    auto problem = discharge_state.next_problem();
    auto& edge = problem.first;
    auto conjunct = problem.second;
    if(conjunct == (size_t)(-1)) { /* we're done. */
      cout << "[discharge_thread " << i << "] all done!" << endl;
      return;
    }
    stringstream ss;
    ss << "[discharge_thread " << i << "]" ;
    milliseconds start = duration_cast<milliseconds>(system_clock::now().time_since_epoch());
    bool success = ddec.discharge_edge(dual, edge, conjunct, ss);
    milliseconds end = duration_cast<milliseconds>(system_clock::now().time_since_epoch());
    auto diff = (end - start).count();
    ss << "    " << (success ? "true" : "false") << "     " << diff << "ms" << endl;
    CEG_DEBUG(
      if(!success && ddec.checker_has_ceg()) {
        auto ceg_t = ddec.checker_get_target_ceg();
        auto ceg_r = ddec.checker_get_rewrite_ceg();
        auto ceg_t_end = ddec.checker_get_target_ceg_end();
        auto ceg_r_end = ddec.checker_get_rewrite_ceg_end();

        ss << "    (counterexample)" << endl << endl;
        ss << "TARGET COUNTEREXAMPLE" << endl << endl << ceg_t << endl << endl;
        ss << "REWRITE COUNTEREXAMPLE" << endl << endl << ceg_r << endl << endl;
        ss << "TARGET COUNTEREXAMPLE - END" << endl << endl << ceg_t_end << endl << endl;
        ss << "REWRITE COUNTEREXAMPLE - END" << endl << endl << ceg_r_end << endl << endl;
      } else if (!success) {
        ss << "    (could not generate counterexample)" << endl;
      } else {
        ss << "    (verified!)" << endl;
      }
    )
    auto str = ss.str();
    discharge_state.report_outcome(edge, conjunct, success, str);
  }
}

void DdecValidator::discharge_invariants(DualAutomata& dual) {

  auto sorted_states = dual.get_topological_sort();
  cout << "[discharge_invariants] Topological sort: ";
  for(auto it : sorted_states)
    cout << "    " << it << endl;

  for(size_t i = 0; i < sorted_states.size(); ++i) {
    auto current_state = sorted_states[i];
    auto edges = dual.next_edges(current_state);
    vector<DualAutomata::Edge> self_edges;
    vector<DualAutomata::Edge> forward_edges;

    cout << "[discharge_invariants] Processing state: " << current_state << endl;

    // STEP 0: classify edges
    for(auto e : edges) {
      if(e.to == e.from) {
        self_edges.push_back(e);
      } else {
        forward_edges.push_back(e);
      }
    }

    // STEP 1: visit all the self-edges (if any) until fixedpoint
    cout << "[discharge_invariants] State " << current_state << " has " << self_edges.size() << " self edges." << endl;
    if(self_edges.size()) {
      bool update_required = true;
      while(update_required) {
        cout << "[discharge_invariants] Running self-loop threads" << endl;
        DischargeState discharge_loop(dual, self_edges);
        discharge_thread_run(dual, discharge_loop);
        cout << "[discharge_invariants] self-loop threads done." << endl;
        update_required = discharge_loop.update_dual();
        cout << "[discharge_invariants] Update required = " << update_required << endl;
        dual.print_all();
      }
    }
    
    // STEP 2: visit all the edges from this state to subsequent states
    cout << "[discharge_invariants] State " << current_state << " has " << forward_edges.size() << " forward edges." << endl;
    if(forward_edges.size()) {
      cout << "[discharge_invariants] Running forward edge threads" << endl;
      DischargeState discharge_forward(dual, forward_edges);
      cout << "[discharge_invariants] discharge_forward created" << endl;
      discharge_thread_run(dual, discharge_forward);
      cout << "[discharge_invariants] forward edge threads done" << endl;
      discharge_forward.update_dual();
      dual.print_all();
    }
  }
}


bool DdecValidator::verify_dual(DualAutomata& dual) {
  dual.remove_prefixes();
  dual.print_all();
  bool learning_successful = dual.learn_invariants(invariant_learner_);
  if (!learning_successful) {
    cout << "[verify_dual] Learning invariants failed!" << endl;
    return false;
  }

  auto edge_reachable = dual.get_edge_reachable_states();
  for (auto state : edge_reachable) {
    if (state == dual.start_state() || state == dual.exit_state())
      continue;
    auto inv = dual.get_invariant(state);
    if (inv->size() < 2) {
      cout << "[verify_dual] Could not learn invariant at state " << state << endl;
      cout << "[verify_dual] Aboring." << endl;
      return false;
    }
  }

  auto start_state = dual.start_state();
  auto end_state = dual.exit_state();
  dual.set_invariant(start_state, get_initial_invariant());
  dual.set_invariant(end_state, get_final_invariant());

  /** Add NoSignals invariant everywhere */
  auto ns_invariant = new NoSignalsInvariant();
  auto reachable = dual.get_edge_reachable_states();
  for (auto rs : reachable) {
    auto orig_inv = dual.get_invariant(rs);
    orig_inv->add_invariant(ns_invariant);
    dual.set_invariant(rs, orig_inv);
  }

  bool valid = false;
  while (!valid) {
    dual.print_all();
    discharge_invariants(dual);
    dual.print_all();

    /** Check if proof succeeds. */
    auto actual_final = dual.get_invariant(end_state);
    auto expected_final = get_final_invariant();

    bool final_ok = check(target_, rewrite_, end_state.ts, end_state.rs,
                          {}, {}, *actual_final, *expected_final);
    if (!final_ok) {
      cout << "[verify_dual] Could not complete final proof step." << endl;
      cout << "[verify_dual] Maybe DDEC missed an important invariant?" << endl;
      return false;
    }

    cout << "Verifying exhaustive" << endl;
    auto old_edge_count = dual.count_edges();
    valid = discharge_exhaustive(dual);
    if (!valid) {
      if (old_edge_count == dual.count_edges()) {
        cout << "[verify_dual] Couldn't verify exhaustive nor use counterexample." << endl;
        return false;
      } else {
        cout << "[verify_dual] Couldn't verify exhaustive; going to try again." << endl;
      }
    }
  }

  cout << " ===== PROOF COMPLETE ===== " << endl;
  dual.print_all();
  return true;
};

/** For a given pair of basic blocks, what proportion of
  live-out variables are constrained?  We want to constrain as
  many live-out variables as possible, ideally. */
double DdecValidator::invariant_quality(
  ConjunctionInvariant* conj,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block) {

  auto target_outs = target_.live_outs(target_block);
  auto rewrite_outs = rewrite_.live_outs(rewrite_block);

  size_t constrained = 0;
  size_t total = 0;
  for (size_t is_rewrite = 0; is_rewrite <= 1; is_rewrite++) {

    auto& output_regs = is_rewrite ? rewrite_outs : target_outs;

    if (is_rewrite)
      cout << "REWRITE REGS: " << output_regs << endl;
    else
      cout << "TARGET REGS: " << output_regs << endl;

    for (auto it = output_regs.gp_begin(); it != output_regs.gp_end(); ++it) {
      total++;
      auto reg = *it;
      bool found = false;
      for (size_t i = 0; i < conj->size(); ++i) {
        auto inv = static_cast<EqualityInvariant*>((*conj)[i]);
        auto vars = inv->get_variables();
        for (auto var : vars) {
          if (var.is_rewrite == is_rewrite &&
              var.operand == reg &&
              var.is_ghost == false) {
            cout << "   Found " << reg << " in " << *inv << " via " << var << endl;
            found = true;
            constrained++;
            break;
          }
        }

        if (found)
          break;
      }
    }
  }
  cout << "CONSTRAINED: " << constrained << " TOTAL: " << total << endl;

  return (double)constrained/(double)total;
}


ConjunctionInvariant* DdecValidator::learn_inductive_invariant_at_block(
  const std::vector<CfgPath>& target_inductive_paths,
  const std::vector<CfgPath>& rewrite_inductive_paths,
  Cfg::id_type target_block,
  Cfg::id_type rewrite_block
) {

  auto& fil = flow_invariant_learner_;
  cout << "===== INVARIANT AFTER BLOCKS " << target_block << " / " << rewrite_block << " =====" << endl;
  auto inv = fil.get_invariant(target_block,rewrite_block);
  inv->write_pretty(cout);
  cout << "  == performing transform " << target_block << "  " << rewrite_block << " == " << endl;
  std::vector<CfgPath> target_paths;
  std::vector<CfgPath> rewrite_paths;
  for (size_t k = 0; k < target_inductive_paths.size(); ++k) {
    assert(target_inductive_paths[k].size() > 0);
    assert(rewrite_inductive_paths[k].size() > 0);

    if (target_inductive_paths[k][0] == target_block &&
        rewrite_inductive_paths[k][0] == rewrite_block) {
      target_paths.push_back(target_inductive_paths[k]);
      rewrite_paths.push_back(rewrite_inductive_paths[k]);
      cout << "    with paths " << target_inductive_paths[k] << " / " << rewrite_inductive_paths[k] << endl;
    }
  }
  auto inv_trans = fil.transform_invariant(inv, target_paths, rewrite_paths);
  inv_trans->write_pretty(cout);
  return inv_trans;
}

bool DdecValidator::sanity_check(DualAutomata& pod) {
  /** get set of globally reachable states. */
  set<DualAutomata::State> global_reachable = pod.get_edge_reachable_states();
  cout << "[sanity] global reachable: ";
  for (auto r : global_reachable)
    cout << r << "  ";
  cout << endl;

  /** make sure that exit is reachable from all states...
    ... if not, we're sure not to pass the exhaustiveness check. */
  for (auto state : global_reachable) {
    size_t init_count = 0;
    set<DualAutomata::State> reachable;
    reachable.insert(state);

    size_t curr_count = reachable.size();
    while (curr_count > init_count) {
      init_count = curr_count;

      for (auto r : reachable) {
        for (auto p : pod.next_states(r)) {
          reachable.insert(p);
        }
      }

      curr_count = reachable.size();
    }

    if (reachable.count(pod.exit_state()) == 0) {
      cout << "[sanity] exit state not reachable from " << state << endl;
      return false;
    } else {
      cout << "[sanity] states reachable from " << state << " are ";
      for (auto r : reachable)
        cout << r << "  ";
      cout << endl;
    }
  }
  return true;

}

bool DdecValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {

  init_mm();

  target_ = init_target;
  rewrite_ = init_rewrite;

  /** STEP 1: Find inductive paths and initial invariants in a template */
  flow_invariant_learner_.initialize(target_, rewrite_);
  control_learner_ = new ControlLearner(target_, rewrite_, sandbox_);
  DualAutomata template_pod = learn_inductive_paths();

  /** Populate the POD with the initial invariants. */
  //DualAutomata::State start_state = template_pod.start_state();
  //template_pod.set_invariant(start_state, get_initial_invariant());

  /** Debug POD */
  cout << endl;
  template_pod.print_all();
  cout << endl;

  /** Get complete PODs */
  //for (size_t target_bound = 1; target_bound < 9; ++target_bound) {
  //  for (size_t rewrite_bound = 1; rewrite_bound < 2; ++rewrite_bound) {
  /** TODO: Remove HANDHOLD */
  size_t target_bound = 5;
  size_t rewrite_bound = 2;
    {
      cout << " ~~~~~ BOUND " << target_bound << "/" << rewrite_bound << " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
      DualBuilder builder(data_collector_, template_pod, *control_learner_);
      builder.set_bound(target_bound, rewrite_bound);
      while (builder.has_next()) {
        cout << "[verify] next POD" << endl;
        auto current = builder.next();
        current.print_all();
        bool sane = sanity_check(current);
        if (!sane) {
          cout << "[verify] this candidate is insane!! skipping." << endl;
          continue;
        }
        cout << "[verify] found a sane POD. " << endl;
        bool correct = verify_dual(current);
        if (correct) {
          return true;
        }
      }
    }
  //}


  delete control_learner_;
  reset_mm();
  return false;


  /*
  try {

    sanity_checks(target_, rewrite_);

    DDEC_TC_DEBUG(
      cout << "DDEC sandbox at " << sandbox_ << endl;
    for (size_t i = 0; i < sandbox_->size(); ++i) {
    cout << "DDEC sees this TC: " << endl;
    cout << *sandbox_->get_input(i) << endl;
    }
    )

    return false;

  } catch (validator_error e) {

    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();
    delete control_learner_;
    reset_mm();
    return false;
  }
  */


}




ConjunctionInvariant* DdecValidator::get_initial_invariant() const {
  auto initial_invariant = new ConjunctionInvariant();

  /** set all shadow block variables to 0 */
  auto shadow_target = FlowInvariantLearner::get_shadow_vars(target_, false);
  auto shadow_rewrite = FlowInvariantLearner::get_shadow_vars(rewrite_, true);
  auto shadows = shadow_target;
  shadows.insert(shadows.begin(), shadow_rewrite.begin(), shadow_rewrite.end());
  for(auto it : shadows) {
    it.coefficient = 1;
    auto init_zero = new EqualityInvariant({ it }, 0);
    initial_invariant->add_invariant(init_zero);
  }

  auto sei = new StateEqualityInvariant(target_.def_ins());
  initial_invariant->add_invariant(sei);
  initial_invariant->add_invariant(new MemoryEqualityInvariant());
  initial_invariant->add_invariant(new NoSignalsInvariant());

  /*
    for (auto r : string_params_) {
      // rsi_start = rsi (for example)
      Variable start_var(string_ghost_start(r), false);
      Variable string_reg(r, false);
      string_reg.coefficient = -1;
      auto equiv = new EqualityInvariant({start_var, string_reg}, 0);
      initial_invariant->add_invariant(equiv);

      // rsi_end = 0 (for example)
      Variable end_var(string_ghost_end(r), false);
      auto end_mem = new PointerNullInvariant(end_var, 1);
      initial_invariant->add_invariant(end_mem);
    }
  */

  //initial_invariant->add_invariant(get_fixed_invariant());

  return initial_invariant;
}

ConjunctionInvariant* DdecValidator::get_final_invariant() const {
  auto final_invariant = new ConjunctionInvariant();
  auto sei = new StateEqualityInvariant(target_.live_outs());
  final_invariant->add_invariant(sei);
  final_invariant->add_invariant(new MemoryEqualityInvariant());

  //final_invariant->add_invariant(get_fixed_invariant());

  return final_invariant;
}
