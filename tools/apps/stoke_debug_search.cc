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
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/move.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/transforms.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;
  TargetGadget target;
  TransformsGadget tforms(seed);

  ofilterstream<Column> os(Console::msg());
  os.filter().padding(3);

  if (!target.is_sound()) {
    Console::error(1) << "Target reads undefined variables, or leaves live_out undefined." << endl;
  }

  os << "Original Code:" << endl;
  os << endl;
  os << target.get_code() << endl;
  os.filter().next();

  const auto res = tforms.modify(target, move_arg);

  os << "After " << (res ? "Successful" : "Failed") << " Transform:" << endl;
  os << endl;
  os << target.get_code() << endl;
  os.filter().next();

  if (res) {
    tforms.undo(target, move_arg);
  }

  os << "After Undo:" << endl;
  os << endl;
  os << target.get_code() << endl;
  os.filter().done();

  Console::msg() << endl;

  return 0;
}
