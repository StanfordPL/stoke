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

#define DEBUG_NACL_COST
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y))

namespace stoke {

template <bool debug>
Cost NaCl2Cost<debug>::index_cost(Opcode op) const {

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
  case ADD_EAX_IMM32:

  case AND_R32_IMM32:
  case AND_R32_IMM8:
  case AND_R32_M32:
  case AND_R32_R32:
  case AND_R32_R32_1:
  case AND_EAX_IMM32:

  case IMUL_R32:
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
  case OR_EAX_IMM32:

  case SUB_R32_IMM32:
  case SUB_R32_IMM8:
  case SUB_R32_M32:
  case SUB_R32_R32:
  case SUB_R32_R32_1:
  case SUB_EAX_IMM32:

  case XOR_R32_IMM32:
  case XOR_R32_IMM8:
  case XOR_R32_M32:
  case XOR_R32_R32:
  case XOR_R32_R32_1:
  case XOR_EAX_IMM32:
    return 0;

  //64-bit versions
  case MOV_R64_IMM32:
  case MOV_R64_M64:
  case MOV_R64_R64:
  case MOV_R64_R64_1:

  case ADD_R64_IMM32:
  case ADD_R64_IMM8:
  case ADD_R64_M64:
  case ADD_R64_R64:
  case ADD_R64_R64_1:
  case ADD_RAX_IMM32:

  case AND_R64_IMM32:
  case AND_R64_IMM8:
  case AND_R64_M64:
  case AND_R64_R64:
  case AND_R64_R64_1:
  case AND_RAX_IMM32:

  case IMUL_R64:
  case IMUL_R64_M64:
  case IMUL_R64_M64_IMM32:
  case IMUL_R64_M64_IMM8:
  case IMUL_R64_R64:
  case IMUL_R64_R64_IMM32:
  case IMUL_R64_R64_IMM8:

  case INC_R64:

  case LEA_R64_M16:
  case LEA_R64_M32:
  case LEA_R64_M64:

  case NEG_R64:

  case NOT_R64:

  case OR_R64_IMM32:
  case OR_R64_IMM8:
  case OR_R64_M64:
  case OR_R64_R64:
  case OR_R64_R64_1:
  case OR_RAX_IMM32:

  case SUB_R64_IMM32:
  case SUB_R64_IMM8:
  case SUB_R64_M64:
  case SUB_R64_R64:
  case SUB_R64_R64_1:
  case SUB_RAX_IMM32:

  case XOR_R64_IMM32:
  case XOR_R64_IMM8:
  case XOR_R64_M64:
  case XOR_R64_R64:
  case XOR_R64_R64_1:
  case XOR_RAX_IMM32:
    return 1;

  //16-bit versions
  case MOV_R16_IMM16:
  case MOV_R16_IMM16_1:
  case MOV_R16_M16:
  case MOV_R16_R16:
  case MOV_R16_R16_1:

  case ADD_R16_IMM16:
  case ADD_R16_IMM8:
  case ADD_R16_M16:
  case ADD_R16_R16:
  case ADD_R16_R16_1:
  case ADD_AX_IMM16:

  case AND_R16_IMM16:
  case AND_R16_IMM8:
  case AND_R16_M16:
  case AND_R16_R16:
  case AND_R16_R16_1:
  case AND_AX_IMM16:

  case IMUL_R16:
  case IMUL_R16_M16:
  case IMUL_R16_M16_IMM16:
  case IMUL_R16_M16_IMM8:
  case IMUL_R16_R16:
  case IMUL_R16_R16_IMM16:
  case IMUL_R16_R16_IMM8:

  case INC_R16:

  case LEA_R16_M16:
  case LEA_R16_M32:
  case LEA_R16_M64:

  case NEG_R16:

  case NOT_R16:

  case OR_R16_IMM16:
  case OR_R16_IMM8:
  case OR_R16_M16:
  case OR_R16_R16:
  case OR_R16_R16_1:
  case OR_AX_IMM16:

  case SUB_R16_IMM16:
  case SUB_R16_IMM8:
  case SUB_R16_M16:
  case SUB_R16_R16:
  case SUB_R16_R16_1:
  case SUB_AX_IMM16:

  case XOR_R16_IMM16:
  case XOR_R16_IMM8:
  case XOR_R16_M16:
  case XOR_R16_R16:
  case XOR_R16_R16_1:
  case XOR_AX_IMM16:
    return 1;

  default:
    return -1;
  }

}

/** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
  result would equal or exceed that value. */
