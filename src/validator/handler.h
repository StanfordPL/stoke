
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
    /** Immediate is parameterized */
    IMMEDIATE = 4
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

protected:

  std::string error_;

  /** Returns string representation of an opcode */
  static std::string get_opcode(const x64asm::Instruction& instr) {
    return std::string(att_[instr.get_opcode()]);
  }

  /** Returns true if the validator supports all the operands of the instruction. */
  bool operands_supported(const x64asm::Instruction& instr);

  /** Gets a temporary number guaranteed to be unique (e.g. for a temp variable */
  uint64_t temp() {
    return ++temporary_;
  }

private:

  static const std::array<const char*, 3801> att_;

  static uint64_t temporary_;
};

} //namespace

#endif
