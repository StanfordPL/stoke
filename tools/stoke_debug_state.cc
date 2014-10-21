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

#include <algorithm>
#include <iostream>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/args/cpu_states.h"
#include "src/state/cpu_state.h"
#include "src/state/cpu_states.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& h1 = Heading::create("Input state");

auto& testcases = FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("testcases")
    .usage("<path/to/file>")
    .description("Testcases");

auto& idx = ValueArg<size_t>::create("index")
    .usage("<int>")
    .description("Testcase index")
    .default_val(0);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  const auto index = min(testcases.value().size() - 1, idx.value());
  auto& s1 = testcases.value()[index];

  cout << "Original state: " << endl;
  cout << endl;
  cout << s1 << endl;
  cout << endl;

  const auto s2 = s1 ^ s1;

  cout << "XOR'ed with itself: " << endl;
  cout << endl;
  cout << s2 << endl;
  cout << endl;

  s1.stack.copy_defined(s2.stack);
  s1.heap.copy_defined(s2.heap);

  cout << "Copy defined state from XOR'ed state" << endl;
  cout << endl;
  cout << s1 << endl;
  cout << endl;

  return 0;
}
