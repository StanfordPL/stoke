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

string tempfile(const string& temp) {
  vector<char> v(temp.begin(), temp.end());
  v.push_back('\0');

  const auto fd = mkstemp(v.data());
  return string(v.begin(), v.end()-1);
}

void to_dot(const string& dot_file) {
  ofstream ofs(dot_file);

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);

  DotWriter dw;
  dw.set_def_in(dib, dii)
  .set_live_out(lob)
  .set_dom(dom);

  dw(ofs, target);
}

bool to_pdf(const string& dot_file, const string& pdf_file) {
  Terminal term;
  term << "cat " << dot_file << " | dot -Tpdf > " << pdf_file << " 2> /dev/null" << endl;
  return term.result() == 0;
}

bool view_pdf(const string& pdf_file) {
  Terminal term;
  term << "evince " << pdf_file << endl;
  return term.result() == 0;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  const auto dot_file = tempfile("/tmp/stoke_debug_cfg.dot.XXXXXX");

  to_dot(dot_file);
  if (!to_pdf(dot_file, out.value())) {
    Console::error(1) << "Unable to save file!" << endl;
  } else if (view && !view_pdf(out.value())) {
    Console::error(1) << "Unable to open file for viewing!" << endl;
  }

  return 0;
}

