// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <algorithm>
#include <chrono>
#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/benchmark.inc"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  SeedGadget seed;
  TrainingSetGadget tcs(seed);
  SandboxGadget sb(tcs, aux_fxns);

  size_t loc = 0;
  size_t mds = 0;
  for (auto i = target.reachable_begin(), ie = target.reachable_end(); i != ie; ++i) {
    for (auto j = target.instr_begin(*i), je = target.instr_end(*i); j != je; ++j) {
      if (j->is_any_return()) {
        continue;
      }
      loc++;
      if (j->is_memory_dereference()) {
        mds++;
      }
    }
  }

  Console::msg() << "Sandbox::run()..." << endl;

  auto total_elapsed = std::chrono::steady_clock::duration::zero ();

  for (size_t i = 0; i < benchmark_itr_arg; ++i) {
    // These could be moved out of the loop; but in the real search
    // they are called frequently, so for benchmarking, keep them in.
    sb.insert_function(target);
    sb.set_entrypoint(target.get_code()[0].get_operand<x64asm::Label>(0));

    // Run the sandbox
    sb.run();

    total_elapsed += (sb.time_after - sb.time_before);
  }
  const auto dur = duration_cast<duration<double>>(total_elapsed);
  const auto rps = tcs.size() * benchmark_itr_arg / dur.count();

  Console::msg() << fixed;
  Console::msg() << "LOC:        " << loc << endl;
  Console::msg() << "Derefs:     " << mds << endl;
  Console::msg() << "Testcases:  " << tcs.size() << endl;
  Console::msg() << "Iterations: " << benchmark_itr_arg.value() << endl;
  Console::msg() << "Runtime:    " << dur.count() << " seconds" << endl;
  Console::msg() << "Throughput: " << rps << " / second" << endl;

  return 0;
}

