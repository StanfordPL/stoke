// Copyright 2013-2015 Stanford University
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
#include <ctime>

#include "src/stategen/stategen.h"
#include "src/ext/cpputil/include/command_line/command_line.h"

using namespace stoke;
using namespace std;
using namespace x64asm;
using namespace cpputil;

auto& common_opt = Heading::create("Options");
auto& number = ValueArg<size_t>::create("number")
               .usage("<int>")
               .description("Number of testcases to generate")
               .default_val(1);

auto& stack_size = ValueArg<size_t>::create("stack_size")
                   .usage("<int>")
                   .description("Stack size")
                   .default_val(128);

auto& heap_size = ValueArg<size_t>::create("heap_size")
                  .usage("<int>")
                  .description("Heap size")
                  .default_val(32);

auto& max_permutation_size = ValueArg<size_t>::create("max_perm_size")
                             .usage("<int>")
                             .description("Max permutation size")
                             .default_val(8);

#define STACK_SPACE 256
#define MAX_LEN 4

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  srand(time(NULL));

  Sandbox sb;
  StateGen sg(&sb, stack_size.value());
  //We're going to use only the stack, so leave plenty of space.

  //r15 -> lowest addr of the stack
  //rbp -> highest addr of the stack
  //rsp -> lowest addr of stack
  //r14 -> offset from bottom of values
  //r15+r14...r15+r14+n-1 -> permutation of {0...n-1}

  for (size_t ct = 0; ct < number.value(); ++ct) {
    CpuState cs;
    sg.get(cs);

    cout << "Testcase " << ct << ":" << endl << endl;


    //setup rbp
    uint64_t max = cs.gp[rsp].get_fixed_quad(0);
    uint64_t min = cs.gp[rsp].get_fixed_quad(0) - stack_size.value();
    cs.gp[rbp].get_fixed_quad(0) = max;

    //setup heap
    uint64_t heap_base = rand() & 0x4ffffff0;
    cs.heap.resize(heap_base, heap_size.value());
    uint64_t offset = (rand() % (heap_size.value() - max_permutation_size.value()*4)) & 0xfffffffffffffff8;
    cs.gp[r15].get_fixed_quad(0) = heap_base;
    cs.gp[r14].get_fixed_quad(0) = offset;

    //add permutation
    size_t perm_size = 1 + (rand() % (max_permutation_size.value() - 1));
    bool value_used[perm_size];
    for (size_t i = 0; i < perm_size; ++i)
      value_used[i] = false;

    for (size_t i = 0; i < perm_size; ++i) {
      size_t j = rand() % perm_size;
      while (value_used[j])
        j = rand() % perm_size;
      value_used[j] = true;

      cs.heap[heap_base + offset + 4*i + 3] = 0;
      cs.heap[heap_base + offset + 4*i + 2] = 0;
      cs.heap[heap_base + offset + 4*i + 1] = j/256;
      cs.heap[heap_base + offset + 4*i + 0] = j % 256;
    }

    //set which bits in the heap are valid
    for (uint64_t i = heap_base; i < heap_base+offset; ++i)
      cs.heap.set_valid(i, false);
    for (uint64_t i = heap_base+offset; i < heap_base+offset+4*perm_size; ++i)
      cs.heap.set_valid(i, true);
    for (uint64_t i = heap_base+offset+4*perm_size; i < heap_base+heap_size.value(); ++i)
      cs.heap.set_valid(i, false);


    //make r9 the first value in the permutation
    cs.gp[r9].get_fixed_quad(0) = cs.heap[heap_base + offset+0] + (cs.heap[heap_base + offset+1] << 8);

    std::cout << cs << endl << endl;
  }

}


