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
#include <regex>

#include "src/specgen/specgen.h"

using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace cpputil;

namespace stoke {

SupportedReason is_supported_type_reason(x64asm::Type t) {
  switch (t) {
  case x64asm::Type::NONE:
    std::cout << "NONE should not occur!" << std::endl;
    exit(1);
  case x64asm::Type::M_8:
  case x64asm::Type::M_16:
  case x64asm::Type::M_32:
  case x64asm::Type::M_64:
  case x64asm::Type::M_128:
  case x64asm::Type::M_256:
  case x64asm::Type::M_16_INT:
  case x64asm::Type::M_32_INT:
  case x64asm::Type::M_64_INT:
  case x64asm::Type::M_32_FP:
  case x64asm::Type::M_64_FP:
  case x64asm::Type::M_80_FP:
  case x64asm::Type::M_80_BCD:
  case x64asm::Type::M_2_BYTE:
  case x64asm::Type::M_28_BYTE:
  case x64asm::Type::M_108_BYTE:
  case x64asm::Type::M_512_BYTE:
    return SupportedReason::MEMORY;
  case x64asm::Type::IMM_8:
  case x64asm::Type::IMM_16:
  case x64asm::Type::IMM_32:
  case x64asm::Type::IMM_64:
    return SupportedReason::IMMEDIATE;
  case x64asm::Type::LABEL:
    return SupportedReason::LABEL;
  case x64asm::Type::RH:
  case x64asm::Type::R_8:
  case x64asm::Type::R_16:
  case x64asm::Type::R_32:
  case x64asm::Type::R_64:
  case x64asm::Type::XMM:
  case x64asm::Type::YMM:
    return SupportedReason::SUPPORTED;
  case x64asm::Type::MM:
    return SupportedReason::MM;

  case x64asm::Type::ZERO:
  case x64asm::Type::ONE:
  case x64asm::Type::THREE:
    return SupportedReason::SUPPORTED;
  case x64asm::Type::AL:
  case x64asm::Type::CL:
  case x64asm::Type::AX:
  case x64asm::Type::DX:
  case x64asm::Type::EAX:
  case x64asm::Type::RAX:
  case x64asm::Type::XMM_0:
    return SupportedReason::SUPPORTED;
  case x64asm::Type::HINT:
  case x64asm::Type::FAR_PTR_16_16:
  case x64asm::Type::FAR_PTR_16_32:
  case x64asm::Type::FAR_PTR_16_64:
  case x64asm::Type::PREF_66:
  case x64asm::Type::PREF_REX_W:
  case x64asm::Type::FAR:
  case x64asm::Type::MOFFS_8:
  case x64asm::Type::MOFFS_16:
  case x64asm::Type::MOFFS_32:
  case x64asm::Type::MOFFS_64:
  case x64asm::Type::REL_8:
  case x64asm::Type::REL_32:
  case x64asm::Type::SREG:
  case x64asm::Type::FS:
  case x64asm::Type::GS:
  case x64asm::Type::ST:
  case x64asm::Type::ST_0:
    return SupportedReason::OTHER;
  default:
    assert(false);
    return SupportedReason::OTHER;
  }
}

/** Can specgen currently handle this x64asm::Type? */
bool is_supported_type(x64asm::Type t) {
  return is_supported_type_reason(t) == SupportedReason::SUPPORTED;
}


std::map<x64asm::Type, std::vector<x64asm::Operand>> operands_ = {
  {x64asm::Type::RH, {x64asm::Constants::ah(), x64asm::Constants::bh(), x64asm::Constants::ch(), x64asm::Constants::dh()}},
  {x64asm::Type::R_8, {x64asm::Constants::bl(), x64asm::Constants::cl(), x64asm::Constants::dl()}},
  {x64asm::Type::R_16, {x64asm::Constants::bx(), x64asm::Constants::cx(), x64asm::Constants::dx()}},
  {x64asm::Type::R_32, {x64asm::Constants::ebx(), x64asm::Constants::ecx(), x64asm::Constants::edx()}},
  {x64asm::Type::R_64, {x64asm::Constants::rbx(), x64asm::Constants::rcx(), x64asm::Constants::rdx()}},
  {x64asm::Type::XMM, {x64asm::Constants::xmm1(), x64asm::Constants::xmm2(), x64asm::Constants::xmm3(), x64asm::Constants::xmm4()}},
  {x64asm::Type::YMM, {x64asm::Constants::ymm1(), x64asm::Constants::ymm2(), x64asm::Constants::ymm3(), x64asm::Constants::ymm4()}},
  {x64asm::Type::MM, {x64asm::Constants::mm0(), x64asm::Constants::mm1(), x64asm::Constants::mm2(), x64asm::Constants::mm3()}}
};
std::map<x64asm::Type, int> operands_idx_ = {
};
x64asm::Operand get_next_operand(x64asm::Type t, uint8_t imm8_val) {
  if (t == x64asm::Type::IMM_8) {
    return x64asm::Imm8(imm8_val);
  }
  if (t == x64asm::Type::IMM_64) {
    return x64asm::Imm64(0);
  }
  if (t == x64asm::Type::AL) {
    return x64asm::Constants::al();
  }
  if (t == x64asm::Type::CL) {
    return x64asm::Constants::cl();
  }
  if (t == x64asm::Type::AX) {
    return x64asm::Constants::ax();
  }
  if (t == x64asm::Type::DX) {
    return x64asm::Constants::dx();
  }
  if (t == x64asm::Type::EAX) {
    return x64asm::Constants::eax();
  }
  if (t == x64asm::Type::RAX) {
    return x64asm::Constants::rax();
  }
  if (t == x64asm::Type::XMM_0) {
    return x64asm::Constants::xmm0();
  }
  if (t == x64asm::Type::ZERO) {
    return x64asm::Constants::zero();
  }
  if (t == x64asm::Type::ONE) {
    return x64asm::Constants::one();
  }
  if (t == x64asm::Type::THREE) {
    return x64asm::Constants::three();
  }
  if (operands_.find(t) == operands_.end()) {
    std::cout << "ERROR: unsupported operand: " << t << std::endl;
    exit(1);
  }
  if (operands_idx_.find(t) == operands_idx_.end()) {
    operands_idx_[t] = 0;
  }
  std::vector<x64asm::Operand> candidates = operands_[t];
  assert((int)operands_[t].size() > operands_idx_[t]);
  operands_idx_[t] += 1;
  // increment other counters, too, so that we don't reuse the same register id multiple times
  if (t == x64asm::Type::R_64) {
    if (operands_idx_.find(x64asm::Type::R_8) == operands_idx_.end())
      operands_idx_[x64asm::Type::R_8] = 0;
    operands_idx_[x64asm::Type::R_8] += 1;
    if (operands_idx_.find(x64asm::Type::R_16) == operands_idx_.end())
      operands_idx_[x64asm::Type::R_16] = 0;
    operands_idx_[x64asm::Type::R_16] += 1;
    if (operands_idx_.find(x64asm::Type::R_32) == operands_idx_.end())
      operands_idx_[x64asm::Type::R_32] = 0;
    operands_idx_[x64asm::Type::R_32] += 1;
  }
  if (t == x64asm::Type::R_32) {
    if (operands_idx_.find(x64asm::Type::R_8) == operands_idx_.end())
      operands_idx_[x64asm::Type::R_8] = 0;
    operands_idx_[x64asm::Type::R_8] += 1;
    if (operands_idx_.find(x64asm::Type::R_16) == operands_idx_.end())
      operands_idx_[x64asm::Type::R_16] = 0;
    operands_idx_[x64asm::Type::R_16] += 1;
  }
  if (t == x64asm::Type::R_16) {
    if (operands_idx_.find(x64asm::Type::R_8) == operands_idx_.end())
      operands_idx_[x64asm::Type::R_8] = 0;
    operands_idx_[x64asm::Type::R_8] += 1;
  }
  if (t == x64asm::Type::YMM) {
    if (operands_idx_.find(x64asm::Type::XMM) == operands_idx_.end())
      operands_idx_[x64asm::Type::XMM] = 0;
    operands_idx_[x64asm::Type::XMM] += 1;
  }
  return operands_[t][operands_idx_[t] - 1];
}

x64asm::Instruction get_instruction(x64asm::Opcode opc, uint8_t imm8_val) {
  operands_idx_ = {};
  x64asm::Instruction instr(opc);

  // special case for shld/shrd (versions with cl register)
  if (opc == SHLD_R16_R16_CL) {
    instr.set_operand(0, Constants::bx());
    instr.set_operand(1, Constants::dx());
    instr.set_operand(2, Constants::cl());
  } else if (opc == SHLD_R32_R32_CL) {
    instr.set_operand(0, Constants::ebx());
    instr.set_operand(1, Constants::edx());
    instr.set_operand(2, Constants::cl());
  } else if (opc == SHLD_R64_R64_CL) {
    instr.set_operand(0, Constants::rbx());
    instr.set_operand(1, Constants::rdx());
    instr.set_operand(2, Constants::cl());
  } else if (opc == SHRD_R16_R16_CL) {
    instr.set_operand(0, Constants::bx());
    instr.set_operand(1, Constants::dx());
    instr.set_operand(2, Constants::cl());
  } else if (opc == SHRD_R32_R32_CL) {
    instr.set_operand(0, Constants::ebx());
    instr.set_operand(1, Constants::edx());
    instr.set_operand(2, Constants::cl());
  } else if (opc == SHRD_R64_R64_CL) {
    instr.set_operand(0, Constants::rbx());
    instr.set_operand(1, Constants::rdx());
    instr.set_operand(2, Constants::cl());
  }

  // special case for mulb/divb/idivb/imulb
  else if (opc == IMUL_RH) {
    instr.set_operand(0, Constants::bh());
  } else if (opc == MUL_RH) {
    instr.set_operand(0, Constants::bh());
  } else if (opc == IDIV_RH) {
    instr.set_operand(0, Constants::bh());
  } else if (opc == DIV_RH) {
    instr.set_operand(0, Constants::bh());
  }

  // special case for cmpxchg with an RH register
  else if (opc == CMPXCHG_R8_RH) {
    instr.set_operand(0, Constants::cl());
    instr.set_operand(1, Constants::bh());
  } else if (opc == CMPXCHG_RH_RH) {
    instr.set_operand(0, Constants::bh());
    instr.set_operand(1, Constants::ch());
  } else if (opc == CMPXCHG_RH_R8) {
    instr.set_operand(0, Constants::bh());
    instr.set_operand(1, Constants::cl());
  }

  // special case for mulx
  else if (opc == MULX_R32_R32_R32) {
    instr.set_operand(0, Constants::eax());
    instr.set_operand(1, Constants::ebx());
    instr.set_operand(2, Constants::ecx());
  }
  else if (opc == MULX_R64_R64_R64) {
    instr.set_operand(0, Constants::rax());
    instr.set_operand(1, Constants::rbx());
    instr.set_operand(2, Constants::rcx());
  }

  // normal case
  else {
    for (size_t i = 0; i < instr.arity(); i++) {
      auto t = instr.type(i);
      if (is_supported_type(t) || is_supported_type_reason(t) == SupportedReason::MM || is_supported_type_reason(t) == SupportedReason::IMMEDIATE) {
        instr.set_operand(i, get_next_operand(t, imm8_val));
      } else {
        std::cout << "unsupported type: " << t << std::endl;
        std::cout << (int) opc << std::endl;
        std::cout << opc << std::endl;
        std::cout << instr << std::endl;
        exit(1);
      }
    }
  }

  if (!instr.check()) {
    std::cout << "instruction not valid:" << instr << std::endl;
    exit(1);
  }
  return instr;
}

template <typename T>
Operand choice(const T& input, default_random_engine& gen) {
  assert(input.size() > 0);
  return input[gen() % input.size()];
}

x64asm::Operand get_random_operand(x64asm::Type t, default_random_engine& gen) {
  switch (t) {
  case Type::IMM_8:
    return Imm8(gen() % (1ULL << 8));
  case Type::IMM_16:
    return Imm16(gen() % (1ULL << 16));
  case Type::IMM_32:
    return Imm32(gen() % (1ULL << 32));
  case Type::IMM_64:
    return Imm64(gen());
  case Type::RH:
    return choice(Constants::rhs(), gen);
  case Type::AL:
    return Constants::al();
  case Type::CL:
    return Constants::cl();
  case Type::R_8:
    return choice(Constants::r8s(), gen);
  case Type::AX:
    return Constants::ax();
  case Type::DX:
    return Constants::dx();
  case Type::R_16:
    return choice(Constants::r16s(), gen);
  case Type::EAX:
    return Constants::eax();
  case Type::R_32:
    return choice(Constants::r32s(), gen);
  case Type::RAX:
    return Constants::rax();
  case Type::R_64:
    return choice(Constants::r64s(), gen);
  case Type::XMM_0:
    return Constants::xmm0();
  case Type::XMM:
    return choice(Constants::xmms(), gen);
  case Type::YMM:
    return choice(Constants::ymms(), gen);
  case Type::REL_8:
  case Type::REL_32:
  case Type::FS:
  case Type::GS:
  case Type::SREG:
  case Type::ST_0:
  case Type::ST:
  case Type::ZERO:
  case Type::HINT:
  case Type::ONE:
  case Type::THREE:
  case Type::LABEL:
  case Type::M_8:
  case Type::M_16:
  case Type::M_32:
  case Type::M_64:
  case Type::M_128:
  case Type::M_256:
  case Type::M_16_INT:
  case Type::M_32_INT:
  case Type::M_64_INT:
  case Type::M_32_FP:
  case Type::M_64_FP:
  case Type::M_80_FP:
  case Type::M_80_BCD:
  case Type::M_2_BYTE:
  case Type::M_28_BYTE:
  case Type::M_108_BYTE:
  case Type::M_512_BYTE:
  case Type::FAR_PTR_16_16:
  case Type::FAR_PTR_16_32:
  case Type::FAR_PTR_16_64:
  case Type::MM:
  case Type::MOFFS_8:
  case Type::MOFFS_16:
  case Type::MOFFS_32:
  case Type::MOFFS_64:
  case Type::PREF_66:
  case Type::PREF_REX_W:
  case Type::FAR:
    cout << "unsupported type: " << t << endl;
    exit(1);
    break;

  default:
    assert(false);
  }
  return Imm8(0); // make the compiler happy
}

Instruction get_random_instruction_helper(x64asm::Opcode opc, default_random_engine& gen, int tries_left) {

  x64asm::Instruction instr(opc);

  for (size_t i = 0; i < instr.arity(); i++) {
    auto t = instr.type(i);
    instr.set_operand(i, get_random_operand(t, gen));
  }
  if (!instr.check()) {
    if (tries_left == 0) {
      std::cout << "no valid instruction found: " << instr << std::endl;
      exit(1);
    } else {
      return get_random_instruction_helper(opc, gen, tries_left-1);
    }
  }
  return instr; // make compiler happy
}

x64asm::Instruction get_random_instruction(x64asm::Opcode opc, default_random_engine& gen) {
  return get_random_instruction_helper(opc, gen, 200);
}

x64asm::Instruction get_instruction_from_string(std::string xopcode) {
  // parse opcode
  // we use opc_8 to indicate that we want to use 8 as the imm8 argument
  smatch result;
  regex reg("(.*?)(_([0-9]+))?");
  string opc_str;
  uint8_t num;
  if (regex_match(xopcode, result, reg)) {
    if (result[2] == "") {
      num = 0;
    } else {
      string t = result[3];
      num = stoi(t);
    }
    opc_str = result[1];
  } else {
    exit(3);
  }
  Opcode opc;
  stringstream ss(opc_str);
  ss >> opc;
  if (opc == LABEL_DEFN) {
    cerr << "ERROR: could not parse the extended opcoce: " << xopcode << endl;
    exit(1);
  }
  return get_instruction(opc, num);
}

} // namespace stoke
