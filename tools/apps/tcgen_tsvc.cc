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


int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  CpuStates outputs;

  vector<uint64_t> segments = {
    0x601880, //b
    0x601280, //a
    0x601680, //c
    0x601080, //d
    0x601480  //e
  };
  uint64_t length = 128*sizeof(int);


  srand(time(0) ^ (getpid()*0xff));
  Sandbox sb;
  StateGen sg(&sb);

  size_t count = num_tc.value();

  for (size_t i = 0; i < count; ++i) {
    CpuState tc;
    sg.get(tc);
    tc.update(rdi, rand() % 17);

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



