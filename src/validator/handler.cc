
#include "src/validator/handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

/* Returns true if the validator supports all the operands of the instruction. */
bool Handler::operands_supported(const Instruction& instr) {

  for(size_t i = 0; i < instr.arity(); ++i) {
    auto& o = instr.get_operand<Operand>(i);
    if (o.type() != instr.type(i)) {
      // This means there's a bug in some other part of stoke, and that the wrong type
      // of argument is here.
      error_ = "Expected type of operand " + to_string(i) + " is " + to_string((int)instr.type(i)) +
               "; does not match actual of " + to_string((int)o.type()) + ".";
      return false;
    }
    if (!o.is_gp_register() && !o.is_sse_register() && !o.is_immediate()) {
      error_ = "Operand " + to_string(i) + " not supported.";
      return false;
    }
  }

  return true;
}


array<const char*, 3801> Handler::att_ = {{
    "<label definition>"
#include "src/ext/x64asm/src/opcode.att"
  }
};


