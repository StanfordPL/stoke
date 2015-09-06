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

auto& dst_only = FlagArg::create("dst_only")
                 .description("Just emit one buffer");

auto& strcat_arg = FlagArg::create("strcat")
                   .description("Allocates twice as much space for the destination");

auto& char_width = ValueArg<size_t>::create("char_width")
                   .usage("<int>")
                   .description("Width of characters.")
                   .default_val(1);

auto& different_size_ok = FlagArg::create("different_size_ok")
                          .description("Source and destination buffers may be of different sizes.");

auto& randomize_stack = FlagArg::create("randomize_stack")
                        .description("Place the stack in a random location.");

auto& record_dst_size = FlagArg::create("record_dst_size")
                        .description("Records size of destination buffer in rdx");

#define STACK_SPACE 256
#define MAX_LEN 4

#define ROUND_DOWN(X, Y) ((X) - ((X) % (Y)))
#define ROUND_UP(X, Y) ((X) + (Y) - ((X) % (Y)))

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  srand(time(NULL));

  Sandbox sb;
  StateGen sg(&sb, stack_size.value());

  R64 dst_reg= rdi;
  R64 src_reg= rsi;

  for(size_t ct = 0; ct < number.value(); ++ct) {
    CpuState cs;
    sg.get(cs);

    cout << "Testcase " << ct << ":" << endl << endl;


    //setup stack
    if(randomize_stack)
      cs.gp[rsp].get_fixed_quad(0) = (rand() & 0xffffffffffff) + 0x700000000;

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
    uint64_t src_buffer_size = buffer_size;
    uint64_t dst_buffer_size = buffer_size;

    if(strcat_arg.value()) {
      dst_buffer_size = 2*dst_buffer_size+1;
    } else if(different_size_ok) {
      dst_buffer_size = 1 + (rand() % (max_buffer_size.value()-1));
      dst_buffer_size = ROUND_UP(dst_buffer_size, char_width.value());
    }

    uint64_t src_offset = 0, dst_offset = 0;

    while( (src_offset + buffer_size) > dst_offset ) {

      src_offset = rand() % (heap_size.value() - src_buffer_size - dst_buffer_size - 1);
      dst_offset = rand() % (heap_size.value() - dst_buffer_size - 1);

      src_offset = ROUND_DOWN(src_offset, align.value());
      dst_offset = ROUND_DOWN(dst_offset, align.value());

    }

    // All addresses are relative to r15
    cs.gp[r15].get_fixed_quad(0) = heap_base_bot;
    cs.gp[src_reg].get_fixed_quad(0) = heap_diff + src_offset;
    cs.gp[dst_reg].get_fixed_quad(0) = heap_diff + dst_offset;

    if(record_dst_size)
      cs.gp[rdx].get_fixed_quad(0) = dst_buffer_size;


    //fill data
    for(uint64_t i = heap_base_top; i < ROUND_UP(heap_base_top + heap_size.value(), align.value()); ++i) {
      cs.heap[i] = rand() % 256;
      cs.heap.set_valid(i, false);
    }

    auto src_end = heap_base_top + src_offset + ROUND_UP(src_buffer_size, char_width.value());
    auto dst_end = heap_base_top + dst_offset + ROUND_UP(dst_buffer_size, char_width.value());

    if(!dst_only) {
      for(uint64_t i = heap_base_top + src_offset; i < src_end; ++i)
        cs.heap.set_valid(i, true);
    }
    for(uint64_t i = heap_base_top + dst_offset; i < dst_end; ++i)
      cs.heap.set_valid(i, true);

    // null terminate, yo (note: we don't use src_/dst_ buffer size since strcat() is null-terminated sooner, etc.
    for(size_t j = 0; j < char_width.value(); ++j) {
      if(!dst_only)
        cs.heap[src_end - j - 1] = '\0';
      cs.heap[dst_end - j - 1] = '\0';
    }

    //cout << hex << "dst_offset=" << dst_offset << "  dst_end=" << dst_end << "  dst_buffer_size=" << dst_buffer_size << " buffer_size=" << buffer_size << " heap_base_top=" << heap_base_top << endl;

    std::cout << cs << endl << endl;
  }

}


