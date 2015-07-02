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
                   .default_val(16);

auto& heap_size = ValueArg<size_t>::create("heap_size")
                  .usage("<int>")
                  .description("Heap size")
                  .default_val(16);

auto& max_buffer_size = ValueArg<size_t>::create("max_buffer_size")
                        .usage("<int>")
                        .description("size of array")
                        .default_val(4);

#define STACK_SPACE 256
#define MAX_LEN 4

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  srand(time(NULL));

  Sandbox sb;
  StateGen sg(&sb, stack_size.value());

  //r15 -> lowest addr of the heap
  //r15 + edx -> pointer to destination
  //r15 + eax -> pointer to source
  //r15 + edi -> pointer to end of source
  //r10d, ebx -> any number we want { consider -, +, eq }

  for(size_t ct = 0; ct < number.value(); ++ct) {
    CpuState cs;
    sg.get(cs);

    cout << "Testcase " << ct << ":" << endl << endl;


    //setup stack
    uint64_t max = cs.gp[rsp].get_fixed_quad(0);
    uint64_t min = cs.gp[rsp].get_fixed_quad(0) - stack_size.value();
    cs.gp[rbp].get_fixed_quad(0) = max;

    //setup heap
    uint64_t heap_base_top = rand() & 0x4ffffff0;
    uint64_t heap_base_bot = (rand() % heap_base_top) & 0x4ffffff0;
    uint64_t heap_diff = heap_base_top - heap_base_bot;
    cs.heap.resize(heap_base_top, heap_size.value());

    uint64_t buffer_size = 1 + (rand() % (max_buffer_size.value()-1));
    uint64_t src_offset = (rand() % (heap_size.value() - buffer_size - 1));
    uint64_t dst_offset = (rand() % (heap_size.value() - buffer_size - 1));
    uint64_t src_end = src_offset + buffer_size;
    cs.gp[r15].get_fixed_quad(0) = heap_base_bot;
    cs.gp[r8].get_fixed_quad(0) = heap_diff + src_offset;
    cs.gp[r11].get_fixed_quad(0) = heap_diff + dst_offset;
    cs.gp[rdi].get_fixed_quad(0) = heap_diff + src_offset+buffer_size;

    //fill data
    for(uint64_t i = heap_base_top; i < heap_base_top + heap_size.value(); ++i) {
      cs.heap[i] = rand() % 256;
      cs.heap.set_valid(i, false);
    }
    for(uint64_t i = heap_base_top + src_offset; i < heap_base_top + src_offset + buffer_size; ++i)
      cs.heap.set_valid(i, true);
    for(uint64_t i = heap_base_top + dst_offset; i < heap_base_top + dst_offset + buffer_size; ++i)
      cs.heap.set_valid(i, true);

    std::cout << cs << endl << endl;
  }

}


