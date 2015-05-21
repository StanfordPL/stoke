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


namespace stoke {

/** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
  result would equal or exceed that value. */
NaClCost::result_type NaClCost::operator()(const Cfg& cfg, const Cost max) {

  Cost score = 0;

  const auto& code = cfg.get_code();
  map<size_t, uint64_t> restricted_registers;

  // 1. instructions not allowed
  // 2. no instructions may cross 32-bit boundaries
  // (also, when we do this, identify restricted registers and populate
  //  the map.  It holds 0 if there are no restricted registers, and holds
  //  r+1 if register r is restricted) (DONE)

  unordered_set<uint64_t> aligned_labels;
  size_t rip_offset = cfg.get_function().get_rip_offset();
  buffer_.reserve(code.size()*32);
  assm_.start(buffer_);
  for(size_t i = 0; i < code.size(); ++i) {

    auto instr = code[i];
    size_t start = (buffer_.size() + rip_offset) & 0x1f;
    assm_.assemble(instr);
    size_t end = (buffer_.size() + rip_offset) & 0x1f;
    //cout << start << "   " << instr << endl;

    // if the instruction is a movl to 32-bit register, and it is not at the
    // end of the 32-byte bundle, then this register is restricted in the next
    // instruction
    Opcode opc = instr.get_opcode();
    if((opc == MOV_R32_IMM32 || opc == MOV_R32_M32 || opc == MOV_R32_R32) &&
        end != 0) {
      restricted_registers[i+1] = (uint64_t)instr.get_operand<R32>(0) + 1;
      //cout << "RESTRICTED REGISTER: " << (uint64_t)restricted_registers[i+1] << endl;
    }

    // we're in trouble if, looking at the lower 32 bits of the
    // start and end addresses, we see a wrap around, and the
    // lower 32 bits of 'end' are nonzero.
    if(start > end && end != 0) {
      score += end;
      //cout << "LOST " << end << " BYTES.  TOTAL " << score << endl;
    }

    // record which labels are at 32-byte boundary
    if(instr.is_label_defn() && start == 0) {
      auto label = instr.get_operand<Label>(0);
      aligned_labels.insert((uint64_t)label);
    }
  }

  // 3. no pseudo instructions may cross 32-bit boundaries (NO)
  // 4. call instructions must be 5 bytes before a 32-byte boundary (NO)
  // 5. jump/call targets must be 32-byte aligned
  for(size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if(instr.is_any_jump()) {
      if(instr.is_any_indirect_jump()) {
        score++;
        std::cout << "indirect jumps not supported yet." << endl;
        assert(false);
      } else {
        auto label = instr.get_operand<Label>(0);
        if(!aligned_labels.count((uint64_t)label)) {
          score++;
          cout << "jump target misaligned" << endl;
        }
      }
    }
  }


  // 6. all memory accesses must use rip, rbp, rsp or r15 as a base
  //    and a restricted register index (DONE)
  for(size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if(instr.is_explicit_memory_dereference()) {
      M8 mem = instr.get_operand<M8>(instr.mem_index());
      if(!mem.contains_base() && !mem.rip_offset()) {
        //no good; no base register
        //cout << "USING MEMORY ACCESS WITHOUT BASE: " << instr << endl;
        score++;
      } else if (mem.get_base() != r15 && mem.get_base() != rsp &&
                 mem.get_base() != rbp) {
        //cout << "USING MEMORY ACCESS WITHOUT r15/rsp/rbp/rip base: " << instr << endl;
        score++;
      }

      if(mem.contains_index()) {
        if((uint64_t)mem.get_index() + 1 != restricted_registers[i]) {
          //cout << "USING NON-RESTRICTED REGISTER AS INDEX: " << instr << endl;
          score++;
        }
      }
    }
    if(instr.is_implicit_memory_dereference()) {
      auto opc = instr.get_opcode();
      if(opc != POP_R64 && opc != POP_M64 && opc != PUSH_R64 && opc != PUSH_M64 && opc != RET) {
        //cout << "USING UNSUPPORTED MEMORY OPERATION: " << instr << endl;
        score++;
      }
    }
  }

  // 7. instructions changing rbp or rsp aren't allowed, with some exceptions
  //  - pushq
  //  - popq
  //  - mov rbp, rsp
  //  - mov rsp, rbp
  for(auto instr : code) {
    auto opc = instr.get_opcode();
    switch(opc) {
    case POP_R64:
    case POP_M64:
    case PUSH_R64:
    case PUSH_M64:
      continue;
      break;
    default:
      break;
    }

    if(instr.maybe_write_set().contains(rsp)) {
      //cout << instr << " may write rsp" << endl;
      score++;
    }
    if(instr.maybe_undef_set().contains(rsp)) {
      //cout << instr << " may undef rsp" << endl;
      score++;
    }
    if(instr.maybe_write_set().contains(rbp)) {
      //cout << instr << " may write rbp" << endl;
      score++;
    }
    if(instr.maybe_undef_set().contains(rbp)) {
      //cout << instr << " may undef rbp" << endl;
      score++;
    }
  }


  // 8. r15 may never be modified
  for(auto instr : code) {
    if(instr.maybe_write_set().contains(r15)) {
      //cout << instr << " may write r15" << endl;
      score++;
    }
    if(instr.maybe_undef_set().contains(r15)) {
      //cout << instr << " may undef r15" << endl;
      score++;
    }
  }


  return result_type(true, score);
}

} // namespace stoke
