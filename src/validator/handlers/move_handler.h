
#ifndef STOKE_SRC_VALIDATOR_HANDLER_MOVE_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_MOVE_HANDLER_H

#include "src/validator/handler.h"

namespace stoke {

/** Supports all variants of instructions that simply move bits from one register to another */
class MoveHandler : public Handler {

  public:
    SupportLevel get_support(const x64asm::Instruction& instr);

    void build_circuit(const x64asm::Instruction& instr, SymState& start);

  private:

    enum MoveSupport{
      NONE = 0,
      SIGN_EXTEND = 1,
      ZERO_EXTEND = 2
    };

    MoveSupport lookup(const x64asm::Instruction& instr) const;

};

} //namespace stoke


#endif
