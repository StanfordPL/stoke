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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_H

#include <array>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/symstate/state.h"

namespace stoke {

class Handler {

public:

  /** These flags specify the support that the handler can provide for a
   * given instruction.  These flags are ORd together. */
  enum SupportLevel {
    /** Cannot build a circuit */
    NONE = 0,
    /** Can build a circuit */
    BASIC = 1,
    /** Can construct counterexample */
    CEG = 2,
    /** Only updates symbolic state; no constraints generated.
        Can be used to build analysis */
    ANALYSIS = 4
  };

  /** Check the support for this instruction */
  virtual SupportLevel get_support(const x64asm::Instruction& i) = 0;

  /** Build a circuit for this instruction */
  virtual void build_circuit(const x64asm::Instruction& i, SymState& start) = 0;

  /** Check for an error in building the circuit */
  virtual bool has_error() const {
    return error_.size() > 0;
  }
  /** Get the current error message */
  virtual std::string error() const {
    return error_;
  }

  /** What RegSets does the handler support? */
  virtual bool regset_is_supported(x64asm::RegSet rs) const;

  /** Get list of fully-supported opcodes in att memonic form.
    NOTE: This function may be **slow**.  You should call the
    validator to access a fast table of supported opcodes. */
  virtual std::vector<x64asm::Opcode> full_support_opcodes() {
    return std::vector<x64asm::Opcode>();
  }

  /** Converts from the old deprecated string format to opcodes. */
  static std::vector<x64asm::Opcode> opcodes_convert(std::vector<std::string> support) {
    std::vector<x64asm::Opcode> res;
    for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
      x64asm::Opcode op = (x64asm::Opcode)i;
      std::string att = Handler::att_[op];
      if (find(support.begin(), support.end(), att) == support.end()) {
        continue;
      }
      auto instr = x64asm::Instruction(op);
      size_t arity = instr.arity();
      bool args_ok = true;
      for (size_t i = 0; i < arity; ++i) {
        auto type = instr.type(i);
        switch (type) {
        case x64asm::Type::LABEL:
        case x64asm::Type::IMM_8:
        case x64asm::Type::IMM_16:
        case x64asm::Type::IMM_32:
        case x64asm::Type::IMM_64:
        case x64asm::Type::ZERO:
        case x64asm::Type::ONE:
        case x64asm::Type::THREE:
        case x64asm::Type::M_8:
        case x64asm::Type::M_16:
        case x64asm::Type::M_32:
        case x64asm::Type::M_64:
        case x64asm::Type::M_128:
        case x64asm::Type::M_256:
        case x64asm::Type::R_8:
        case x64asm::Type::R_16:
        case x64asm::Type::R_32:
        case x64asm::Type::R_64:
        case x64asm::Type::RH:
        case x64asm::Type::AL:
        case x64asm::Type::CL:
        case x64asm::Type::AX:
        case x64asm::Type::DX:
        case x64asm::Type::EAX:
        case x64asm::Type::RAX:
        case x64asm::Type::XMM:
        case x64asm::Type::XMM_0:
        case x64asm::Type::YMM:
          break;
        default:
          args_ok = false;
          break;
        }
      }
      if (args_ok)
        res.push_back(op);
    }
    return res;
  }

  virtual ~Handler() {}

  /** List of ATT memonics.  */
  // TODO: make this available to STOKE from x64asm
  static const std::array<const char*, X64ASM_NUM_OPCODES> att_;

  /** Returns string representation of an opcode */
  static std::string get_opcode(const x64asm::Instruction& instr) {
    return get_opcode(instr.get_opcode());
  }

  /** Returns string representation of an opcode */
  static std::string get_opcode(const x64asm::Opcode& opcode) {
    return std::string(att_[opcode]);
  }

protected:

  std::string error_;

  /** Returns true if the validator supports all the operands of the instruction. */
  bool operands_supported(const x64asm::Instruction& instr);

  /** Returns the overflow flag given the MSB of the two arguments and total for a plus operation */
  SymBool plus_of(SymBool msb1, SymBool msb2, SymBool total_msb) const;
  /** Returns the overflow flag given the MSB of the two arguments and total for a minus operation */
  SymBool minus_of(SymBool msb1, SymBool msb2, SymBool total_msb) const;


};

} //namespace

#endif
