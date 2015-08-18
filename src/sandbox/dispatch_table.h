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

#ifndef STOKE_SRC_SANDBOX_DISPATCH_TABLE_H
#define STOKE_SRC_SANDBOX_DISPATCH_TABLE_H

#include <array>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

// This class addresses a performance issue that appears in the stoke sandbox.
// As support for instructions has grown, the time spent in emit_instruction()
// dispatching to various handlers has increased. This class builds a static lookup
// table that turns a chain of if/else if/s into a switch statement.

class DispatchTable {
public:
  enum Entry {
    SIGILL_ = 0,
    LABEL_DEFN,
    NOP,
    ANY_JUMP,
    CALL_LABEL,
    RET,
    MEM_DIV,
    MEM_PUSH,
    MEM_POP,
    MEM_BT,
    MEM_INSTR,
    PUSH,
    PUSHF,
    POP,
    POPF,
    LEAVE,
    REG_DIV,
    INSTR
  };

  DispatchTable();

  Entry lookup(const x64asm::Instruction& instr) const {
    const auto idx = (size_t)instr.get_opcode();
    assert(idx < X64ASM_NUM_OPCODES);
    return table_[idx];
  }

private:
  std::array<Entry, X64ASM_NUM_OPCODES> table_;
};

} // namespace stoke

#endif
