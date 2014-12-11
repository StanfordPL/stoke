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

  if(!uninterpreted_.count(opcode))
    return Handler::NONE;

  if(uninterpreted_[opcode]) {
    return Handler::BASIC;
  } else {
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);
  }

}

void PackedHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  auto opcode = get_opcode(instr);

  // Figure out the arguments
  Operand dest = instr.get_operand<Operand>(0);

  SymBitVector arg1;
  SymBitVector arg2;

  int arity = instr.arity();

  if(arity == 2) {
    arg1 = state[instr.get_operand<Operand>(0)];
    arg2 = state[instr.get_operand<Operand>(1)];
  } else if (arity == 3) {
    arg1 = state[instr.get_operand<Operand>(1)];
    arg2 = state[instr.get_operand<Operand>(2)];
  } else {
    throw VALIDATOR_ERROR("Only arity 2/3 instructions supported by PackedHandler");
  }

  // Do the loop to build the result
  uint16_t total_width = dest.size();
  uint16_t loop_width = width_[opcode];
  auto f = operator_[opcode];

  SymBitVector result;

  if(loop_width) {
    result = f(arg1[loop_width-1][0], arg2[loop_width-1][0]);
    for(size_t i = loop_width; i < total_width; i = i + loop_width) {
      result = f(arg1[i + loop_width - 1][i], arg2[i + loop_width - 1][i]) || result;
    }
  } else {
    result = f(arg1, arg2);
  }

  // Store in the right place
  bool avx = instr.is_avx() || instr.is_avx2();
  state.set(instr.get_operand<Operand>(0), result, avx);

}

void PackedHandler::add_opcode(std::string opcode, BinaryOperator op,
                               uint16_t width, bool uninterpreted) {

  operator_[opcode] = op;
  width_[opcode] = width;
  uninterpreted_[opcode] = uninterpreted;

  operator_["v" + opcode] = op;
  width_["v" + opcode] = width;
  uninterpreted_["v" + opcode] = uninterpreted;

}


