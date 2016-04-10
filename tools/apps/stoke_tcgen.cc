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
#include "src/validator/obligation_checker.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/true.h"

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/io/state_diff.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& bound_arg =
  ValueArg<size_t>::create("bound")
  .usage("<int>")
  .description("Bound on loop iterations")
  .default_val(1);

auto& debug_arg = FlagArg::create("debug")
                  .description("Print some information about what we're doing");

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);

  CpuStates empty_set;
  SandboxGadget sb(empty_set, aux_fxns);

  SolverGadget solver;
  ObligationChecker checker(solver);
  checker.set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  checker.set_sandbox(&sb);

  // Step 1: enumerate paths up to a certain bound
  vector<CfgPath> paths;
  paths = CfgPaths::enumerate_paths(target, bound_arg.value());

  if (debug_arg.value())
    cerr << "Number of paths: " << paths.size() << endl;

  // Step 2: for each path, find a testcase if possible
  // (there's lots of silly setup for this)

  x64asm::Code rewrite_code;
  std::stringstream ss;
  ss << ".silly:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite_code;
  Cfg rewrite(rewrite_code, x64asm::RegSet::all_gps(), x64asm::RegSet::empty());
  auto rewrite_path = CfgPaths::enumerate_paths(rewrite, 1)[0];

  FalseInvariant _false;
  TrueInvariant _true;

  CpuStates outputs;
  for (auto p : paths) {

    if (debug_arg.value()) {
      cerr << "Looking for testcase on path " << p << endl;
    }

    checker.check(target, rewrite, p, rewrite_path, _true, _false);

    if (checker.checker_has_ceg()) {
      outputs.push_back(checker.checker_get_target_ceg());
      if (debug_arg.value())
        cerr << " * Found testcase" << endl;
    } else {
      if (debug_arg.value())
        cerr << " * No testcase found" << endl;
    }
  }

  outputs.write_text(cout);

  return 0;
}



