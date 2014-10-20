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

#include <cctype>
#include <cstdlib>

#include <algorithm>
#include <array>
#include <fstream>
#include <iostream>
#include <set>
#include <string>
#include <unordered_map>

#include "src/disassembler/disassembler.h"

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"
#include "src/ext/cpputil/include/system/terminal.h"

using namespace cpputil;
using namespace stoke;
using namespace std;

auto& h1 = Heading::create("I/O options:");

auto& in = ValueArg<string>::create("i")
    .alternate("in")
    .usage("<path/to/bin>")
    .description("Binary file to extract code from")
    .default_val("./a.out");

auto& out = ValueArg<string>::create("o")
    .alternate("out")
    .usage("<path/to/dir>")
    .description("Directory to write results to")
    .default_val("out");


bool make_dir() {
  /* The permission is guarded by user's umask */
  int result = mkdir(out.value().c_str(), 0777);
  return result == 0;
}


function<void (const Disassembler::ParsedFunction&)> callback =
  [=] (const Disassembler::ParsedFunction& pf) {

    ofstream ofs(out.value() + "/" + pf.name + ".s");

    ofs << "  .text" << endl;
    ofs << "  .globl " << pf.name << endl;
    ofs << "  .type " << pf.name << ", @function" << endl;
    ofs << pf.name << ":" << endl;

    ofs << pf.code << endl;

    ofs << ".size " << pf.name << ", .-" << pf.name << endl;

  };

/*
void emit(const string& fxn, const line_map& lines, const label_set& labels) {
  ofilterstream<Column> col(ofs);
  col.filter().padding(2);

  for (const auto& l : lines) {
    const auto itr = labels.find(l.first);
    if (itr != labels.end()) {
      col << ".L_" << l.first << ":" << endl;
    }
    col << "  " << l.second << endl;
  }
	col.filter().next();

	size_t line = 1;
  for (const auto& l : lines) {
    if (labels.find(l.first) != labels.end()) {
			col << endl;
		}
		col << "# " << line++ << endl;
	}
	col.filter().done();

	ofs << endl;
  ofs << ".size " << fxn << ", .-" << fxn << endl;
}
*/


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  if (!make_dir()) {
    cout << "Unable to create output directory " << out.value() << "!" << endl;
    return 1;
  } 

  Disassembler d;
  d.disassemble(in.value(), callback);

  if(d.has_error()) {
    cerr << "Error: " << d.get_error() << endl;
  }
}

