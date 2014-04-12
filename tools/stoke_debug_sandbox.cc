// Copyright 2014 eric schkufza
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

#include <cstdlib>

#include <algorithm>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/testcases.h"
#include "src/args/tunit.h"
#include "src/state/cpu_state.h"
#include "src/state/state_writer.h"
#include "src/sandbox/sandbox.h"
#include "src/sandbox/state_callback.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input program:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target code")
    .default_val({"anon", {{RET}}});

auto& h2 = Heading::create("Testcases:");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
    .usage("<path/to/file>")
    .description("Testcases")
    .default_val({CpuState()});

auto& idx = ValueArg<size_t>::create("index")
    .usage("<int>")
    .description("Testcase index")
    .default_val(numeric_limits<size_t>::max());

auto& h3 = Heading::create("Sandboxing options:");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
    .usage("<int>")
    .description("Maximum jumps before exit due to infinite loop")
    .default_val(1024);

auto& h4 = Heading::create("Debugging options:");

auto& debug = FlagArg::create("debug")
    .alternate("d")
    .description("Debug mode, equivalent to --breakpoint 0");

auto& breakpoint = ValueArg<size_t>::create("breakpoint")
    .usage("<line>")
    .description("Set breakpoint")
    .default_val(numeric_limits<size_t>::max());

// Add user-defined extensions here ...

auto& h5 = Heading::create("Extension options:");

auto& ext = ValueArg<int>::create("extension")
		.usage("<int>")
		.description("User-defined extension")
		.default_val(0);

void callback(const StateCallbackData& data, void* arg) {
  auto stepping = (bool*) arg;

  cout << data.state << endl;
  cout << endl;
  cout << "Current Instruction: " << target.value().code[data.line] << endl;
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
        for (size_t i = 0, ie = target.value().code.size(); i < ie; ++i) {
          cout << (i == data.line ? "-> " : "   ") << target.value().code[i] << endl;
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

  if (debug) {
    breakpoint.value() = 0;
  }

  Sandbox sb;
  sb.set_max_jumps(max_jumps);

  const auto index = min(testcases.value().size() - 1, idx.value());
  const auto input = testcases.value()[index];
  sb.insert_input(input);

  auto stepping = false;
  for (size_t i = 0, ie = target.value().code.size(); i < ie; ++i) {
    sb.insert_before(i, callback, &stepping);
  }

  sb.run({target.value().code, RegSet::empty(), RegSet::empty()});

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
