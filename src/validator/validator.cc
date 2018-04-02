// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <string>
#include <iostream>
#include <sstream>
#include <vector>
#include <map>
#include <list>
#include <cassert>
#include <initializer_list>

#include "src/state/cpu_state.h"
#include "src/symstate/bitvector.h"
#include "src/validator/validator.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;


bool Validator::is_supported(Instruction& i) const {

  return is_supported(i.get_opcode());
}

bool Validator::is_supported(const Opcode& op) const {
  return support_table_[(int)op];
}

void Validator::setup_support_table() {
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    support_table_[i] = false;
  }

  auto opcodes = checker_.get_filter().get_handler().full_support_opcodes();
  for (auto& op : opcodes) {
    support_table_[(int)op] = true;
  }
}

void Validator::sanity_checks(const Cfg& target, const Cfg& rewrite) const {
  // Check to make sure def-ins/live-outs agree
  if (target.def_ins() != rewrite.def_ins()) {
    throw VALIDATOR_ERROR("Def-ins of target/rewrite CFGs differ");
  }
  if (target.live_outs() != rewrite.live_outs()) {
    throw VALIDATOR_ERROR("Live-outs of target/rewrite CFGs differ");
  }
  // Check that the regsets are supported, throw an error otherwise
  auto& handler = checker_.get_filter().get_handler();
  if (!handler.regset_is_supported(target.def_ins())) {
    throw VALIDATOR_ERROR("Target def-in not supported.");
  }
  if (!handler.regset_is_supported(target.live_outs())) {
    throw VALIDATOR_ERROR("Target live-out not supported.");
  }

  // Check that all the instructions are supported in target/rewrite
  for (size_t i = 0; i < 2; ++i) {
    auto& cfg = i ? target : rewrite;
    for (auto instr : cfg.get_code()) {
      if (instr.is_label_defn() || instr.is_any_jump() || instr.is_ret()) {
        continue;
      }
      else if (!is_supported(instr)) {
        stringstream ss;
        ss << "Instruction " << instr << " is unsupported.";
        throw VALIDATOR_ERROR(ss.str());
      }
    }
  }

}