template <bool debug>
typename NaCl2Cost<debug>::result_type NaCl2Cost<debug>::operator()(const Cfg& cfg, const Cost max) {

  Cost score = 0;

  const auto& code = cfg.get_code();
  map<size_t, uint64_t> restricted_registers;
  map<size_t, Cost> restricted_register_cost;
  map<size_t, size_t> restricted_register_start_index;

  // 1. instructions not allowed
  for (size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];

    // LEA with addr override (32-bit arguments) isn't allowed.
    if (instr.is_lea()) {
      M8 mem = instr.get_operand<M8>(1);
      if (mem.addr_or()) {
        if (debug)
          cout << "LEA with 32-bit arguments are not allowed" << endl;
        score+= bad_instruction_penalty_;
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
#define INFTY 0xefffffffffffffff
  size_t size = cfg.get_code().size();
  auto function = cfg.get_function();
  uint64_t table[32][size+1];
  for (size_t i = 0; i < 32; ++i)
    for (size_t j = 0; j < size+1; ++j)
      table[i][j] = INFTY;

  size_t rip_offset = cfg.get_function().get_rip_offset();
  table[rip_offset & 0x1f][0] = 0;

  // find all labels that are jump targets
  set<Label> jump_targets;
  for (size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if (instr.is_any_jump()) {
      if (instr.is_any_indirect_jump()) {
        score++;
        if (debug)
          std::cout << "indirect jumps not supported yet." << endl;
        assert(false);
      } else {
        auto label = instr.get_operand<Label>(0);
        jump_targets.insert(label);
      }
    }
  }

  // Start iterating throught the code
  for (size_t i = 0; i < code.size(); ++i) {

    auto instr = code[i];
    size_t instr_size = function.hex_size(i);

    /**** STEP 1: Identify pseudo instructions ****/
    if (instr.get_opcode() == RET)
      instr_size = 12;

    // if the instruction does a validator-supported zero extend to 32-bit
    // register, and the next instruction uses this in a memory operand, we
    // need to record that this is a restricted register and place these two
    // instructions as one.
    Opcode opc = instr.get_opcode();
    if (index_cost(opc) != (Cost)(-1)) {
      restricted_registers[i+1] = (uint64_t)instr.get_operand<R32>(0) + 1;
      restricted_register_cost[i+1] = index_cost(opc);
      if (debug)
        cout << "RESTRICTED REGISTER: " << (uint64_t)restricted_registers[i+1] << endl;
      if (i + 1 < code.size()) {
        auto next_instr = code[i+1];
        if (next_instr.is_explicit_memory_dereference()) {
          auto mem = next_instr.get_operand<M8>(next_instr.mem_index());
          if (mem.contains_index() && (uint64_t)mem.get_index() == (uint64_t)instr.get_operand<R32>(0)) {
            // found pseudo-instruction
            instr_size += function.hex_size(i+1);

            for (size_t j = 0; j < 32; ++j) {
              table[j][i+1] = table[j][i];
            }
            i++;
          }
        }
      }
    }

    /**** STEP 2: Update the table appropriately. ****/

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
    // 5. We're emitting a 'call' instruction which must be 5
    //    bytes before a 32-bit boundary.

    if (instr.is_nop()) {
      // if we have a nop, then for cost 1, we can keep the
      // table the same as it previously was.
      for (size_t j = 0; j < 32; ++j) {
        if (table[j][i] != INFTY)
          table[j][i+1] = table[j][i]+1;
      }
    }

    if (instr.is_label_defn()) {
      Label l = instr.get_operand<Label>(0);
      if (!jump_targets.count(l)) {
        // case 1
        for (size_t j = 0; j < 32; ++j) {
          table[j][i+1] = table[j][i];
        }
      } else {
        // case 2
        uint64_t min_cost = INFTY;
        for (size_t j = 0; j < 32; ++j) {
          if (table[j][i] != INFTY)
            min_cost = MIN(table[j][i] + ((32 - j) & 0x1f), min_cost);
        }
        table[0][i+1] = min_cost;
      }
    } else if (instr.is_call()) {
      uint64_t min_cost = INFTY;
      for (size_t j = 0; j <= 32 - 5; ++j) {
        if (table[j][i] != INFTY)
          min_cost = MIN(table[j][i] + (32 - 5 - j), min_cost);
      }
      for (size_t j = 32-5+1; j < 32; ++j) {
        if (table[j][i] != INFTY)
          min_cost = MIN(table[j][i] + (32-j) + (32 - 5), min_cost);
      }
      table[0][i+1] = min_cost;
    } else if (!instr.is_explicit_memory_dereference()) {
      // case 3
      for (size_t j = 0; j < 32; ++j) {
        // ways to fit in the same frame as the previous
        for (size_t k = j; k + instr_size <= 32; ++k) {
          size_t index = (k+instr_size)&0x1f;
          if (table[j][i] != INFTY)
            table[index][i+1] = MIN(table[index][i+1], table[j][i] + k-j);
        }
        // ways to fit into the next frame
        // TODO: don't have to do every iteration of this loop
        for (size_t k = 0; k + instr_size <= 32; ++k) {
          size_t index = (k + instr_size) & 0x1f;
          if (table[j][i] != INFTY)
            table[index][i+1] = MIN(table[index][i+1], table[j][i] + (32-j) + k);
        }
      }
    } else {
      // case 4
      for (size_t j = 0; j + instr_size <= 32; ++j) {
        size_t index = (j + instr_size) & 0x1f;
        table[index][i+1] = table[j][i];
      }
    }

  }

  uint64_t min_extra_score = INFTY;
  for (size_t i = 0; i < 32; ++i) {
    min_extra_score = MIN(min_extra_score, table[i][size]);
  }
  if (debug) {
    cout << "Score from dynamic programing table: " << min_extra_score << endl;
  }
  score += min_extra_score;

  if (debug) {
    // Let's print the table!
    cout << "The big bad dynamic programing table." << endl << endl;

    ofilterstream<Column> ofs(cout);
    ofs.filter().padding(3);

    for (size_t i = 0; i < size; ++i) {
      ofs << cfg.get_code()[i] << endl;
    }
    ofs.filter().next();

    for (size_t i = 0; i < size; ++i) {
      ofs << function.hex_size(i) << endl;
    }
    ofs.filter().next();

    for (size_t i = 0; i < size; ++i) {
      ofs << "|" << endl;
    }
    ofs.filter().next();

    for (size_t i = 0; i < 32; ++i) {
      for (size_t j = 1; j <= size; ++j) {
        if (table[i][j] != INFTY)
          ofs << table[i][j] << endl;
        else
          ofs << "X" << endl;
      }
      if (i != 31)
        ofs.filter().next();
    }
    ofs.filter().done();
  }


  // 3. no pseudo instructions may cross 32-bit boundaries (NO)
  // 4. call instructions must be 5 bytes before a 32-byte boundary (NO)
  // 5. jump/call targets must be 32-byte aligned (handled in #2)

  // 6. all memory accesses must use rip, rbp, rsp or r15 as a base
  //    and a restricted register index (DONE)
  for (size_t i = 0; i < code.size(); ++i) {
    auto instr = code[i];
    if (instr.is_explicit_memory_dereference()) {
      M8 mem = instr.get_operand<M8>(instr.mem_index());
      if (!mem.contains_base() && !mem.rip_offset()) {
        //no good; no base register
        if (debug)
          cout << "USING MEMORY ACCESS WITHOUT BASE: " << instr << endl;
        score+= bad_instruction_penalty_;
      } else if (mem.get_base() != r15 && mem.get_base() != rsp &&
                 mem.get_base() != rbp && !mem.rip_offset()) {
        if (debug)
          cout << "USING MEMORY ACCESS WITHOUT r15/rsp/rbp/rip base: " << instr << endl;
        score+= bad_instruction_penalty_;
      }

      if (mem.contains_index()) {
        if ((uint64_t)mem.get_index() + 1 != restricted_registers[i]) {
          if (debug)
            cout << "USING NON-RESTRICTED REGISTER AS INDEX: " << instr << endl;
          score += restricted_register_penalty_;
        } else {
          if (debug && restricted_register_cost[i])
            cout << "Assessing penalty of " << restricted_register_cost[i] << " for not-quite-right restricted register" << endl;
          score += restricted_register_cost[i];
        }
      }
    }
    if (instr.is_implicit_memory_dereference()) {
      auto opc = instr.get_opcode();
      if (opc != POP_R64 && opc != POP_M64 && opc != PUSH_R64 && opc != PUSH_M64 && opc != RET
          && opc != POP_R64_1 && opc != PUSH_R64_1) {
        if (debug)
          cout << "USING UNSUPPORTED MEMORY OPERATION: " << instr << endl;
        score+= bad_instruction_penalty_;
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

    if (instr.maybe_write_set().contains(spl)) {
      if (debug)
        cout << instr << " may write rsp" << endl;
      score+= bad_instruction_penalty_;
    }
    if (instr.maybe_undef_set().contains(spl)) {
      if (debug)
        cout << instr << " may undef rsp" << endl;
      score+= bad_instruction_penalty_;
    }
    if (instr.maybe_write_set().contains(bpl)) {
      if (debug)
        cout << instr << " may write rbp" << endl;
      score+= bad_instruction_penalty_;
    }
    if (instr.maybe_undef_set().contains(bpl)) {
      if (debug)
        cout << instr << " may undef rbp" << endl;
      score+= bad_instruction_penalty_;
    }

    if (instr.maybe_write_set().contains(r15b)) {
      if (debug)
        cout << instr << " may write r15" << endl;
      score+= bad_instruction_penalty_;
    }
    if (instr.maybe_undef_set().contains(r15b)) {
      if (debug)
        cout << instr << " may undef r15" << endl;
      score+= bad_instruction_penalty_;
    }
  }


  return result_type(true, score);
}

template class NaCl2Cost<true>;
template class NaCl2Cost<false>;

} // namespace stoke
