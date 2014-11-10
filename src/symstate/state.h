
#ifndef _STOKE_SRC_SYMSTATE_SYM_STATE_H
#define _STOKE_SRC_SYMSTATE_SYM_STATE_H

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/symstate/regs.h"

namespace stoke {

class SymState {

  public:

    /** Returns a new symbolic CPU state */
    SymState() : gp(16, 64), sse(16, 256) { }

    /** Builds a symbolic CPU state from a concrete one */
    SymState(const CpuState& cs) : gp(16, 64), sse(16, 256) {
      build_from_cpustate(cs);
    }

    /** Symbolic general purpose registers */
    SymRegs gp;
    
    /** Symbolic SSE registers */
    SymRegs sse;


    /** Lookup the symbolic representation of a generic operand */
    const SymBitVector& operator[](const x64asm::Operand o) const {
      return get_operand(o);
    }
    SymBitVector& operator[](const x64asm::Operand o) {
      return const_cast<SymBitVector&>(get_operand(o));
    }

  private:

    /** Compute the symbolic representation of some operand */
    const SymBitVector& get_operand(x64asm::Operand o) const;

    /** Builds a symbolic CPU state from a concerete one */
    void build_from_cpustate(const CpuState& cs);
};

}; //namespace stoke


#endif
