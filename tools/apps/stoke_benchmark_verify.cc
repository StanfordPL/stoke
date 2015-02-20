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
#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/benchmark.inc"
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
using namespace std::chrono;
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

  if (!target.is_sound()) {
    Console::error(1) << "Target reads undefined variables, or leaves live_out undefined: " << target.which_undef_read() << endl;
  }

  if (!rewrite.is_sound()) {
    Console::error(1) << "Rewrite reads undefined variables, or leaves live_out undefined: " << rewrite.which_undef_read() << endl;
  }

  Console::msg() << "Verifier::verify()..." << endl;

  const auto start = steady_clock::now();
  for (size_t i = 0; i < benchmark_itr_arg; ++i) {
    verifier.verify(target, rewrite);
  }
  const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
  const auto vps = benchmark_itr_arg / dur.count();

  Console::msg() << fixed;
  Console::msg() << "Runtime:    " << dur.count() << " seconds" << endl;
  Console::msg() << "Throughput: " << vps << " / second" << endl;

  return 0;
}
