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
#include <streambuf>

#include <boost/regex.hpp>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "tools/io/opc_set.h"

#include "src/search/search.h"
#include "src/validator/validator.h"
#include "src/solver/z3solver.h"

#include "tools/apps/base.h"
#include "tools/apps/specgen.h"
#include "tools/apps/support.h"

#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace boost;

set<Opcode> unsupported_ {{
#include "src/sandbox/tables/unsupported.h"
  }
};
bool is_supported(Opcode o) {
  return unsupported_.find(o) == unsupported_.end();
}

auto& io_opt = Heading::create("Main option:");

auto& workdir_arg = ValueArg<string>::create("workdir")
                    .usage("<path/to/dir>")
                    .description("Directory where to save the configuration")
                    .required();

auto& quiet_arg = FlagArg::create("quiet")
                  .alternate("q")
                  .description("Suppress output");

auto& only_mm_arg = FlagArg::create("only_mm")
                    .description("Only search for mm instructions");

auto& allow_all_arg = FlagArg::create("allow_all")
                      .description("Allow the use of all instructions (except the one we are searching for)");

auto& only_imm_arg = FlagArg::create("only_imm")
                     .description("Only search for imm8 instructions");
auto& imm_count = ValueArg<size_t>::create("imm_count")
                  .usage("<int>")
                  .default_val(10)
                  .description("How many random variants should be explored?");

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  bool quiet = quiet_arg.value();

  auto workdir = workdir_arg.value();
  auto configdir = workdir + "/config";
  boost::filesystem::path config_path(configdir);
  boost::filesystem::create_directories(config_path);

  ofstream f_goal;
  f_goal.open(configdir + "/goal.txt");
  ofstream f_goal2;
  f_goal2.open(configdir + "/potential_goal.txt");
  ofstream f_all;
  f_all.open(configdir + "/all.txt");

  ofstream f_base;
  f_base.open(configdir + "/base.txt");

  string imm8_data;
  if (only_imm_arg) {
    ifstream t(workdir + "/../imm8-data.txt");
    string tmp((istreambuf_iterator<char>(t)), istreambuf_iterator<char>());
    imm8_data = tmp;
  }

  int n_funcs = std::distance(boost::filesystem::directory_iterator(workdir + "/functions"), boost::filesystem::directory_iterator());

  int total = 0;
  int memory = 0;
  int immediate = 0;
  int goal = 0;
  int duplicates = 0;
  int crypto = 0;
  int x87 = 0;
  int sys = 0;
  int label = 0;
  int mm = 0;
  int base = 0;
  int other = 0;
  int hardreg = 0;
  int unsupported = 0;
  int validator_support = 0;
  int base_and_no_validator_support = 0;
  auto solver = new Z3Solver();
  auto validator = Validator(*solver);
  std::random_device rd;
  std::mt19937 mt(rd());
  std::uniform_int_distribution<uint8_t> distribution(0, 255);
  for (auto i = (int)LABEL_DEFN + 1, ie = (int)XTEST; i != ie; ++i) {
    total++;
    auto op = (Opcode) i;
    auto instr = Instruction(op);
    auto is_goal = true;
    stringstream ss;
    ss << op;
    string op_s = ss.str();

    f_all << op << endl;

    // if (instr.maybe_read_set() == RegSet::empty()) {
    //   cout << instr.get_opcode() << endl;
    // }

    if (find(instr_cat_duplicates_.begin(), instr_cat_duplicates_.end(), op) != instr_cat_duplicates_.end()) {
      duplicates++;
      is_goal = false;
    }
    if (find(instr_cat_crypto_.begin(), instr_cat_crypto_.end(), op) != instr_cat_crypto_.end()) {
      crypto++;
      is_goal = false;
    }
    if (find(instr_cat_system_.begin(), instr_cat_system_.end(), op) != instr_cat_system_.end()) {
      sys++;
      is_goal = false;
    }
    if (find(instr_cat_float_.begin(), instr_cat_float_.end(), op) != instr_cat_float_.end()) {
      x87++;
      is_goal = false;
    }
    if (find(instr_cat_base_.begin(), instr_cat_base_.end(), op) != instr_cat_base_.end() && !allow_all_arg) {
      base++;
      is_goal = false;
      bool could_be_inferred = true;
      for (size_t i = 0; i < instr.arity(); i++) {
        auto t = instr.type(i);
        if (!is_supported_type(t)) {
          could_be_inferred = false;
        }
      }
      if (could_be_inferred) {
        Instruction our = get_instruction(op);
        if (!validator.is_supported(our)) {
          base_and_no_validator_support++;
        }
      }
    }
    if (is_goal && !is_supported(op)) {
      unsupported++;
      is_goal = false;
    }
    bool may_be_goal = is_goal;
    auto is_mm = false;
    auto is_imm8 = false;
    if (only_imm_arg) {
      regex r(op_s + " [01]{8}");
      is_imm8 = regex_search(imm8_data, r);
    }
    if (may_be_goal) {
      f_goal2 << op << endl;
      for (size_t i = 0; i < instr.arity(); i++) {
        auto type = instr.type(i);
        auto supported = is_supported_type_reason(type);
        auto is_ok = false;
        switch (supported) {
        case SupportedReason::SUPPORTED:
          is_ok = true;
          break;

        case SupportedReason::MEMORY:
          memory++;
          break;

        case SupportedReason::IMMEDIATE:
          immediate++;
          break;

        case SupportedReason::LABEL:
          label++;
          break;

        case SupportedReason::MM:
          if (only_mm_arg) {
            is_ok = true;
          }
          is_mm = true;
          break;

        case SupportedReason::HARD_CODED_REG:
          hardreg++;
          break;

        case SupportedReason::OTHER:
          other++;
          break;
        }
        if (!is_ok) {
          is_goal = false;
          break;
        }
      }
    }
    if (is_mm) {
      mm++;
    }

    if (is_goal || (only_imm_arg && is_imm8)) {
      if (!only_mm_arg && !only_imm_arg && !allow_all_arg) {
        f_goal << op << endl;
        goal++;
        Instruction our = get_instruction(op);
        if (validator.is_supported(our)) {
          validator_support++;
        }
      } else if (only_imm_arg) {
        if (is_imm8) {
          set<uint8_t> vals;
          while (vals.size() < imm_count) {
            vals.insert(distribution(mt));
          }
          for (auto v : vals) {
            f_goal << op << "_" << (int)v << endl;
          }
          goal++;
        } else {
          base++;
          f_base << op << endl; // we add everything else to the baseset
        }
      } else if (allow_all_arg) {
        // add everything to the goal and base
        f_goal << op << endl;
        f_base << op << endl;
        goal++;
        base++;
        // set up avoid directories
        boost::filesystem::path avoid(workdir + "/avoid/" + op_s);
        boost::filesystem::create_directories(avoid);
      } else {
        if (is_mm) {
          f_goal << op << endl;
          goal++;
        } else {
          base++;
          f_base << op << endl; // we add everything else to the baseset
        }
      }
    }
  }

  if (!quiet) {
    cout << "Total instructions:                       " << total << endl;
    cout << "System instructions:                      " << sys << endl;
    cout << "Crypto instructions:                      " << crypto << endl;
    cout << "x87 instructions:                         " << x87 << endl;
    cout << "unsupported by sandbox:                   " << unsupported << endl;
    cout << "duplicate instructions (*_1)              " << duplicates << endl;
    cout << "-----------------------------------------------" << endl;
    cout << "Base instructions:                        " << base << endl;
    cout << "  Supported by validator:                 " << (base-base_and_no_validator_support) << endl;
    cout << "Total pseudo instructions:                " << n_funcs << endl;
    cout << "-----------------------------------------------" << endl;
    cout << "Remaining instructions:                   " << (total - sys - crypto - x87 - base) << endl;
    cout << "Reasons why we ignore some of those:" << endl;
    cout << "  Memory operand:                         " << memory << endl;
    cout << "  Immediate operand:                      " << immediate << endl;
    cout << "  Label operand:                          " << label << endl;
    cout << "  mm operand:                             " << mm << endl;
    cout << "  Hard-coded register:                    " << hardreg << endl;
    cout << "  Other/unknown operand:                  " << other << endl;
    cout << "-----------------------------------------------" << endl;
    cout << "Goal instructions:                        " << goal << endl;
    cout << "  Supported by validator:                 " << validator_support;
    cout << " (" << std::setprecision(3) << (100.0 * ((double)validator_support) / ((double)goal)) << "%)" << endl;
  }

  if (!allow_all_arg) {
    for(auto it = instr_cat_base_.begin(); it != instr_cat_base_.end(); ++it) {
      f_base << (*it) << endl;
    }
  }
  f_base.close();
  f_goal.close();
  f_all.close();
}
