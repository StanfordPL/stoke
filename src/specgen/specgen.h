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

#include "src/ext/x64asm/src/type.h"
#include "src/ext/x64asm/src/operand.h"
#include "src/ext/x64asm/src/instruction.h"

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

SupportedReason is_supported_type_reason(x64asm::Type t);
/** Can specgen currently handle this x64asm::Type? */
bool is_supported_type(x64asm::Type t);
x64asm::Operand get_next_operand(x64asm::Type t, uint8_t imm8_val);
x64asm::Instruction get_instruction(x64asm::Opcode opc, uint8_t imm8_val = 0);

} // namespace stoke

#endif
