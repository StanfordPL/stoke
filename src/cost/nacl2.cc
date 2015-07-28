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

#include "src/cost/nacl2.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

//#define DEBUG_NACL_COST
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y))

namespace stoke {

bool nacl_ok_index2(Opcode op) {

  switch(op) {
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
NaCl2Cost::result_type NaCl2Cost::operator()(const Cfg& cfg, const Cost max) {

  Cost score = 0;

  const auto& code = cfg.get_code();
  map<size_t, uint64_t> restricted_registers;

  // 1. instructions not allowed
  for(size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];

    // LEA with addr override (32-bit arguments) isn't allowed.
    if(instr.is_lea()) {
      M8 mem = instr.get_operand<M8>(1);
      if(mem.addr_or()) {
        score++;
      }
    }
  }


  // 2. no instructions may cross 32-bit boundaries
  // (also, when we do this, identify restricted registers and populate
  //  the map.  It holds 0 if there are no restricted registers, and holds
  //  r+1 if register r is restricted) (DONE)

  // We create a table of size 32 x N, where N is the number instructions
  // table[i][j] is the number of NOPs that need to be added to align the first
  // j-instructions to a 32K+i boundary and follow all the rules.

  // initialize the table
#define INFTY 0xffffffffffffffff
  size_t size = cfg.get_code().size();
  uint64_t table[32][size+1];
  for(size_t i = 0; i < 32; ++i)
    for(size_t j = 0; j < size+1; ++j)
      table[i][j] = INFTY;

  size_t rip_offset = cfg.get_function().get_rip_offset();
  table[rip_offset & 0x1f][0] = 0;

  // find all labels that are jump targets
  set<Label> jump_targets;
  for(size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if(instr.is_any_jump()) {
      if(instr.is_any_indirect_jump()) {
        score++;
#ifdef DEBUG_NACL_COST
        std::cout << "indirect jumps not supported yet." << endl;
#endif
        assert(false);
      } else {
        auto label = instr.get_operand<Label>(0);
        jump_targets.insert(label);
      }
    }
  }

  // Start iterating throught the code
  buffer_.reserve(code.size()*32);
  assm_.start(buffer_);
  for(size_t i = 0; i < code.size(); ++i) {

    auto instr = code[i];
    size_t instr_size = assm_.hex_size(instr);
    if(instr.get_opcode() == RET)
      instr_size = 12;

    // if the instruction does a validator-supported zero extend to 32-bit
    // register, and it is not at the end of the 32-byte bundle, then this
    // register is restricted in the next instruction
    Opcode opc = instr.get_opcode();
    if(nacl_ok_index2(opc)) {
      restricted_registers[i+1] = (uint64_t)instr.get_operand<R32>(0) + 1;
#ifdef DEBUG_NACL_COST
      cout << "RESTRICTED REGISTER: " << (uint64_t)restricted_registers[i+1] << endl;
#endif
    }

    // Cases:
    // 1. We're emitting a label that's not a jump target;
    //    copy the previous column.
    // 2. We're emitting a label that is a jump target;
    //    we must align to a 32-byte boundary.  Each j gives
    //    a different upper bound on the number of NOP inserts
    //    required to do this.  We take the min of all of them.
    // 3. We're emitting a normal instruction that may either fit
    //    into the same bundle as the preceeding one, or might need
    //    to be pushed into the next bundle
    // 4. We're emitting a memory instruction that must match up
    //    with the previous instruction exactly and be in the
    //    same bundle.
    if(instr.is_nop()) {
      for(size_t j = 0; j < 32; ++j) {
        table[j][i+1] = table[j][i];
      }
    }

    if(instr.is_label_defn()) {
      Label l = instr.get_operand<Label>(0);
      if(!jump_targets.count(l)) {
        // case 1
        for(size_t j = 0; j < 32; ++j) {
          table[j][i+1] = table[j][i];
        }
      } else {
        // case 2
        uint64_t min_cost = INFTY;
        for(size_t j = 0; j < 32; ++j) {
          if(table[j][i] != INFTY)
            min_cost = MIN(table[j][i] + ((32 - j) & 0x1f), min_cost);
        }
        table[0][i+1] = min_cost;
      }
    } else if (!instr.is_explicit_memory_dereference()) {
      // case 3
      for(size_t j = 0; j < 32; ++j) {
        // ways to fit in the same frame as the previous
        for(size_t k = j; k + instr_size <= 32; ++k) {
          size_t index = (k+instr_size)&0x1f;
          if(table[j][i] != INFTY)
            table[index][i+1] = MIN(table[index][i+1], table[j][i] + k-j);
        }
        // ways to fit into the next frame
        // TODO: don't have to do every iteration of this loop
        for(size_t k = 0; k + instr_size <= 32; ++k) {
          size_t index = (k + instr_size) & 0x1f;
          if(table[j][i] != INFTY)
            table[index][i+1] = MIN(table[index][i+1], table[j][i] + (32-j) + k);
        }
      }
    } else {
      // case 4
      for(size_t j = 0; j + instr_size <= 32; ++j) {
        size_t index = (j + instr_size) & 0x1f;
        table[index][i+1] = table[j][i];
      }
    }
  }

  uint64_t min_extra_score = INFTY;
  for(size_t i = 0; i < 32; ++i) {
    min_extra_score = MIN(min_extra_score, table[i][size]);
  }
  score += min_extra_score;

#ifdef DEBUG_NACL_COST
  // Let's print the table!
  cout << "The big bad dynamic programing table." << endl << endl;

  ofilterstream<Column> ofs(cout);
  ofs.filter().padding(3);

  for(size_t i = 0; i < size; ++i) {
    ofs << cfg.get_code()[i] << endl;
  }
  ofs.filter().next();

  for(size_t i = 0; i < size; ++i) {
    ofs << assm_.hex_size(cfg.get_code()[i]) << endl;
  }
  ofs.filter().next();

  for(size_t i = 0; i < size; ++i) {
    ofs << "|" << endl;
  }
  ofs.filter().next();

  for(size_t i = 0; i < 32; ++i) {
    for(size_t j = 1; j <= size; ++j) {
      if(table[i][j] != INFTY)
        ofs << table[i][j] << endl;
      else
        ofs << "X" << endl;
    }
    if(i != 31)
      ofs.filter().next();
  }
  ofs.filter().done();
#endif


  // 3. no pseudo instructions may cross 32-bit boundaries (NO)
  // 4. call instructions must be 5 bytes before a 32-byte boundary (NO)
  // 5. jump/call targets must be 32-byte aligned (handled in #2)

  // 6. all memory accesses must use rip, rbp, rsp or r15 as a base
  //    and a restricted register index (DONE)
  for(size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if(instr.is_explicit_memory_dereference()) {
      M8 mem = instr.get_operand<M8>(instr.mem_index());
      if(!mem.contains_base() && !mem.rip_offset()) {
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

      if(mem.contains_index()) {
        if((uint64_t)mem.get_index() + 1 != restricted_registers[i]) {
#ifdef DEBUG_NACL_COST
          cout << "USING NON-RESTRICTED REGISTER AS INDEX: " << instr << endl;
#endif
          score++;
        }
      }
    }
    if(instr.is_implicit_memory_dereference()) {
      auto opc = instr.get_opcode();
      if(opc != POP_R64 && opc != POP_M64 && opc != PUSH_R64 && opc != PUSH_M64 && opc != RET) {
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
#ifdef DEBUG_NACL_COST
      cout << instr << " may write rsp" << endl;
#endif
      score++;
    }
    if(instr.maybe_undef_set().contains(rsp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may undef rsp" << endl;
#endif
      score++;
    }
    if(instr.maybe_write_set().contains(rbp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may write rbp" << endl;
#endif
      score++;
    }
    if(instr.maybe_undef_set().contains(rbp)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may undef rbp" << endl;
#endif
      score++;
    }
  }


  // 8. r15 may never be modified
  for(auto instr : code) {
    if(instr.maybe_write_set().contains(r15)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may write r15" << endl;
#endif
      score++;
    }
    if(instr.maybe_undef_set().contains(r15)) {
#ifdef DEBUG_NACL_COST
      cout << instr << " may undef r15" << endl;
#endif
      score++;
    }
  }


  return result_type(true, score);
}

} // namespace stoke
