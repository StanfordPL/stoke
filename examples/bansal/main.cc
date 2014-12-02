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

#include <stdint.h>

#include <iostream>
#include <new>

using namespace std;

uint8_t pool[1024 * 1024];
uint8_t* next_ptr = &pool[0];

inline void* operator new(size_t size) {
  next_ptr += size;
  return next_ptr - size;
}

inline void* operator new[](size_t size) {
  next_ptr += size;
  return next_ptr - size;
}

inline void operator delete(void* ptr) noexcept {
  // Does nothing.
}

inline void operator delete[](void* ptr) noexcept {
  // Does nothing.
}

struct Node {
  int32_t val;
  Node* next;
};

extern void traverse(Node* n);

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    Node* n = new Node();
    Node* list = n;

    for (size_t j = 0; j < 16; ++j) {
      n->next = new Node();
      n->next->val = i * 16 + j;
      n->next->next = nullptr;
      n = n->next;
    }

    traverse(list);

    while (list != nullptr) {
      Node* temp = list;
      list = temp->next;
      delete temp;
    }
  }

  return 0;
}
