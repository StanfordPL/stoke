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

#include <iostream>
#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/system/terminal.h"

using namespace cpputil;
using namespace std;

auto& h1 = Heading::create("I/O options:");

auto& bin = ValueArg<string>::create("bin")
    .usage("<path/to/bin>")
    .description("Executable binary containing function to generate testcases for")
    .default_val("./a.out");

auto& args = ValueArg<string>::create("args")
    .usage("<arg1 arg2 ... argn>")
    .description("Optional command line arguments to pass to binary")
    .default_val("");

auto& out = ValueArg<string>::create("o")
    .alternate("out")
    .usage("<path/to/file>")
    .description("File to write testcases to (defaults to console if unspecified)")
    .default_val("");

auto& h2 = Heading::create("Trace options:");

auto& fxn = ValueArg<string>::create("fxn")
    .usage("<string>")
    .description("Function to generate testcases for")
    .default_val("main");

auto& max_stack = ValueArg<uint64_t>::create("max_stack")
    .usage("<bytes>")
    .description("The maximum number of bytes to assume could be stack")
    .default_val(1024);

auto& max_tc = ValueArg<size_t>::create("max_testcases")
    .usage("<int>")
    .description("The maximum number of testcases to generate")
    .default_val(16);

// Add user-defined extensions here ...

auto& h3 = Heading::create("Extension options:");

auto& ext = ValueArg<int>::create("extension")
		.usage("<int>")
		.description("User-defined extension")
		.default_val(0);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  string here = argv[0];
  here = here.substr(0, here.find_last_of("/") + 1);

  const string pin_path = here + "../src/ext/pin-2.13-62732-gcc.4.4.7-linux/";
  const string so_path = pin_path + "source/tools/stoke/obj-intel64/";

  Terminal term;
  term << pin_path << "pin -injection child -t " << so_path << "testcase.so ";

  term << "-f " << fxn.value() << " ";
  if (out.value() != "") {
    term << "-o " << out.value() << " ";
  }
  term << "-n " << max_tc.value() << " ";
  term << "-x " << max_stack.value() << " ";

  term << " -- " << bin.value() << " " << args.value() << endl;

  return 0;
}

