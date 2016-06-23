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
  TrainingSetGadget train_tcs(seed);
  SandboxGadget training_sb(train_tcs, aux_fxns);
  PerformanceSetGadget perf_tcs(seed);
  SandboxGadget perf_sb(perf_tcs, aux_fxns);
  CostFunctionGadget fxn(target, &training_sb, &perf_sb);

  pid_t pid;
  int pc[2]; // parent to child pipe
  int cp[2]; // child to parent pipe

  // create a pipe for communication
  if (pipe(pc) || pipe(cp)) {
    Console::error() << "Failed to create pipe to communicate with stoked." << endl;
    return EXIT_FAILURE;
  }

  // fork
  pid = fork();
  if (pid == (pid_t) 0) {
    // child process

    // close stdin and make it the read end of the parent to child pipe
    close(0);
    // close stderr and make it write end of child to parent pipe
    close(2);
    if (dup(pc[0]) == -1 || dup(cp[1]) == -1) {
      Console::error() << "Failed to create pipe (dup) to communicate with stoked." << endl;
    }

    // close unused ends of pipes
    close(pc[1]);
    close(cp[0]);

    // exec stoked binary
    string stoked_path = "/home/sheule/dev/strata/stoke/bin/stoked";
    auto ret = execl(stoked_path.c_str(), stoked_path.c_str(), (char*)0);
    // we should not reach this point if exec succeeds
    Console::error() << "Exec of " << stoked_path <<  " failed: " << ret << "." << endl;
  } else if (pid < (pid_t) 0) {
    Console::error() << "Fork for stoked failed." << endl;
  } else {
    // parent process
    close(pc[0]);
    close(cp[1]);
    stringstream ss;
    ss << perf_tcs[0];
    auto str = ss.str();
    if (write(pc[1], str.c_str(), str.length()) == -1) {
      Console::error() << "Failed to send testcase to stoked." << endl;
    }
//    printf("\nOutput from child:\n");
//    char ch;
//    while (read(cp[0], &ch, 1) == 1) {
//      cout << " " << ch;
//    }
//    cout << endl;
  }
  return 0;

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
