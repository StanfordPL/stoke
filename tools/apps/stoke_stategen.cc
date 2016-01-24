// Copyright 2013-2015 Stanford University
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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/serialize/line_reader.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"
#include "src/validator/bounded.h"

#include "tools/args/target.inc"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/io/tunit.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;


int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  /*
  SolverGadget sg;
  BoundedValidator bv(sg);
  bv.set_bound(2);
  bv.set_heap_out(true);
  bv.set_alias_strategy(BoundedValidator::AliasStrategy::STRING);

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);


  auto tcs = bv.make_testcases(target);
  CpuStates css;

  for(auto tc : tcs) {
    css.push_back(tc);
  }

  css.write_text(cout);
  */
}

