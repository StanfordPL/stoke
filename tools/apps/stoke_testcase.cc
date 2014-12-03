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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/serialize/line_reader.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"

#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"
#include "tools/args/target.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/target.h"
#include "tools/io/tunit.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& io_opt = Heading::create("I/O options:");
auto& bin = ValueArg<string>::create("bin")
            .usage("<path/to/bin>")
            .description("Executable binary containing function to generate testcases for");
auto& args = ValueArg<string, LineReader<>>::create("args")
             .usage("<arg1 arg2 ... argn>")
             .description("Optional command line arguments to pass to binary")
             .default_val("");
auto& out = ValueArg<string>::create("o")
            .alternate("out")
            .usage("<path/to/file.tc>")
            .description("File to write testcases to (defaults to console if unspecified)");

auto& common_opt = Heading::create("Common options:");
auto& max_tc = ValueArg<size_t>::create("max_testcases")
               .usage("<int>")
               .description("The maximum number of testcases to generate")
               .default_val(16);

auto& trace_opt = Heading::create("Trace options:");
auto& fxn = ValueArg<string>::create("fxn")
            .usage("<string>")
            .description("Function to generate testcases for")
            .default_val("main");
auto& begin_line = ValueArg<size_t>::create("begin_line")
                   .usage("<int>")
                   .description("The line number to begin recording from")
                   .default_val(1);
auto& end_lines = ValueArg<vector<size_t>>::create("end_lines")
                  .usage("{ 0 1 ... 9 }")
                  .description("Line number to end recording on; recording always stops on returns")
                  .default_val({});
auto& max_stack = ValueArg<uint64_t>::create("max_stack")
                  .usage("<bytes>")
                  .description("The maximum number of bytes to assume could be stack")
                  .default_val(1024);

auto& autogen_opt = Heading::create("Autogen options:");
auto& max_attempts = ValueArg<uint64_t>::create("max_attempts")
                     .usage("<int>")
                     .description("The maximum number of attempts to make at generating a testcase")
                     .default_val(16);
auto& max_memory = ValueArg<uint64_t>::create("max_memory")
                   .usage("<bytes>")
                   .description("The maximum number of bytes to allocate to stack or heap")
                   .default_val(1024);
auto& stack_size = ValueArg<size_t>::create("stack_size")
                   .usage("<int>")
                   .description("The minimum stack size available to the testcase")
                   .default_val(16);

auto& conv_opt = Heading::create("File conversion options:");
auto& compress = FlagArg::create("compress")
                 .description("Convert testcase file from text to binary");
auto& decompress = FlagArg::create("decompress")
                   .description("Convert testcase file from binary to text");
auto& in = ValueArg<string>::create("in")
           .alternate("i")
           .usage("<path/to/file.tc>")
           .description("Path to testcases file")
           .default_val("in.tc");

int auto_gen() {
  TargetGadget target;
  SandboxGadget sb({});

  StateGen sg(&sb, stack_size.value());
  sg.set_max_attempts(max_attempts.value())
  .set_max_memory(max_stack.value());

  CpuStates tcs;
  for (size_t i = 0, ie = max_tc.value(); i < ie; ++i) {
    CpuState tc;
    if (sg.get(tc, target)) {
      tcs.push_back(tc);
    }
  }

  if (tcs.empty()) {
    Console::error(1) << "Unable to generate testcases!" << endl;
  }

  if (out.has_been_provided()) {
    ofstream ofs(out.value());
    tcs.write_text(ofs);
  } else {
    tcs.write_text(Console::msg());
    Console::msg() << endl;
  }

  return 0;
}

int trace(const string& argv0) {
  string here = argv0;
  here = here.substr(0, here.find_last_of("/") + 1);

  const string pin_path = here + "../src/ext/pin-2.13-62732-gcc.4.4.7-linux/";
  const string so_path = pin_path + "source/tools/stoke/obj-intel64/";

  Terminal term;
  term << pin_path << "pin -injection child -t " << so_path << "testcase.so ";

  term << "-f " << fxn.value() << " ";
  if (out.has_been_provided()) {
    term << "-o " << out.value() << " ";
  }
  term << "-x " << max_stack.value() << " ";
  term << "-n " << max_tc.value() << " ";
  term << "-b " << begin_line.value() << " ";
  term << "-e \" ";
  for (auto e : end_lines.value()) {
    term << e << " ";
  }
  term << "\" ";

  term << " -- " << bin.value() << " " << args.value() << endl;

  return 0;
}

int do_compress() {
  ifstream ifs(in.value());
  if (!ifs.is_open()) {
    Console::error(1) << "Unable to open input file: " << in.value() << "!" << endl;
  }

  CpuStates cs;
  cs.read_text(ifs);
  if (ifs.fail()) {
    Console::error(1) << "Unable to read input file: " << in.value() << "!" << endl;
  }

  if (out.has_been_provided()) {
    ofstream ofs(out.value());
    cs.write_bin(ofs);
  } else {
    cs.write_bin(Console::msg());
    Console::msg() << endl;
  }

  return 0;
}

int do_decompress() {
  ifstream ifs(in.value());
  if (!ifs.is_open()) {
    Console::error(1) << "Unable to open input file: " << in.value() << "!" << endl;
  }

  CpuStates cs;
  cs.read_bin(ifs);
  if (ifs.fail()) {
    Console::error(1) << "Unable to read input file: " << in.value() << "!" << endl;
  }

  if (out.has_been_provided()) {
    ofstream ofs(out.value());
    cs.write_text(ofs);
  } else {
    cs.write_text(Console::msg());
    Console::msg() << endl;
  }

  return 0;
}

int main(int argc, char** argv) {
  target_arg.required(false);
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (compress.value()) {
    return do_compress();
  } else if (decompress.value()) {
    return do_decompress();
  } else if (target_arg.has_been_provided()) {
    return auto_gen();
  } else {
    return trace(argv[0]);
  }
}

