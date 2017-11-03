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
#include <limits>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_states.h"
#include "src/tunit/tunit.h"
#include "src/validator/learner.h"

#include "tools/io/cpu_states.h"
#include "tools/io/reg_set.h"
#include "tools/io/tunit.h"


using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

cpputil::Heading& register_heading =
  cpputil::Heading::create("Register Selection:");

cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& target_regs_arg =
  cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>::create("target_regs")
  .alternate("tr")
  .usage("{ %rax %rsp ... }")
  .description("Registers defined on entry")
  .default_val(x64asm::RegSet::all_gps());

cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>& rewrite_regs_arg =
  cpputil::ValueArg<x64asm::RegSet, RegSetReader, RegSetWriter>::create("rewrite_regs")
  .alternate("rr")
  .usage("{ %rax %rsp ... }")
  .description("Registers defined on entry")
  .default_val(x64asm::RegSet::all_gps());

cpputil::Heading& testcase_heading =
  cpputil::Heading::create("Testcase Selection:");

cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>& target_testcases_arg =
  cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("target_testcases")
  .alternate("tt")
  .usage("<path/to/file>")
  .description("Testcases for Target");

cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>& rewrite_testcases_arg =
  cpputil::FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("rewrite_testcases")
  .alternate("rt")
  .usage("<path/to/file>")
  .description("Testcases for Rewrite");


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  TUnit empty;
  Cfg empty_cfg(empty, RegSet::universe(), RegSet::universe());

  InvariantLearner learner(empty_cfg, empty_cfg);
  auto invs = learner.learn(target_regs_arg.value(), rewrite_regs_arg.value(),
                            target_testcases_arg.value(), rewrite_testcases_arg.value());

  for (size_t i = 0; i < invs->size(); ++i) {
    cout << *(*invs)[i] << endl;
  }

  return 0;
}
