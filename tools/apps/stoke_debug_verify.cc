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

#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"

#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/rewrite.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/gadgets/validator.h"
#include "tools/gadgets/verifier.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns);
  RewriteGadget rewrite(aux_fxns);

  SeedGadget seed;
  TestSetGadget test_set(seed);
  SandboxGadget sb(test_set, aux_fxns);
  CorrectnessCostGadget fxn(target, &sb);
  SolverGadget smt;
  ValidatorGadget validator(smt);
  VerifierGadget verifier(fxn, validator);

  ofilterstream<Column> os(Console::msg());
  os.filter().padding(3);

  os << "Target" << endl;
  os << endl;
  os << target_arg.value().code << endl;
  os.filter().next();

  os << "Rewrite" << endl;
  os << endl;
  os << rewrite_arg.value().code << endl;
  os.filter().done();

  Console::msg() << endl;

  if (!target.is_sound()) {
    Console::error(1) << "Target reads undefined variables, or leaves live_out undefined: " << target.which_undef_read() << endl;
  }

  if (!rewrite.is_sound()) {
    Console::error(1) << "Rewrite reads undefined variables, or leaves live_out undefined: " << rewrite.which_undef_read() << endl;
  }

  if (strategy_arg.value() == Strategy::NONE) {
    Console::warn() << "'--stragegy none' passed, so no verification is done." << endl;
    return 0;
  }

  const auto res = verifier.verify(target, rewrite);

  if(verifier.has_error()) {
    Console::msg() << "Encountered error: " << endl;
    Console::msg() << verifier.error() << endl;
    return 1;
  }

  Console::msg() << "Equivalent: " << (res ? "yes" : "no") << endl;

  if (!res && verifier.counter_example_available()) {
    Console::msg() << endl;
    Console::msg() << verifier.get_counter_example();
    Console::msg() << endl;
  } else if (!res) {
    Console::msg() << endl << "No counterexample available." << endl;
  }

  return 0;
}
