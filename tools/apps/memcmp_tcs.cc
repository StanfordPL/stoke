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

auto& different_size_ok = FlagArg::create("different_size_ok")
                          .description("Source and destination buffers may be of different sizes.");

auto& data_from_tc = FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("data_from_tc")
                     .description("Read static data from this testcase")
                     .usage("<path/to/file>")
                     .default_val({});



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

  R64 dst_reg= rdi;
  R64 src_reg= rsi;
  R64 size_reg = rdx;

  for (size_t ct = 0; ct < number.value(); ++ct) {
    CpuState cs;
    sg.get(cs);

    cout << "Testcase " << ct << ":" << endl << endl;


    //setup stack
    cs.gp[rsp].get_fixed_quad(0) = (rand() % 0xffffffffffffff) + 0x700000000;
    uint64_t max = cs.gp[rsp].get_fixed_quad(0);
    uint64_t min = cs.gp[rsp].get_fixed_quad(0) - stack_size.value();
    cs.gp[rbp].get_fixed_quad(0) = max;

    //setup fixed data in memory
    auto data_tcs = data_from_tc.value();
    if (!data_tcs.empty()) {
      auto data = data_tcs[0].data;
      cs.data.resize(data.lower_bound(), data.size());
      for (uint64_t i = data.lower_bound(); i < data.upper_bound(); ++i) {
        cs.data.set_valid(i, data.is_valid(i));
        cs.data[i] = data[i];
      }
    }

    //setup heap
    uint64_t heap_base_top = rand() & 0x4ffffff0;
    heap_base_top = ROUND_DOWN(heap_base_top, align.value());
    uint64_t heap_base_bot = (rand() % heap_base_top) & 0x4ffffff0;
    if (data_from_tc.value().size()) {
      heap_base_bot = 0;
    } else {
      heap_base_bot = ROUND_DOWN(heap_base_bot, align.value());
    }
    uint64_t heap_diff = heap_base_top - heap_base_bot;
    cs.heap.resize(heap_base_top, ROUND_UP(heap_size.value(), align.value()));

    uint64_t buffer_size = 1 + (rand() % (max_buffer_size.value()-1));
    buffer_size = ROUND_UP(buffer_size, char_width.value());
    uint64_t src_buffer_size = buffer_size;
    uint64_t dst_buffer_size = buffer_size;
    uint64_t src_offset = 0, dst_offset = 0;

    if (different_size_ok) {
      switch (rand() % 4) {
      case 0:
      case 1:
        break;
      case 2:
        src_buffer_size = ROUND_UP(rand() % (max_buffer_size.value() - 1), char_width.value());
        break;
      case 3:
        dst_buffer_size = ROUND_UP(rand() % (max_buffer_size.value() - 1), char_width.value());
        break;
      }
    }

    while ( (src_offset + src_buffer_size) > dst_offset ) {

      src_offset = rand() % (heap_size.value() - src_buffer_size - dst_buffer_size - 1);
      dst_offset = rand() % (heap_size.value() - dst_buffer_size - 1);

      src_offset = ROUND_DOWN(src_offset, align.value());
      dst_offset = ROUND_DOWN(dst_offset, align.value());

    }

    // All addresses are relative to r15
    cs.gp[r15].get_fixed_quad(0) = heap_base_bot;
    cs.gp[src_reg].get_fixed_quad(0) = heap_diff + src_offset;
    cs.gp[dst_reg].get_fixed_quad(0) = heap_diff + dst_offset;
    cs.gp[size_reg].get_fixed_quad(0) = buffer_size/char_width.value();

    //fill data
    for (uint64_t i = heap_base_top; i < ROUND_UP(heap_base_top + heap_size.value(), align.value()); ++i) {
      cs.heap[i] = rand() % 256;
      cs.heap.set_valid(i, false);
    }

    for (uint64_t i = heap_base_top + src_offset; i < heap_base_top + src_offset + src_buffer_size; ++i)
      cs.heap.set_valid(i, true);
    for (uint64_t i = heap_base_top + dst_offset; i < heap_base_top + dst_offset + dst_buffer_size; ++i)
      cs.heap.set_valid(i, true);

    if (null_terminate) {
      for (size_t i = 1; i <= char_width.value(); ++i) {
        cs.heap[heap_base_top + src_offset + src_buffer_size - i] = '\0';
        cs.heap[heap_base_top + dst_offset + dst_buffer_size - i] = '\0';
      }
    }

    // with 25% chance, we want all of the characters to be the same.  So, we
    // change each character with probability 1 - (0.25)^L, where L is the
    // buffer_size
    double p =  pow((0.25), 1/((double)buffer_size));
    double max_p = p*RAND_MAX;
    size_t same = 0;
    size_t diff = 0;
    for (size_t i = 0; i < MIN(src_buffer_size, dst_buffer_size); ++i) {
      if ((double)rand() < max_p) {
        same++;
        cs.heap[heap_base_top + src_offset + i] = cs.heap[heap_base_top + dst_offset + i];
      } else {
        diff++;
      }
    }
    //cout << "p = " << p << endl;
    //cout << "same: " << same << "; diff: " << diff << endl;




    std::cout << cs << endl << endl;
  }

}


