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

#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"

#include "src/ext/x64asm/src/reg_set.h"

#include "src/cfg/dot_writer.h"
#include "tools/gadgets/target.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& io = Heading::create("I/O Options:");
auto& output_binary = FlagArg::create("output_binary")
                      .alternate("b")
                      .description("Output the target in binary format.");
auto& output_binary2 = FlagArg::create("output_dump")
                       .alternate("d")
                       .description("Output the target in the binary dump format.");
auto& out = ValueArg<string>::create("out")
            .alternate("o")
            .usage("<path/to/file.s>")
            .description("File to write result to.  - for stdout")
            .default_val("-");

int main(int argc, char** argv) {
  // suppress some warnings
  live_out_arg.set_provided();
  def_in_arg.default_val(RegSet::universe());
  def_in_arg.set_provided();

  CommandLineConfig::strict_with_convenience(argc, argv);

  TargetGadget target({}, false);

  ostream* res;
  if (out.value() == "-") {
    res = &cout;
  } else {
    ofstream ofs(out.value());
    res = &ofs;
  }
  if (output_binary) {
    target.get_function().write_binary(*res);
  } else if (output_binary2) {
    target.get_function().write_dump(*res);
  } else {
    target.get_function().write_text(*res);
  }

  return 0;
}

