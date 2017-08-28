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
#include <chrono>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"

#include "src/ext/x64asm/src/reg_set.h"
#include "src/cost/expr.h"

#include "tools/gadgets/cost_function.h"

#include "tools/args/cost.inc"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/testcases.h"


using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace chrono;

auto& io = Heading::create("I/O Options:");
// auto& output_binary = FlagArg::create("output_binary")
//                       .alternate("b")
//                       .description("Output the target in binary format.");
auto& out = ValueArg<string>::create("out")
            .alternate("o")
            .usage("<path/to/file.s>")
            .description("File to write result to.  - for stdout")
            .default_val("-");

auto& path = ValueArg<string>::create("path")
             .usage("<path/to/dir>")
             .description("Directory to collect data from")
             .default_val("-");

bool is_prefix(const string& str, const string& prefix) {
  auto len = prefix.size();
  return str.length() >= len && str.substr(0,len) == prefix;
}

bool replace(string& dest, TUnit& tunit) {

  // Assemble the new function
  Assembler assm;
  auto code = tunit.get_code();
  auto result = assm.assemble(code);
  if (!result.first) {
    Console::msg() << "Could not assemble rewrite; ";
    Console::msg() << "Requested 8-bit jump offset but jump target is too far." << endl;
    exit(1);
  }

  // count noops at the end
  int num_nops = 0, i = code.size()-1;
  while (i > 0) {
    if (code[i].get_opcode() != NOP) break;
    i--;
    num_nops++;
  }

  auto& fxn = result.second;

  // Fail if the new function is larger than the old
  auto size = tunit.hex_capacity();
  if (fxn.size() - num_nops > size) {
    Console::msg() << "New function has " << fxn.size() << " bytes, but the old one had " << size;
    Console::msg() << "." << endl;
    return false;
  }

  // Overwrite the old function (fingers crossed!)
  fstream fs(dest, ios::binary | ios::in | ios::out);
  fs.seekg(tunit.get_file_offset());
  for (size_t i = 0; i < fxn.size() - num_nops; ++i) {
    fs.put(fxn.get_buffer()[i]);
  }
  // Add no-ops so that we don't write garbage and confuse
  // the disassembler.  See #452.
  for (size_t i = fxn.size() - num_nops; i < size; ++i) {
    fs.put(0x90);
  }
  return true;
}

uint64_t time() {
  return duration_cast<nanoseconds>(
           system_clock::now().time_since_epoch()
         ).count();
}

uint64_t _last_time = 0;
void timing(const string& what = "start") {
  if (what != "start") {
    double ms = ((double)time() - _last_time) / 1000000.0;
    cout << ":: ";
    cout << right << fixed << setprecision(3) << setfill(' ') << setw(8) << ms;
    cout << " ms for " << what << endl;
  }
  _last_time = time();
}

uint64_t real(string& bin) {
  auto start = time();
  const string cmd = bin + " rogers 10000";
  auto res = system(cmd.c_str());
  if (res) {
    cout << res << endl;
  }
  return time() - start;
}

int main(int argc, char** argv) {

  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);

  Cfg empty({}, RegSet::empty(), RegSet::empty());
  SeedGadget seed;
  TrainingSetGadget train_tcs(seed);
  SandboxGadget training_sb(train_tcs, {});
  PerformanceSetGadget perf_tcs(seed);
  SandboxGadget perf_sb(perf_tcs, {});
  ExprCost fxn_realtime = *CostFunctionGadget::build_fxn("realtime", "0", empty, &training_sb, &perf_sb);
  ExprCost fxn_latency = *CostFunctionGadget::build_fxn("latency", "0", empty, &training_sb, &perf_sb);

  string path = "/home/sheule/dev/nibble/data/rogers-realtime-1000000-105/intermediates/result-1.s";
  string bin = "/home/sheule/dev/nibble/a.out";

  timing();

  auto read = [](istringstream& iss, const string& what) {
    if (iss.peek() == ' ') iss.ignore();
    iss.ignore(what.length() + 1);
    int a;
    if (!(iss >> a)) {
      cout << "Failed parsing for " << what << endl;
      exit(1);
    }
    return a;
  };

  ifstream infile("/home/sheule/dev/nibble/parout/costfun/realtime/func/rogers/id/105/iters/1000000/stdout");
  string line;
  while (getline(infile, line)) {
    if (is_prefix(line, "cost=")) {
      istringstream iss(line);
      auto cost = read(iss, "cost");
      auto iteration = read(iss, "iteration");
      auto id = read(iss, "id");
      auto timestamp = read(iss, "timestamp_ms");

      TUnit code;
      ifstream ifs("/home/sheule/dev/nibble/data/rogers-realtime-1000000-105/intermediates/result-" + to_string(id) + ".s");
      ifs >> code;
      Cfg cfg(code, RegSet::empty(), RegSet::empty());

      if (replace(bin, code)) {
        real(bin);
        fxn_realtime(cfg, max_cost_arg.value());
        fxn_latency(cfg, max_cost_arg.value());
      }

      timing("one");
    }
  }

  return 0;
}
