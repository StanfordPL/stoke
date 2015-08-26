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
#include "tools/io/cpu_states.h"

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
                   .default_val(8);

auto& heap_size = ValueArg<size_t>::create("heap_size")
                  .usage("<int>")
                  .description("Heap size")
                  .default_val(16);

auto& align = ValueArg<size_t>::create("align")
              .usage("<int>")
              .description("Align to/from areas to size.")
              .default_val(1);

auto& max_buffer_size = ValueArg<size_t>::create("max_buffer_size")
                        .usage("<int>")
                        .description("size of array")
                        .default_val(4);

auto& char_width = ValueArg<size_t>::create("width_of_char")
                   .description("width of characters (in bytes)")
                   .default_val(1);

auto& null_terminate = FlagArg::create("null_terminate")
                       .description("Add null character to end of each buffer");

#define MAX_LEN 4

#define ROUND_DOWN(X, Y) ((X) - ((X) % (Y)))
#define ROUND_UP(X, Y) ((X) + (Y) - ((X) % (Y)))
#define MIN(X, Y) ((X) < (Y) ? X : Y)
#define MAX(X, Y) ((X) > (Y) ? X : Y)

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  srand(time(NULL));

  Sandbox sb;
  StateGen sg(&sb, stack_size.value());

  for(size_t ct = 0; ct < number.value(); ++ct) {
    CpuState cs;
    sg.get(cs);

    cout << "Testcase " << ct << ":" << endl << endl;

    //setup stack
    cs.gp[rsp].get_fixed_quad(0) = (rand() % 0xffffffffffffff) + 0x700000000;
    if(rand() % 16)
      cs.gp[rsp].get_fixed_quad(0) = 0x700000000;
    uint64_t max = cs.gp[rsp].get_fixed_quad(0);
    uint64_t min = cs.gp[rsp].get_fixed_quad(0) - stack_size.value();
    cs.gp[rbp].get_fixed_quad(0) = max;

    //setup heap
    uint64_t heap_base_top = rand() & 0x4ffffff0;
    heap_base_top = ROUND_DOWN(heap_base_top, align.value());
    uint64_t heap_base_bot = (rand() % heap_base_top) & 0x4ffffff0;
    heap_base_bot = ROUND_DOWN(heap_base_bot, align.value());

    uint64_t heap_diff = heap_base_top - heap_base_bot;
    cs.heap.resize(heap_base_top, ROUND_UP(heap_size.value(), align.value()));

    uint64_t buffer_size = 1 + (rand() % (max_buffer_size.value()-1));
    buffer_size = ROUND_UP(buffer_size, char_width.value());
    uint64_t dst_buffer_size = buffer_size;
    uint64_t dst_offset = rand() % (heap_size.value() - dst_buffer_size - 1);
    dst_offset = ROUND_DOWN(dst_offset, align.value());

    // All addresses are relative to r15
    cs.gp[r15].get_fixed_quad(0) = heap_base_bot;
    cs.gp[rdi].get_fixed_quad(0) = heap_diff + dst_offset;
    cs.gp[rsi].get_fixed_quad(0) = rand() & ((1ul << 8ul*(uint64_t)char_width.value()) - 1ul);
    cs.gp[rdx].get_fixed_quad(0) = buffer_size/char_width.value();
    if(rand() % 12 == 0) {
      cs.gp[rsi].get_fixed_quad(0) = 0;
    }

    //fill data
    for(uint64_t i = heap_base_top; i < ROUND_UP(heap_base_top + heap_size.value(), align.value()); ++i) {
      cs.heap[i] = rand() % 256;
      cs.heap.set_valid(i, false);
    }

    for(uint64_t i = heap_base_top + dst_offset; i < heap_base_top + dst_offset + dst_buffer_size; ++i)
      cs.heap.set_valid(i, true);

    if(null_terminate) {
      for(size_t i = 1; i <= char_width.value(); ++i) {
        cs.heap[heap_base_top + dst_offset + dst_buffer_size - i] = '\0';
      }
    }

    // with 25% chance, we create a match.
    if(rand() % 4 == 0) {
      size_t index = (rand() % (dst_buffer_size/char_width.value()));
      for(size_t i = 0; i < char_width.value(); ++i) {
        cs.heap[heap_base_top+dst_offset+index*char_width.value() + i] = (cs.gp[rsi].get_fixed_quad(0) >> ((i)*8)) & 0xff;
      }
    }

    std::cout << cs << endl << endl;
  }

}


