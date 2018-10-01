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

#include <iostream>

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/state/cpu_state.h"
#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"
#include "src/validator/handlers/combo_handler.h"
#include "src/validator/filters/default.h"
#include "src/validator/filters/forbidden_dereference.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/true.h"

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "tools/gadgets/seed.h"
#include "tools/io/state_diff.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

#include <cstdlib>
#include <time.h>

auto& common_opt = Heading::create("Testcase generation options:");
auto& num_tc = ValueArg<size_t>::create("num_testcases")
               .usage("<int>")
               .description("The number of testcases to generate")
               .default_val(16);

auto& segment_length = ValueArg<size_t>::create("segment_length")
               .usage("<int>")
               .description("The length of each segment to create in ints")
               .default_val(128);

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  CpuStates outputs;

  vector<uint64_t> segments = {
    0x601880, //e
    0x601680, //d
    0x601480, //c
    0x601280, //b
    0x601080  //a
  };
  uint64_t length = segment_length.value()*sizeof(int);


  uint64_t gcc_segment_start = 0x601a80;
  vector<uint8_t> gcc_segment = {
    0x1,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0,

    0x0,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0,

    0x2,
    0x0,
    0x0,
    0x0,

    0x3,
    0x0,
    0x0,
    0x0,

    0x4,
    0x0,
    0x0,
    0x0,
    
    0x4,
    0x0,
    0x0,
    0x0,

    0x4,
    0x0,
    0x0,
    0x0,

    0x4,
    0x0,
    0x0,
    0x0,

    0x6,
    0x0,
    0x0,
    0x0,

    0x8,
    0x0,
    0x0,
    0x0,

    0x8,
    0x0,
    0x0,
    0x0,

    0x8,
    0x0,
    0x0,
    0x0,

    0x8,
    0x0,
    0x0,
    0x0,

    0x2,
    0x0,
    0x0,
    0x0,

    0x2,
    0x0,
    0x0,
    0x0,

    0x2,
    0x0,
    0x0,
    0x0,

    0x2,
    0x0,
    0x0,
    0x0,

    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
  };

  uint64_t llvm_segment_start = 0x601c80;
  vector<uint8_t> llvm_segment = {
    0x1,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0,

    0x1,
    0x0,
    0x0,
    0x0
  };




  srand(time(0) ^ (getpid()*0xff));
  Sandbox sb;
  StateGen sg(&sb, 128);

  size_t count = num_tc.value();

  for (size_t i = 0; i < count; ++i) {
    CpuState tc;
    sg.get(tc);
    tc.update(rdi, i);

    // LLVM read-only data
    Memory llvm;
    llvm.resize(llvm_segment_start, 32);
    for(size_t i = 0; i < llvm_segment.size(); ++i) {
      uint64_t addr = llvm_segment_start + i;
      llvm.set_valid(addr, true);
      llvm[addr] = llvm_segment[i];
    }
    tc.segments.push_back(llvm);

    // GCC read-only data
    Memory gcc;
    gcc.resize(gcc_segment_start, 1024);
    for(size_t i = 0; i < gcc_segment.size(); ++i) {
      uint64_t addr = gcc_segment_start + i;
      gcc.set_valid(addr, true);
      gcc[addr] = gcc_segment[i];
    }
    tc.segments.push_back(gcc);

    for(uint64_t start : segments) {
      Memory m;
      m.resize(start, length+256);
      for(size_t j = 0; j < length; ++j) {
        m.set_valid(start+j, true);
        m[start+j] = rand() % 256;
      }

      tc.segments.push_back(m);
    }



    outputs.push_back(tc);
  }


  // Print anything we have so far
  outputs.write_text(cout);

  return 0;
}



