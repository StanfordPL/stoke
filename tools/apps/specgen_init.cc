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
#include <algorithm>
#include <random>
#include <string>
#include <vector>
#include <streambuf>
#include <regex>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "tools/io/opc_set.h"

#include "src/search/search.h"
#include "src/validator/validator.h"
#include "src/solver/z3solver.h"

#include "src/specgen/specgen.h"
#include "src/specgen/support.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace boost;

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

auto& imm_block = ValueArg<size_t>::create("imm_block")
                  .usage("<int>")
                  .default_val(0)
                  .description("Imm instructions can be learned in blocks.  This is the block number to learn (between 0 to num_imm_block-1).");
auto& num_imm_block = ValueArg<size_t>::create("num_imm_blocks")
                  .usage("<int>")
                  .default_val(1)
                  .description("Total number of blocks");

void create_file(string name) {
  ofstream file;
  file.open(name);
  file.close();
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  bool quiet = quiet_arg.value();

  auto workdir = workdir_arg.value();
  auto configdir = workdir + "/information";
  boost::filesystem::path config_path(configdir);
  boost::filesystem::create_directories(config_path);

  ofstream f_goal;
  string goal_path = configdir + "/initial_goal.instrs";
  f_goal.open(goal_path);
  ofstream f_goal2;
  f_goal2.open(configdir + "/potential_goal.instrs");
  ofstream f_all;
  f_all.open(configdir + "/all.instrs");

  ofstream f_base;
  string base_path = configdir + "/initial_base.instrs";
  f_base.open(base_path);

  vector<Opcode> imm8_baseset;
  if (only_imm_arg || only_mm_arg) {
    filesystem::directory_iterator itr("resources/imm8_baseset"), eod;
    for (; itr != eod; ++itr) {
      auto file = *itr;
      if (is_regular_file(file)) {
        auto filename = file.path().filename().string();
        Opcode op;
        stringstream(filename.substr(0, filename.size()-2)) >> op;
        imm8_baseset.push_back(op);
      }
    }
  }

  int n_funcs = std::distance(boost::filesystem::directory_iterator(workdir + "/functions"), boost::filesystem::directory_iterator());

  int total = 0;
  int memory = 0;
  int immediate = 0;
  int goal = 0;
  int duplicates = 0;
  int crypto = 0;
  int jump = 0;
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
  int counter = 0;
  for (auto i = (int)LABEL_DEFN + 1, ie = (int)XTEST; i != ie; ++i) {
    total++;
    auto op = (Opcode) i;
    auto is_goal = true;
    stringstream ss;
    ss << op;
    string op_s = ss.str();

    f_all << op << endl;

    // if (instr.maybe_read_set() == RegSet::empty()) {
    //   cout << instr.get_opcode() << endl;
    // }

    if (specgen_is_crypto(op)) {
      crypto++;
      is_goal = false;
    } else if (specgen_is_jump(op)) {
      jump++;
      is_goal = false;
    } else if (specgen_is_system(op)) {
      sys++;
      is_goal = false;
    } else if (specgen_is_float(op)) {
      x87++;
      is_goal = false;
    } else if (specgen_is_duplicate(op)) {
      duplicates++;
      is_goal = false;
    }
    if (specgen_is_base(op) && !allow_all_arg) {
      base++;
      is_goal = false;
      Instruction our = get_instruction(op);
      if (!validator.is_supported(our)) {
        cout << "Unsupported instruction: " << op << endl;
        base_and_no_validator_support++;
      }
      f_base << op << endl;
    }
    if (is_goal && specgen_is_sandbox_unsupported(op)) {
      unsupported++;
      is_goal = false;
    }
    bool may_be_goal = is_goal;
    auto is_mm = false;
    auto is_imm8 = false;
    if (only_imm_arg) {
      is_imm8 = specgen_is_imm8(op);
    }
    if (may_be_goal) {
      f_goal2 << op << endl;

      if (specgen_is_mm(op) && (!only_mm_arg || (!specgen_uses_memory(op) && !specgen_uses_imm(op)))) {
        mm++;
        is_mm = true;
        is_goal = false;
      } else if (specgen_uses_memory(op)) {
        memory++;
        is_goal = false;
      } else if (specgen_uses_imm(op)) {
        immediate++;
        is_goal = false;
      }
    }

    if (is_goal || (only_imm_arg && is_imm8) || (only_mm_arg && is_mm)) {
      if (!only_mm_arg && !only_imm_arg && !allow_all_arg) {
        f_goal << op << endl;
        goal++;
        Instruction our = get_instruction(op);
        if (validator.is_supported(our)) {
          validator_support++;
        }
      } else if (only_imm_arg) {
        if (is_imm8) {
          counter += 1;
          if (num_imm_block != 1) {
            if (counter % num_imm_block != imm_block) {
              continue;
            }
          }
          if (imm_count < 256) {
            set<uint8_t> vals;
            while (vals.size() < imm_count) {
              vals.insert(distribution(mt));
            }
            for (auto v : vals) {
              f_goal << op << "_" << (int)v << endl;
            }
          } else {
            for (int v = 0; v < 256; v++) {
              f_goal << op << "_" << v << endl;
            }
          }
          goal++;
        } else {
          if (find(imm8_baseset.begin(), imm8_baseset.end(), op) != imm8_baseset.end()) {
            base++;
            f_base << op << endl;
          }
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
          if (find(imm8_baseset.begin(), imm8_baseset.end(), op) != imm8_baseset.end()) {
            base++;
            f_base << op << endl;
          }
        }
      }
    }
  }

  if (base_and_no_validator_support > 0) {
    cout << "Some base instructions are not supported!" << endl;
    return 1;
  }

  if (!quiet) {
    cout << "Total instructions:                       " << total << endl;
    cout << "System instructions:                      " << sys << endl;
    cout << "Crypto instructions:                      " << crypto << endl;
    cout << "x87 instructions:                         " << x87 << endl;
    cout << "unsupported by sandbox:                   " << unsupported << endl;
    cout << "jump instructions                         " << jump << endl;
    cout << "mm operand                                " << mm << endl;
    cout << "-----------------------------------------------" << endl;
    cout << "Base instructions:                        " << base << endl;
    cout << "  Supported by validator:                 " << (base-base_and_no_validator_support) << endl;
    cout << "Total pseudo instructions:                " << n_funcs << endl;
    cout << "-----------------------------------------------" << endl;
    cout << "Remaining instructions:                   " << (total - mm - unsupported - jump - sys - crypto - x87 - base) << endl;
    cout << "Reasons why we ignore some of those:" << endl;
    cout << "  duplicate instructions (*_1)            " << duplicates << endl;
    cout << "  Memory operand:                         " << memory << endl;
    cout << "  Immediate operand:                      " << immediate << endl;
    cout << "  Label operand:                          " << label << endl;
    cout << "  Hard-coded register:                    " << hardreg << endl;
    cout << "  Other/unknown operand:                  " << other << endl;
    cout << "-----------------------------------------------" << endl;
    cout << "Goal instructions:                        " << goal << endl;
    cout << "  Supported by validator:                 " << validator_support;
    cout << " (" << std::setprecision(3) << (100.0 * ((double)validator_support) / ((double)goal)) << "%)" << endl;
  }

  f_base.close();
  f_goal.close();
  f_all.close();

  // additional files
  create_file(configdir + "/partial_success.instrs");
  create_file(configdir + "/worklist.instrs");
  filesystem::copy_file(goal_path, configdir + "/remaining_goal.instrs");
  filesystem::copy_file(base_path, configdir + "/success.instrs");
}
