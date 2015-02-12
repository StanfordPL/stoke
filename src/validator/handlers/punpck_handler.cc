// Copyright 2013-2015 Stanford University
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


#include "src/validator/handlers/punpck_handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

const map<string, bool> PunpckHandler::is_low_ = {
  {"punpcklbw", true},
  {"punpcklwd", true},
  {"punpckldq", true},
  {"punpcklqdq", true},
  {"vpunpcklbw", true},
  {"vpunpcklwd", true},
  {"vpunpckldq", true},
  {"vpunpcklqdq", true},
  {"punpckhbw", false},
  {"punpckhwd", false},
  {"punpckhdq", false},
  {"punpckhqdq", false},
  {"vpunpckhbw", false},
  {"vpunpckhwd", false},
  {"vpunpckhdq", false},
  {"vpunpckhqdq", false}
};

const map<string, size_t> PunpckHandler::size_ = {
  {"punpcklbw", 8},
  {"punpcklwd", 16},
  {"punpckldq", 32},
  {"punpcklqdq", 64},
  {"vpunpcklbw", 8},
  {"vpunpcklwd", 16},
  {"vpunpckldq", 32},
  {"vpunpcklqdq", 64},
  {"punpckhbw", 8},
  {"punpckhwd", 16},
  {"punpckhdq", 32},
  {"punpckhqdq", 64},
  {"vpunpckhbw", 8},
  {"vpunpckhwd", 16},
  {"vpunpckhdq", 32},
  {"vpunpckhqdq", 64}
};



Handler::SupportLevel PunpckHandler::get_support(const Instruction& instr) {
  string opcode = get_opcode(instr);


  if (size_.count(opcode))
    return (Handler::SupportLevel)(SupportLevel::BASIC | SupportLevel::CEG);
  else
    return SupportLevel::NONE;
}

void PunpckHandler::build_circuit(const Instruction& instr, SymState& state) {

  error_ = "";

  if(!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

  const auto opcode = get_opcode(instr);

  // Figure out the arguments
  Operand dest = instr.get_operand<Operand>(0);
  Operand op1 = dest;
  Operand op2 = dest;

  size_t arity = instr.arity();

  if(arity == 2) {
    op1 = instr.get_operand<Operand>(0);
    op2 = instr.get_operand<Operand>(1);
  } else if (arity == 3) {
    op1 = instr.get_operand<Operand>(1);
    op2 = instr.get_operand<Operand>(2);
  } else {
    error_ = "Only arity 2/3 instructions supported by Punpckhandler";
    return;
  }

  SymBitVector arg1 = state[op1];
  SymBitVector arg2 = state[op2];

  // Figure out the output
  bool low = is_low_.at(opcode);
  size_t size = size_.at(opcode);
  bool avx = instr.is_avx() || instr.is_avx2();

  SymBitVector output;

  if(dest.size() < 256) {
    size_t start_index = (low ? 0 : dest.size()/2);
    size_t end_index = (low ? dest.size()/2 : dest.size());

    output = arg2[start_index+size-1][start_index] ||
             arg1[start_index+size-1][start_index];
    for(size_t i = start_index+size; i < end_index; i += size) {
      output = arg2[i+size-1][i] || arg1[i+size-1][i] || output;
    }
  } else if (dest.size() == 256) {

    size_t start_index = (low ? 0 : 64);
    size_t end_index = (low ? 64 : 128);

    output = arg2[start_index+size-1][start_index] ||
             arg1[start_index+size-1][start_index];
    for(size_t i = start_index+size; i < end_index; i += size) {
      output = arg2[i+size-1][i] || arg1[i+size-1][i] || output;
    }

    start_index = (low ? 128 : 192);
    end_index = (low ? 192 : 256);

    for(size_t i = start_index; i < end_index; i += size) {
      output = arg2[i+size-1][i] || arg1[i+size-1][i] || output;
    }
  } else {
    error_ = "Only operands of size <= 256 bits supported.";
    return;
  }

  // Store in the right place
  state.set(dest, output, avx);

}

