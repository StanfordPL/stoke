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

#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"

#include "src/cfg/dot_writer.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/target.h"

using namespace cpputil;
using namespace std;
using namespace stoke;


auto& io = Heading::create("I/O Options:");
auto& no_skip_checks = FlagArg::create("no_skip_checks")
                       .description("Run all the checks for creating a Cfg; don't skip.");


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  Cfg* target;

  if (no_skip_checks)  {
    FunctionsGadget aux_fxns;
    target = static_cast<Cfg*>(new TargetGadget(aux_fxns, false));
  } {
    target = new Cfg(target_arg.value().get_code());
  }

  cout << target->get_function() << endl;

  delete target;

  return 0;
}

