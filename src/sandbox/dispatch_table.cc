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

#include "src/sandbox/dispatch_table.h"
#include "src/sandbox/sandbox.h"

using namespace std;
using namespace x64asm;

namespace stoke {

DispatchTable::DispatchTable() {
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    const auto opc = (Opcode)i;
    const auto instr = Instruction(opc);

    if (!Sandbox::is_supported(instr)) {
      table_[i] = SIGILL_;
    } else if (instr.is_label_defn()) {
      table_[i] = LABEL_DEFN;
    } else if (instr.is_any_jump()) {
      table_[i] = ANY_JUMP;
    } else if (instr.get_opcode() == x64asm::CALL_LABEL) {
      table_[i] = CALL_LABEL;
    } else if (instr.get_opcode() == x64asm::RET) {
      table_[i] = RET;
    } else if (instr.is_explicit_memory_dereference()) {
      if (instr.is_div() || instr.is_idiv()) {
        table_[i] = MEM_DIV;
      } else if (instr.is_push()) {
        table_[i] = MEM_PUSH;
      } else if (instr.is_pop()) {
        table_[i] = MEM_POP;
      } else if (instr.is_any_bt()) {
        table_[i] - MEM_BT;
      } else {
        table_[i] = MEM_INSTR;
      }
    } else if (instr.is_implicit_memory_dereference()) {
      if (instr.is_push()) {
        table_[i] = PUSH;
      } else if (instr.is_pushf()) {
        table_[i] = PUSHF;
      } else if (instr.is_pop()) {
        table_[i] = POP;
      } else if (instr.is_popf()) {
        table_[i] = POPF;
      } else if (instr.is_leave()) {
        table_[i] = LEAVE;
      } else {
        table_[i] = SIGILL_;
      }
    } else {
      if (instr.is_div() || instr.is_idiv()) {
        table_[i] = REG_DIV;
      } else if (instr.get_opcode() == UD2) {
        table_[i] = SIGILL_;
      } else {
        table_[i] = INSTR;
      }
    }
  }
}

} // namespace stoke
