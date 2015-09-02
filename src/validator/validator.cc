// Copyright 2013-2015 Stanford University
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

  vector<string> att_opcodes = handler_.full_support_opcodes();

  for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    Opcode op = (Opcode)i;
    string att = Handler::att_[op];
    support_table_[i] = false;
    if(find(att_opcodes.begin(), att_opcodes.end(), att) == att_opcodes.end()) {
      continue;
    }
    auto instr = Instruction(op);
    size_t arity = instr.arity();
    bool args_ok = true;
    for(size_t i = 0; i < arity; ++i) {
      auto type = instr.type(i);
      switch(type) {
      case Type::IMM_8:
      case Type::IMM_16:
      case Type::IMM_32:
      case Type::IMM_64:
      case Type::ZERO:
      case Type::ONE:
      case Type::THREE:
      case Type::M_8:
      case Type::M_16:
      case Type::M_32:
      case Type::M_64:
      case Type::M_128:
      case Type::M_256:
      case Type::R_8:
      case Type::R_16:
      case Type::R_32:
      case Type::R_64:
      case Type::AL:
      case Type::CL:
      case Type::AX:
      case Type::DX:
      case Type::EAX:
      case Type::RAX:
      case Type::XMM:
      case Type::XMM_0:
      case Type::YMM:
        break;
      default:
        args_ok = false;
        break;
      }
    }
    if(args_ok)
      support_table_[i] = true;
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
  if(!handler_.regset_is_supported(target.def_ins())) {
    throw VALIDATOR_ERROR("Target def-in not supported.");
  }
  if(!handler_.regset_is_supported(target.live_outs())) {
    throw VALIDATOR_ERROR("Target live-out not supported.");
  }

  // Check that all the instructions are supported in target/rewrite
  for(size_t i = 0; i < 2; ++i) {
    auto& cfg = i ? target : rewrite;
    for(auto instr : cfg.get_code()) {
      if(instr.is_label_defn() || instr.is_any_jump() || instr.is_ret()) {
        continue;
      }
      else if(!is_supported(instr)) {
        stringstream ss;
        ss << "Instruction " << instr << " is unsupported.";
        throw VALIDATOR_ERROR(ss.str());
      }
    }
  }

}







