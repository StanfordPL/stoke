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

#ifndef STOKE_TOOLS_APPS_SPECGEN_H
#define STOKE_TOOLS_APPS_SPECGEN_H

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>


namespace stoke {

enum class SupportedReason {
  SUPPORTED,
  MEMORY,
  IMMEDIATE,
  LABEL,
  MM,
  HARD_CODED_REG,
  OTHER
};

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
x64asm::Operand get_next_operand(x64asm::Type t, uint8_t imm8_val = 0) {
  if (t == x64asm::Type::IMM_8) {
    return x64asm::Imm8(imm8_val);
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
    std::cout << "ERROR: unsupported operand: " << (int)t << std::endl;
    exit(1);
  }
  if (operands_idx_.find(t) == operands_idx_.end()) {
    operands_idx_[t] = 0;
  }
  std::vector<x64asm::Operand> candidates = operands_[t];
  assert((int)operands_[t].size() > operands_idx_[t]);
  operands_idx_[t] += 1;
  return operands_[t][operands_idx_[t] - 1];
}

x64asm::Instruction get_instruction(x64asm::Opcode opc, uint8_t imm8_val = 0) {
  operands_idx_ = {};
  x64asm::Instruction instr(opc);
  for (size_t i = 0; i < instr.arity(); i++) {
    auto t = instr.type(i);
    if (is_supported_type(t) || is_supported_type_reason(t) == SupportedReason::MM || is_supported_type_reason(t) == SupportedReason::IMMEDIATE) {
      instr.set_operand(i, get_next_operand(t, imm8_val));
    } else {
      std::cout << "unsupported type: " << (int) t << std::endl;
      std::cout << (int) opc << std::endl;
      std::cout << opc << std::endl;
      std::cout << instr << std::endl;
      exit(1);
    }
  }
  if (!instr.check()) {
    std::cout << "instruction not valid:" << instr << std::endl;
    exit(1);
  }
  return instr;
}


} // namespace stoke

#endif
