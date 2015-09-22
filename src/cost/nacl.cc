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

#include <unordered_set>

#include "src/cost/nacl.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

//#define DEBUG_NACL_COST 1

namespace stoke {

bool nacl_ok_index(Opcode op) {

  switch (op) {
  case MOV_R32_IMM32:
  case MOV_R32_IMM32_1:
  case MOV_R32_M32:
  case MOV_R32_R32:
  case MOV_R32_R32_1:

  case ADD_R32_IMM32:
  case ADD_R32_IMM8:
  case ADD_R32_M32:
  case ADD_R32_R32:
  case ADD_R32_R32_1:

  case AND_R32_IMM32:
  case AND_R32_IMM8:
  case AND_R32_M32:
  case AND_R32_R32:
  case AND_R32_R32_1:

  case IMUL_R32_M32:
  case IMUL_R32_M32_IMM32:
  case IMUL_R32_M32_IMM8:
  case IMUL_R32_R32:
  case IMUL_R32_R32_IMM32:
  case IMUL_R32_R32_IMM8:

  case INC_R32:

  case LEA_R32_M16:
  case LEA_R32_M32:
  case LEA_R32_M64:

  case NEG_R32:

  case NOT_R32:

  case OR_R32_IMM32:
  case OR_R32_IMM8:
  case OR_R32_M32:
  case OR_R32_R32:
  case OR_R32_R32_1:

  case SUB_R32_IMM32:
  case SUB_R32_IMM8:
  case SUB_R32_M32:
  case SUB_R32_R32:
  case SUB_R32_R32_1:

  case XOR_R32_IMM32:
  case XOR_R32_IMM8:
  case XOR_R32_M32:
  case XOR_R32_R32:
  case XOR_R32_R32_1:

    return true;

  default:
    return false;
  }

}

/** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
  result would equal or exceed that value. */
NaClCost::result_type NaClCost::operator()(const Cfg& cfg, const Cost max) {

  Cost score = 0;

  const auto& code = cfg.get_code();
  map<size_t, uint64_t> restricted_registers;

  // 1. instructions not allowed
  for (size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];

    // LEA with addr override (32-bit arguments) isn't allowed.
    if (instr.is_lea()) {
      M8 mem = instr.get_operand<M8>(1);
      if (mem.addr_or()) {
        score++;
      }
    }
  }


  // 2. no instructions may cross 32-bit boundaries
  // (also, when we do this, identify restricted registers and populate
  //  the map.  It holds 0 if there are no restricted registers, and holds
  //  r+1 if register r is restricted) (DONE)

  map<uint64_t, uint64_t> label_align_score;
  size_t rip_offset = cfg.get_function().get_rip_offset();
  buffer_.reserve(code.size()*32);
  assm_.start(buffer_);
  for (size_t i = 0; i < code.size(); ++i) {

    auto instr = code[i];
    size_t start = (buffer_.size() + rip_offset) & 0x1f;
    assm_.assemble(instr);
    if (instr.get_opcode() == RET) {
      // RET gets translated into a 12-byte return sequence.
      // so we need to emit 11 more bytes to get the count right.
      auto nop = Instruction(NOP);
      for (size_t i = 0; i < 11; ++i) {
        assm_.assemble(nop);
      }
    }
    size_t end = (buffer_.size() + rip_offset) & 0x1f;
#ifdef DEBUG_NACL_COST
    cout << start << "   " << instr << endl;
#endif

    // if the instruction does a validator-supported zero extend to 32-bit
    // register, and it is not at the end of the 32-byte bundle, then this
    // register is restricted in the next instruction
    Opcode opc = instr.get_opcode();
    if (end != 0 && nacl_ok_index(opc)) {
      restricted_registers[i+1] = (uint64_t)instr.get_operand<R32>(0) + 1;
#ifdef DEBUG_NACL_COST
      cout << "RESTRICTED REGISTER: " << (uint64_t)restricted_registers[i+1] << endl;
#endif
    }

    // we're in trouble if, looking at the lower 32 bits of the
    // start and end addresses, we see a wrap around, and the
    // lower 32 bits of 'end' are nonzero.
    if (start > end && end != 0) {
      score += end;
#ifdef DEBUG_NACL_COST
      cout << "LOST " << end << " BYTES.  TOTAL " << score << endl;
#endif
    }

    // record "score" for how well each label is aligned
    if (instr.is_label_defn()) {

      uint64_t score = start;
      if (32 - start < score)
        score = 32-start;

      auto label = instr.get_operand<Label>(0);
      label_align_score[(uint64_t)label] = score;
    }
  }

