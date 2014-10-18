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
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/reg_set.h"
#include "src/args/tunit.h"
#include "src/cfg/cfg.h"
#include "src/cfg/dot_writer.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input program:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target code")
    .default_val({"anon", {{RET}}, {}});

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
    .usage("{ %rax %rsp ... }")
    .description("Registers defined on entry")
    .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
    .usage("{ %rax %rsp ... }")
    .description("Registers live on exit")
    .default_val(RegSet::empty() + rax);

auto& h2 = Heading::create("Content options:");

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

auto& h3 = Heading::create("I/O options:");

auto& out = ValueArg<string>::create("o")
    .alternate("out")
    .usage("<path/to/file>")
    .description("Path to write cfg to")
    .default_val("./cfg.pdf");

auto& view = FlagArg::create("view")
    .alternate("v")
    .description("View cfg immediately");

void to_dot() {
  ofstream ofs(string("/tmp/stoke.") + getenv("USER") + ".dot");

  DotWriter dw;
  dw.set_def_in(dib, dii)
  .set_live_out(lob)
  .set_dom(dom);

  dw(ofs, {target.value().code, def_in, live_out});
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

