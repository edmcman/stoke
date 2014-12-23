// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include <cstdlib>
#include <stdint.h>

struct Node {
  int32_t val;
  Node* next;
};

Node* new_list(size_t size) {
	auto list = new Node{rand(),0};

	auto n = list;
	for (auto i = 1; i < size; ++i) {
		auto nn = new Node{rand(),0};
		n->next = nn;
		n = n->next;
	}

	return list;
}

extern void traverse(Node* head);

void free_list(Node* head) {
	while (head != 0) {
		auto n = head->next;
		delete head;
		head = n;
	}
}

int main(int argc, char** argv) {
  const auto itr = argc > 1 ? atoi(argv[1]) : 1024;
  const auto seed = argc > 2 ? atoi(argv[2]) : 0;

  srand(seed);

	auto head = new_list(itr);
	traverse(head);
	free_list(head);

  return 0;
}
