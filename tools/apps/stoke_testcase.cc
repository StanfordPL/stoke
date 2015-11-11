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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/serialize/line_reader.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"

#include "tools/args/target.inc"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/io/tunit.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

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
auto& allow_unaligned_arg = FlagArg::create("allow_unaligned")
                            .description("Allow memory accesses to be unaligned");
auto& register_max_arg = ValueArg<string>::create("register_max")
                         .usage("<string>")
                         .description("Set maximum values for registers.  E.g. \"rax=10,rdx=20\"");

auto& register_mask_arg = ValueArg<string>::create("register_mask")
                          .usage("<string>")
                          .description("Set mask values for registers.  E.g. \"rax=0x10,rdx=0x20\"");



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

uint64_t string_to_int(std::string s) {

  if (s.length() > 2) {
    if (s[0] == '0' && s[1] == 'x') {
      return stoul(s, nullptr, 16);
    }
  }
  return stoul(s, nullptr, 10);
}

std::vector<std::pair<R64, uint64_t>> parse_register_value_list(std::string s, std::string option_name) {

  // We keep track of the register read so far ("current_reg"), the value read
  // so far ("current_value"), and whether we're still reading the register
  // name, or if we're reading something else.  It's a very simple DFA for
  // parsing (there are basically two states, depending on reading_reg).
  // build the testcases

  std::vector<std::pair<R64, uint64_t>> values;
  s.append(1, '\n');
  string current_reg = "";
  string current_value = "";
  bool reading_reg = true;
  for (size_t i = 0; i < s.size(); ++i) {
    char c = s[i];
    if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'z')) {
      if (!reading_reg)
        current_value.append(1, c);
      else
        current_reg.append(1, c);
    } else if (c >= 'A' && c <= 'Z') {
      if (!reading_reg)
        current_value.append(1, c - 'A' + 'a');
      else
        current_reg.append(1, c - 'A' + 'a');
    }
    else if (c == ',' || c == '\n') {
      if (reading_reg) {
        Console::warn() << "Got ',' or end-of-input but expected '=' or register name." << endl;
        Console::error(1) << "Expecting comma-separated list like rax=10,rdx=12 for "
                          << option_name << endl;
      }

      R64 reg = rax;
      //parse register
      if (current_reg == "rax")
        reg = rax;
      else if (current_reg == "rcx")
        reg = rcx;
      else if (current_reg == "rdx")
        reg = rdx;
      else if (current_reg == "rbx")
        reg = rbx;
      else if (current_reg == "rsi")
        reg = rsi;
      else if (current_reg == "rdi")
        reg = rdi;
      else if (current_reg == "rsp")
        reg = rsp;
      else if (current_reg == "rbp")
        reg = rbp;
      else {
        bool set=false;
        for (size_t i = 8; i < 16; ++i) {
          if (current_reg == "r" + to_string(i)) {
            reg = r64s[i];
            set = true;
            break;
          }
        }
        if (!set) {
          Console::error(1) << "Could not parse register " << current_reg << "for"
                            << option_name << endl;
        }
      }
      values.push_back(std::pair<R64,uint64_t>(reg, string_to_int(current_value)));

      current_reg = "";
      current_value = "";
      reading_reg = true;

    } else if (c == '=') {
      if (!reading_reg)
        Console::error(1) << "Expecting comma-separated list like rax=10,rdx=12 for "
                          << option_name << endl;
      reading_reg = false;
    } else {
      Console::warn() << "Unexpected character " << c << " in " << option_name << endl;
      Console::error(1) << "Expecting comma-separated list like rax=10,rdx=12" << endl;
    }
  }

  return values;
}

int auto_gen() {
  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  SandboxGadget sb({}, aux_fxns);
  SeedGadget seed;

  // setup the stategen class
  StateGen sg(&sb, stack_size.value());
  sg.set_max_attempts(max_attempts.value())
  .set_max_memory(max_stack.value())
  .set_allow_unaligned(allow_unaligned_arg)
  .set_seed(seed);


  // parse the register maximas and masks argument
  if (register_max_arg.has_been_provided()) {
    auto reg_max_vals = parse_register_value_list(register_max_arg, "--register_max");
    for (auto it : reg_max_vals) {
      sg.set_max_value(it.first, it.second);
    }
  }

  if (register_mask_arg.has_been_provided()) {
    auto reg_mask_vals = parse_register_value_list(register_mask_arg, "--register_mask");
    for (auto it : reg_mask_vals) {
      sg.set_bitmask(it.first, it.second);
    }
  }


  // generate testcases
  CpuStates tcs;
  for (size_t i = 0, ie = max_tc.value(); i < ie; ++i) {
    CpuState tc;
    if (sg.get(tc, target)) {
      tcs.push_back(tc);
    }
  }

  if (tcs.empty()) {
    Console::warn() << "Last reported error from StateGen: " << endl;
    Console::warn() << sg.get_error() << endl;
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

  // Don't return term.result() because it computes it mod 256 in the shell,
  // and this sometimes hides errors from pin -- Berkeley
  if (term.result() != 0) {
    Console::error(1) << "Unspecified pintool error " << term.result() << "!" << endl;
  }

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