  // 3. no pseudo instructions may cross 32-bit boundaries (NO)
  // 4. call instructions must be 5 bytes before a 32-byte boundary (NO)
  // 5. jump/call targets must be 32-byte aligned (YEA)
  for (size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if (instr.is_any_jump()) {
      if (instr.is_any_indirect_jump()) {
        score++;
#ifdef DEBUG_NACL_COST
        std::cout << "indirect jumps not supported yet." << endl;
#endif
        assert(false);
      } else {
        auto label = instr.get_operand<Label>(0);
        score += label_align_score[(uint64_t)label];
#ifdef DEBUG_NACL_COST
        if (label_align_score[(uint64_t)label]) {
          cout << "jump target " << label << " misaligned by " << label_align_score[(uint64_t)label] << " bytes." << endl;
        }
#endif
      }
    }
  }


  // 6. all memory accesses must use rip, rbp, rsp or r15 as a base
  //    and a restricted register index (DONE)
  for (size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if (instr.is_explicit_memory_dereference()) {
      M8 mem = instr.get_operand<M8>(instr.mem_index());
      if (!mem.contains_base() && !mem.rip_offset()) {
        //no good; no base register
#ifdef DEBUG_NACL_COST
        cout << "USING MEMORY ACCESS WITHOUT BASE: " << instr << endl;
#endif
        score++;
      } else if (mem.get_base() != r15 && mem.get_base() != rsp &&
                 mem.get_base() != rbp) {
#ifdef DEBUG_NACL_COST
        cout << "USING MEMORY ACCESS WITHOUT r15/rsp/rbp/rip base: " << instr << endl;
#endif
        score++;
      }

      if (mem.contains_index()) {
        if ((uint64_t)mem.get_index() + 1 != restricted_registers[i]) {
#ifdef DEBUG_NACL_COST
          cout << "USING NON-RESTRICTED REGISTER AS INDEX: " << instr << endl;
#endif
          score++;
        }
      }
    }
    if (instr.is_implicit_memory_dereference()) {
      auto opc = instr.get_opcode();
      if (opc != POP_R64 && opc != POP_M64 && opc != PUSH_R64 && opc != PUSH_M64 && opc != RET
          && opc != POP_R64_1 && opc != PUSH_R64_1) {
#ifdef DEBUG_NACL_COST
        cout << "USING UNSUPPORTED MEMORY OPERATION: " << instr << endl;
#endif
        score++;
      }
    }
  }

  // 7. instructions changing rbp or rsp aren't allowed, with some exceptions
  //  - pushq
  //  - popq
  //  - mov rbp, rsp
  //  - mov rsp, rbp
  for (auto instr : code) {
    auto opc = instr.get_opcode();
    switch (opc) {
    case POP_R64:
    case POP_R64_1:
    case POP_M64:
    case PUSH_R64:
    case PUSH_R64_1:
    case PUSH_M64:
      continue;
      break;
    default:
      break;
    }

    if (instr.maybe_write_set().contains(rsp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may write rsp" << endl;
#endif
      score++;
    }
    if (instr.maybe_undef_set().contains(rsp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may undef rsp" << endl;
#endif
      score++;
    }
    if (instr.maybe_write_set().contains(rbp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may write rbp" << endl;
#endif
      score++;
    }
    if (instr.maybe_undef_set().contains(rbp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may undef rbp" << endl;
#endif
      score++;
    }
  }


  // 8. r15 may never be modified
  for (auto instr : code) {
    if (instr.maybe_write_set().contains(r15)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may write r15" << endl;
#endif
      score++;
    }
    if (instr.maybe_undef_set().contains(r15)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may undef r15" << endl;
#endif
      score++;
    }
  }


  return result_type(true, score);
}

} // namespace stoke
