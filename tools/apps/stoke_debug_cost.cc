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
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/cost.inc"
#include "tools/args/rewrite.inc"
#include "tools/args/target.inc"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/rewrite.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  RewriteGadget rewrite(aux_fxns);

  SeedGadget seed;
  TrainingSetGadget tcs(seed);
  SandboxGadget sb(tcs, aux_fxns);
  CostFunctionGadget fxn(target, &sb);

  ofilterstream<Column> os(Console::msg());
  os.filter().padding(3);

  os << "Target" << endl;
  os << endl;
  os << target_arg.value().get_code() << endl;
  os.filter().next();

  os << "Rewrite" << endl;
  os << endl;
  os << rewrite_arg.value().get_code() << endl;
  os.filter().done();

  Console::msg() << endl;

  const auto res = fxn(rewrite, max_cost_arg.value());

  Console::msg() << "Correct: " << (res.first ? "yes" : "no") << endl;
  Console::msg() << "Cost: " << res.second << endl;
  Console::msg() << endl;

  return 0;
}
