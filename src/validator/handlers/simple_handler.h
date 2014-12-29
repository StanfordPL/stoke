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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_SIMPLE_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_SIMPLE_HANDLER_H

#include <map>
#include <functional>

#include "src/validator/handler.h"

namespace stoke {

/** For instructions that repeat the same instruction across multiple data in
 * the register.  Supports many AVX/SSE instructions easily.  */
class SimpleHandler : public Handler {

public:
  SimpleHandler() : Handler() {
    add_all();
  }

  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

  /** Add all the handlers */
  void add_all();

  /** Represents the operation done on the state */
  typedef std::function<void (SymState&)> ConstantOperator;
  typedef std::function<void (x64asm::Operand, SymBitVector, SymState&)> UnaryOperator;
  typedef std::function<void (x64asm::Operand, x64asm::Operand,
                              SymBitVector, SymBitVector, SymState&)> BinaryOperator;
  typedef std::function<void (x64asm::Operand, x64asm::Operand, x64asm::Operand,
                              SymBitVector, SymBitVector, SymBitVector,
                              SymState&)> TrinaryOperator;
  typedef std::function<void (x64asm::Operand, x64asm::Operand, x64asm::Operand, x64asm::Operand,
                              SymBitVector, SymBitVector, SymBitVector, SymBitVector,
                              SymState&)> QuadOperator;

  /** Adds an opcode to our internal maps */
  void add_opcode(std::vector<std::string> opcode, ConstantOperator op);
  void add_opcode(std::vector<std::string> opcode, UnaryOperator op);
  void add_opcode(std::vector<std::string> opcode, BinaryOperator op);
  void add_opcode(std::vector<std::string> opcode, TrinaryOperator op);
  void add_opcode(std::vector<std::string> opcode, QuadOperator op);

  /** Opcode -> Operator */
  std::map<std::string, ConstantOperator> operator_0_;
  std::map<std::string, UnaryOperator> operator_1_;
  std::map<std::string, BinaryOperator> operator_2_;
  std::map<std::string, TrinaryOperator> operator_3_;
  std::map<std::string, QuadOperator> operator_4_;

};

} //namespace stoke


#endif
