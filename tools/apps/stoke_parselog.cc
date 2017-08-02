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

#include <iostream>
#include <regex>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "tools/args/cost.inc"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/cfg.h"
#include "tools/gadgets/testcases.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& logfile_arg = ValueArg<string>::create("log")
                    .usage("<path/to/file.s>")
                    .description("Path to log file");

void parse_function(std::istream& s, TUnit& func) {
  stringstream ss;
  std::string line;
  while (std::getline(s, line)) {
    if (line == "#eof")
      break;
    else
      ss << line << "\n";
  }
  ss >> func;
}
int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  CpuStates testcases;
  TUnit parse_target{};

  std::ifstream logfile{logfile_arg.value()};

  std::string line;
  while (std::getline(logfile, line)) {
    if (line == "target:") {
      parse_function(logfile, parse_target);
    }
    if (line == "tests:") {
      testcases.read_bin(logfile);
      break;
    }

  }

  std::vector<TUnit> aux_fxns;
  CfgGadget target(parse_target, aux_fxns, false);
  SandboxGadget training_sb(testcases, aux_fxns);
  SandboxGadget perf_sb(testcases, aux_fxns);
  CostFunctionGadget fxn(target, &training_sb, &perf_sb, true);

  //std::cout << "Have " << testcases.size() << " tests\nTarget:\n";
  //std::cout << target.get_code() << std::endl;
  auto code_to_string = [](x64asm::Code code) {
    stringstream ss;
    ss << code;
    auto res = regex_replace(ss.str(), regex("\n"), "\\n");
    return res;
  };

  while (std::getline(logfile, line)) {
    if (line == "") continue;
    size_t iter, cost;
    if (sscanf(line.c_str(), "state %zd,%zd", &iter, &cost) == 2) {
      //std::cout << iter << " cost: " << cost << "\n";
      TUnit parse_rewrite{};
      parse_function(logfile, parse_rewrite);
      //std::cout << rewrite.get_code() << std::endl;
      std::cout << "{\"iter\":" << iter <<",";
      std::cout << "\"cost\":" << cost <<",";
      std::cout << "\"target\":\"" << code_to_string(parse_target.get_code()) <<"\",";
      std::cout << "\"rewrite\":\"" << code_to_string(parse_rewrite.get_code()) <<"\"}\n";
      CfgGadget rewrite{parse_rewrite, aux_fxns, false};
      Cost calc_cost = fxn(rewrite, 10000000).second;
      if (cost != calc_cost) {
        std::cout << "Costs do not match!  " << cost << "!=" << calc_cost << "\n";
        std::cout << iter << " cost: " << cost << "\n";
        std::cout << target.get_code() << std::endl;
        std::cout << rewrite.get_code() << std::endl;
        exit(1);
      }
    }
  }

  return 0;
}
