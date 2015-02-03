// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#include "src/validator/error.h"
#include "src/validator/handlers/packed_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

Handler::SupportLevel PackedHandler::get_support(const x64asm::Instruction& instr) {

  auto opcode = get_opcode(instr);

  for(size_t i = 0; i < instr.arity(); ++i) {
    Operand o = instr.get_operand<Operand>(i);
    if(!o.is_gp_register() && !o.is_typical_memory() && !o.is_sse_register() &&
        !o.is_immediate())
      return Handler::NONE;
  }

  if(!opcodes_[opcode])
    return Handler::NONE;

  if(opcodes_[opcode]->get_uninterpreted()) {
    return Handler::BASIC;
  } else {
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);
  }

}

void PackedHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  error_ = "";

  if(!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

  auto opcode = get_opcode(instr);

  // Figure out the arguments
  Operand dest = instr.get_operand<Operand>(0);
  Operand op1 = dest;
  Operand op2 = dest;

  size_t arity = instr.arity();

  if(arity < 2 || arity > 4)
    throw VALIDATOR_ERROR("Only arity 2/3/4 instructions supported by PackedHandler");

  bool has_immediate;
  Operand last = instr.get_operand<Operand>(arity-1);
  has_immediate = last.is_immediate();
  SymBitVector immediate;
  if(has_immediate) {
    immediate = state[last];
    arity--;
  }

  if(arity == 2) {
    op1 = instr.get_operand<Operand>(0);
    op2 = instr.get_operand<Operand>(1);
  } else if (arity == 3) {
    op1 = instr.get_operand<Operand>(1);
    op2 = instr.get_operand<Operand>(2);
  } else {
    throw VALIDATOR_ERROR("Only arity 2/3/4 instructions supported by PackedHandler");
  }

  SymBitVector arg1 = state[op1];
  SymBitVector arg2 = state[op2];


  // Do the loop to build the result
  auto& entry = *opcodes_[opcode];
  uint16_t input_width = entry.get_input_width();
  if(input_width == 0)
    input_width = op1.size();
  uint16_t output_width = entry.get_output_width();
  if(output_width == 0)
    output_width = input_width;
  bool limit = entry.get_only_one();
  bool clear = entry.get_clear();
  bool avx_alignment = entry.get_avx_alignment();

  // Check for memory alignment problems
  if(avx_alignment) {
    for(size_t i = 0; i < arity; ++i) {
      Operand operand = instr.get_operand<Operand>(i);
      if(operand.is_typical_memory()) {
        auto addr = state.get_addr(*(reinterpret_cast<M8*>(&operand)));
        uint64_t bits = (dest.size() == 128 ? 4 : 5);
        state.set_sigsegv(addr[bits-1][0] != SymBitVector::constant(bits, 0));
      }
    }
  }

  // Compute the result
  SymBitVector result;

  if(limit) {
    // Only apply binop to lower bits.  Useful for scalar operations.
    auto arg1_bits = min(input_width, op1.size());
    auto arg2_bits = min(input_width, op2.size());

    if(has_immediate) {
      result = entry(op1, arg1[arg1_bits-1][0], op2, arg2[arg2_bits-1][0], state, immediate, 0);
    } else {
      result = entry(op1, arg1[arg1_bits-1][0], op2, arg2[arg2_bits-1][0], state);
    }
    if(clear)
      result = SymBitVector::constant(dest.size() - output_width, 0) || result;
    else
      result = state[dest][dest.size() - 1][output_width] || result;

  } else {
    // Loop through sets of 'input_width' in the input and apply the binary
    // operator in a pairwise way.  Stop when we get to the end of the input/output
    // and clear or preserve the remaining bits.
    SymBitVector imm_arg = immediate;

    if(has_immediate) {
      result = entry(op1, arg1[input_width-1][0], op2, arg2[input_width-1][0], state, immediate, 0);
    } else {
      result = entry(op1, arg1[input_width-1][0], op2, arg2[input_width-1][0], state);
    }

    size_t i,j,k;
    for(i = input_width, j = output_width, k = 1;
        i < op1.size() && i < op2.size() && j < dest.size();
        i = i + input_width, j = j + output_width, ++k) {
      if(has_immediate) {
        result = entry(op1, arg1[i + input_width - 1][i],
                       op2, arg2[i + input_width - 1][i], state, immediate, k) || result;
      } else {
        result = entry(op1, arg1[i + input_width - 1][i],
                       op2, arg2[i + input_width - 1][i], state) || result;
      }
    }

    if(j + output_width < dest.size()) {
      if(clear)
        result = SymBitVector::constant(dest.size() - j, 0) || result;
      else
        result = state[dest][dest.size() - 1][j] || result;
    }

  }

  // Store in the right place
  bool avx = instr.is_avx() || instr.is_avx2();
  state.set(instr.get_operand<Operand>(0), result, avx);

}

