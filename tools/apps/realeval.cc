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
#include "src/ext/cpputil/include/debug/stl_print.h"

#include "src/ext/x64asm/src/reg_set.h"
#include "src/cost/expr.h"

#include "tools/gadgets/cost_function.h"

#include "tools/args/cost.inc"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/testcases.h"
#include "tools/gadgets/target.h"


using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace chrono;

auto& io = Heading::create("I/O Options:");
// auto& output_binary = FlagArg::create("output_binary")
//                       .alternate("b")
//                       .description("Output the target in binary format.");

auto& path_arg = ValueArg<string>::create("path")
                 .usage("<path/to/dir>")
                 .required()
                 .description("Directory to collect data from");

auto& out_arg = ValueArg<string>::create("out")
                .usage("<path/to/file>")
                .required()
                .description("Path to store log at.");

auto& item_arg = ValueArg<string>::create("item")
                 .required()
                 .description("Item name");

bool is_prefix(const string& str, const string& prefix) {
  auto len = prefix.size();
  return str.length() >= len && str.substr(0,len) == prefix;
}

vector<string> explode(const string& str, const char& ch) {
  string next;
  vector<string> result;

  // For each character in the string
  for (string::const_iterator it = str.begin(); it != str.end(); it++) {
    // If we've hit the terminal character
    if (*it == ch) {
      // If we have some characters accumulated
      if (!next.empty()) {
        // Add them to the result vector
        result.push_back(next);
        next.clear();
      }
    } else {
      // Accumulate the next character into the sequence
      next += *it;
    }
  }
  if (!next.empty())
    result.push_back(next);
  return result;
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

pair<int, string> exec(const char* cmd) {
  char buffer[128];
  string result = "";
  FILE* pipe = popen(cmd, "r");
  if (!pipe) throw runtime_error("popen() failed!");
  try {
    while (!feof(pipe)) {
      if (fgets(buffer, 128, pipe) != NULL)
        result += buffer;
    }
  } catch (...) {
    pclose(pipe);
    throw;
  }
  int status = pclose(pipe) / 256;
  return pair<int, string>(status, result);
}

uint64_t real(string& bin) {
  auto start = time();
  const string cmd = "timeout 0.5s " + bin + " rogers 10000";
  auto res = exec(cmd.c_str());
  auto& output = res.second;
  if (res.first != 0) return -1;
  if (output.find("rogers                0") == string::npos) return -2;
  return time() - start;
}

vector<double> sample(function<double()>& f, int reps) {
  vector<double> xs;
  for (int i = 0; i < reps; i++) {
    auto res = f();
    xs.push_back(res);
    if (res < 0) {
      break;
    }
  }
  return xs;
}

pair<double, double> mean(vector<double> xs) {
  double sum = 0;
  double n = xs.size();
  for (auto& x : xs) {
    if (x < 0) return pair<double, double>(-1, -1);
    sum += x;
  }
  double mean = sum / n;
  double var = 0;
  var = 0;
  for (auto& x : xs) {
    var += (x - mean) * (x - mean);
  }
  var /= n;
  double sd = sqrt(var);
  return pair<double, double>(mean, sd);
}

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  TargetGadget target({}, false);
  SeedGadget seed;
  TrainingSetGadget train_tcs(seed);
  SandboxGadget training_sb(train_tcs, {});
  PerformanceSetGadget perf_tcs(seed);
  SandboxGadget perf_sb(perf_tcs, {});
  auto max_jumps = 1000000000;
  training_sb.set_max_jumps(max_jumps);
  perf_sb.set_max_jumps(max_jumps);
  ExprCost fxn_realtime = *CostFunctionGadget::build_fxn("realtime", "0", target, &training_sb, &perf_sb);
  ExprCost fxn_latency = *CostFunctionGadget::build_fxn("latency", "0", target, &training_sb, &perf_sb);

  string item = item_arg.value();
  auto items = explode(item, '-');
  auto item_fun = items[0];
  auto item_cfun = items[1];
  auto item_iters = items[2];
  auto item_id = items[3];
  string path = path_arg.value() + "/data/" + item;
  string bin = path + "/a.out";


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

  function<double()> reall = [&]() {
    return real(bin);
  };

  string logfile = path_arg.value() + "/parout/costfun/" + item_cfun + "/func/" + item_fun + "/id/" + item_id + "/iters/" + item_iters + "/stdout";
  ifstream infile(logfile);
  if (!infile.good()) {
    cout << "Logfile not found.  Exiting.." << endl;
    cout << logfile << endl;
    return 0;
  }
  string line;
  vector<string> lines;
  while (getline(infile, line)) {
    if (is_prefix(line, "cost=")) {
      lines.push_back(line);
    }
  }

  timing("reading file");
  random_shuffle(lines.begin(), lines.end());
  timing("shuffle");

  int count = 0;
  std::ofstream fout(out_arg.value());
  fout << fixed;
  for (auto& line : lines) {
    count += 1;
    if (count > 10000) break;
    istringstream iss(line);
    auto cost = read(iss, "cost");
    auto iteration = read(iss, "iteration");
    auto id = read(iss, "id");
    auto timestamp = read(iss, "timestamp_ms");

    TUnit code;
    string fpath = path + "/intermediates/result-" + to_string(id) + ".s";
    ifstream ifs(fpath);
    ifs >> code;
    Cfg cfg(code, RegSet::empty(), RegSet::empty());

    if (replace(bin, code)) {
      function<double()> realtimel = [&]() {
        return fxn_realtime(cfg, max_cost_arg.value()).second;
      };
      function<double()> latencyl = [&]() {
        return fxn_latency(cfg, max_cost_arg.value()).second;
      };
      auto t_realtime = mean(sample(realtimel, 5));
      auto t_real = mean(sample(reall, 5));
      auto t_lat = latencyl();
      fout << "intermediates/result-" + to_string(id) + ".s";
      fout << "," << item;
      fout << "," << cost;
      fout << "," << iteration;
      fout << "," << id;
      fout << "," << timestamp;
      fout << "," << t_real.first << "," << t_real.second;
      fout << "," << t_realtime.first << "," << t_realtime.second;
      fout << "," << t_lat;
      fout << endl;
    }
  }

  return 0;
}
