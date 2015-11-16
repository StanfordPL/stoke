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
  virtual std::vector<std::string> full_support_opcodes() {
    return std::vector<std::string>();
  }

  virtual ~Handler() {}

  /** List of ATT memonics.  */
  // TODO: make this available to STOKE from x64asm
  static const std::array<const char*, X64ASM_NUM_OPCODES> att_;

  /** Returns string representation of an opcode */
  static std::string get_opcode(const x64asm::Instruction& instr) {
    return std::string(att_[instr.get_opcode()]);
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
