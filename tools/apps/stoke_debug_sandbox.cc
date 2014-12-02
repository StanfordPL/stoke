// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/target.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& dbg = Heading::create("Debug Options:");
auto& debug = FlagArg::create("debug")
              .alternate("d")
              .description("Debug mode, equivalent to --breakpoint 0");
auto& breakpoint = ValueArg<size_t>::create("breakpoint")
                   .usage("<line>")
                   .description("Set breakpoint")
                   .default_val(numeric_limits<size_t>::max());

void callback(const StateCallbackData& data, void* arg) {
  auto stepping = (bool*) arg;

  cout << data.state << endl;
  cout << endl;
  cout << "Current Instruction: " << target_arg.value().code[data.line] << endl;
  cout << endl;

  if (data.line != breakpoint && *stepping == false) {
    return;
  }

  auto key = ' ';
  while (key != 'c' && key != 's' && key != 'd') {
    cout << "(l)ist, (c)ontinue, (s)tep, (d)isable, or (q)uit: ";
    cin >> key;
    cout << endl;

    switch (key) {
    case 'l':
      for (size_t i = 0, ie = target_arg.value().code.size(); i < ie; ++i) {
        cout << (i == data.line ? "-> " : "   ") << target_arg.value().code[i] << endl;
      }
      cout << endl;
      break;
    case 'c':
      *stepping = false;
      break;
    case 's':
      *stepping = true;
      break;
    case 'd':
      breakpoint.value() = numeric_limits<size_t>::max();
      *stepping = false;
      break;
    case 'q':
      exit(0);
    default:
      break;
    }
  }
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (testcases_arg.value().empty()) {
    cout << "No testcases provided." << endl;
    return 0;
  }

  if (debug) {
    if (target_arg.value().code[0].is_label_defn()) {
      breakpoint.value() = 1;
    } else {
      breakpoint.value() = 0;
    }
  }

  TargetGadget target;
  SeedGadget seed;
  TestcaseGadget tc(seed);
  CpuStates tcs;
  tcs.push_back(tc);
  SandboxGadget sb(tcs);

  auto stepping = false;
  for (size_t i = 0, ie = target_arg.value().code.size(); i < ie; ++i) {
    sb.insert_before(i, callback, &stepping);
  }

  sb.run(target);

  const auto result = *(sb.result_begin());
  if (result.code != ErrorCode::NORMAL) {
    cout << "Control returned abnormally with signal " << dec << (int)result.code << endl;
  } else {
    cout << "Control returned normally with state: " << endl;
    cout << endl;
    cout << result << endl;
  }
  cout << endl;

  return 0;
}
