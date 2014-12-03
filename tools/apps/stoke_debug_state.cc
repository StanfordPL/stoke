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

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/gadgets/seed.h"
#include "tools/gadgets/testcases.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;
  TestcaseGadget s1(seed);

	Console::msg() << "Original state: " << endl;
	Console::msg() << endl;
	Console::msg() << s1 << endl;
	Console::msg() << endl;

  const auto s2 = s1 ^ s1;

	Console::msg() << "XOR'ed with itself: " << endl;
	Console::msg() << endl;
	Console::msg() << s2 << endl;
	Console::msg() << endl;

  s1.stack.copy_defined(s2.stack);
  s1.heap.copy_defined(s2.heap);

	Console::msg() << "Copy defined state from XOR'ed state" << endl;
	Console::msg() << endl;
	Console::msg() << s1 << endl;
	Console::msg() << endl;

  return 0;
}
