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

#include <fstream>
#include <iostream>
#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"

#include "src/cfg/dot_writer.h"
#include "tools/gadgets/target.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& content = Heading::create("Content Options:");
auto& dib = FlagArg::create("dib")
            .alternate("def_in_block")
            .description("Display def in values for basic blocks");
auto& dii = FlagArg::create("dii")
            .alternate("def_in_instr")
            .description("Display def in values for instructions");
auto& lob = FlagArg::create("lob")
            .alternate("live_out_block")
            .description("Display live out values for basic blocks");
auto& dom = FlagArg::create("dom")
            .alternate("dominators")
            .description("Display dominators");

auto& io = Heading::create("I/O Options:");
auto& out = ValueArg<string>::create("o")
            .alternate("out")
            .usage("<path/to/file.pdf>")
            .description("Path to write cfg to")
            .default_val("./cfg.pdf");
auto& view = FlagArg::create("view")
             .alternate("v")
             .description("View cfg immediately");

void to_dot() {
  ofstream ofs(string("/tmp/stoke.") + getenv("USER") + ".dot");

  TargetGadget target;

  DotWriter dw;
  dw.set_def_in(dib, dii)
  .set_live_out(lob)
  .set_dom(dom);

  dw(ofs, target);
}

bool to_pdf() {
  Terminal term;
  term << "cat /tmp/stoke.$USER.dot | dot -Tpdf > " << out.value() << endl;
  return term.result() == 0;
}

bool view_pdf() {
  Terminal term;
  term << "evince " << out.value() << endl;
  return term.result() == 0;
}

bool rm_pdf() {
  Terminal term;
  term << "rm -f " << out.value() << endl;
  return term.result() == 0;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  to_dot();
  if (!to_pdf()) {
    cout << "Unable to save file!" << endl;
    return 1;
  } else if (view && !view_pdf()) {
    cout << "Unable to open file for viewing!" << endl;
    return 1;
  } else if (view && !rm_pdf()) {
    cout << "Unable to remove file!" << endl;
    return 1;
  }

  return 0;
}

