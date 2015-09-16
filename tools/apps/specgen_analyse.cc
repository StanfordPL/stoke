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
#include <map>
#include <string>
#include <vector>
#include <cassert>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/tunit/tunit.h"

#include "tools/io/opc_set.h"
#include "tools/io/tunit.h"

#include "tools/apps/specgen.h"
#include "tools/apps/support.h"

#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;

auto& io_opt = Heading::create("Main option:");

FileArg<TUnit, TUnitReader, TUnitWriter>& target_arg =
  FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
  .usage("<path/to/file.s>")
  .description("Target code")
  .required();

FlagArg& get_num_live_bits_arg =
  FlagArg::create("num_live_bits")
  .description("Get the number of live-out bits.");

void write_file(string fname, string content) {
  ofstream f;
  f.open(fname);
  f << content;
  f.close();
}

int main(int argc, char** argv) {
  ostringstream stream;
  CommandLineConfig::strict_with_convenience(argc, argv);

  TUnit target = target_arg;

  if (get_num_live_bits_arg) {
    auto instr = target.get_code()[1];
    size_t n = 0;
    auto regs = instr.maybe_write_set();
    for(auto it = regs.gp_begin(); it != regs.gp_end(); ++it) {
      n += (*it).size();
    }
    for(auto it = regs.mm_begin(); it != regs.mm_end(); ++it) {
      n += (*it).size();
    }
    for(auto it = regs.sse_begin(); it != regs.sse_end(); ++it) {
      n += (*it).size();
    }
    for(auto it = regs.flags_begin(); it != regs.flags_end(); ++it) {
      n += 1;
    }
    cout << n << endl;
  } else {
    for (auto& instr : target.get_code()) {
      auto opc = instr.get_opcode();
      if (opc == CALL_LABEL) continue;
      if (opc == 0) continue;
      if (opc == RET) continue;
      cout << opc << endl;
    }
  }
}
