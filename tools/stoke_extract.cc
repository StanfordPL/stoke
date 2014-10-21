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

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

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

  /* The permission is guarded by user's umask, which is why
     we set the mode to 0777.  We ignore the result, because mkdir will fail if
     the directory already exists.  We check for success later. */
  mkdir(out.value().c_str(), 0777);


  /* All said and done, check if the directory exists. */
  struct stat st;
  int result = stat(out.value().c_str(), &st);

  if (result) {
    // We couldn't even stat the file/directory.
    return false;
  }

  return S_ISDIR(st.st_mode);

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

