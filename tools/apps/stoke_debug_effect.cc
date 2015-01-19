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
#include <sstream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/target.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& dbg = Heading::create("Diff Options:");
auto& show_unchanged = FlagArg::create("show_unchanged")
                       .description("Show unchanged lines");

// see http://stackoverflow.com/questions/13172158/c-split-string-by-line
std::vector<std::string> split_string(const std::string& str,
                                      const std::string& delimiter) {
  std::vector<std::string> strings;
  std::string::size_type pos = 0;
  std::string::size_type prev = 0;
  while ((pos = str.find(delimiter, prev)) != std::string::npos) {
    strings.push_back(str.substr(prev, pos - prev));
    prev = pos + 1;
  }
  strings.push_back(str.substr(prev));
  return strings;
}

string red(string s) {
  return "\033[91m" + s + "\033[0m";
}

string green(string s) {
  return "\033[92m" + s + "\033[0m";
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (testcases_arg.value().empty()) {
    Console::error(1) << "No testcases provided.";
  }

  TargetGadget target;
  SeedGadget seed;
  TestcaseGadget tc(seed);
  CpuStates tcs;
  CpuState initial = tc;
  tcs.push_back(tc);
  SandboxGadget sb(tcs);

  if (!target.is_sound()) {
    Console::error(1) << "Target reads undefined variables, or leaves live_out undefined: " << target.which_undef_read() << endl;
  }

  sb.run(target);

  const auto result = *(sb.result_begin());
  if (result.code != ErrorCode::NORMAL) {
    Console::msg() << "Control returned abnormally with signal " << dec << (int)result.code << endl;
  } else {
    ostringstream os1, os2;
    os1 << initial << endl;
    os2 << result << endl;
    vector<string> ss1 = split_string(os1.str(), "\n");
    vector<string> ss2 = split_string(os2.str(), "\n");
    size_t len = min(ss1.size(), ss2.size());
    for (size_t i = 0; i < len; i++) {
      os1.str("");
      os2.str("");
      string s1 = ss1[i];
      string s2 = ss2[i];
      if (s1.size() != s2.size()) {
        os1 << red(s1);
        os2 << green(s2);
      } else {
        if (s1 != s2 || show_unchanged) {
          for (size_t j = 0; j < s1.size(); j++) {
            if (s1[j] == s2[j]) {
              os1 << s1[j];
              os2 << s1[j];
            } else {
              os1 << red(string(1, s1[j]));
              os2 << green(string(1, s2[j]));
            }
          }
          Console::msg() << os1.str() << endl << os2.str() << endl;
        }
      }
    }
  }

  return 0;
}
