
#ifndef _STOKE_SRC_SYMSTATE_SYM_STATE_H
#define _STOKE_SRC_SYMSTATE_SYM_STATE_H

#include <array>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/symstate/regs.h"

namespace stoke {

class SymState {

public:

  /** Returns a new symbolic CPU state filled with 0s*/
  SymState() : gp(16, 64), sse(16, 256) { }
  /** Builds a symbolic CPU state from a concrete one */
  SymState(const CpuState& cs) : gp(16, 64), sse(16, 256) {
    build_from_cpustate(cs);
  }
  /** Builds a symbolic CPU state with variable name suffix */
  SymState(const std::string& suffix) : gp(16, 64), sse(16, 256) {
    build_with_suffix(suffix);
  }

  /** Symbolic general purpose registers */
  SymRegs gp;
  /** Symbolic SSE registers */
  SymRegs sse;
  /** Symbolic rflags: CF, PF, AF, ZF, SF, OF */
  std::array<SymBool, 6> rf;

  /** Lookup the symbolic representation of a generic operand */
  SymBitVector operator[](const x64asm::Operand o) const;
  /** Lookup the symbolic representation of a particular flag */
  SymBool operator[](const x64asm::Eflags rf) const;

  /** Set the operand in the symbolic state to the specified bitvector.
    *
    * If the operand is smaller than its parent register, the parent register is
    * preserved on the other bits *unless* (i) we're storing into the lower
    * 32-bits of a 64-bit gp register, or (ii) it's an AVX instruction storing
    * into the lower 128 bits of a ymm register; in both cases the other bits
    * would be zero'd out.
    *
    * The preserve32 param overrides the behavior of zeroing out the upper 32-bits
    * of 64-bit gp registers, and the avx param enables zeroing out the upper 128
    * bits of ymm registers.
    */
  void set(const x64asm::Operand o, SymBitVector bv, bool avx = false, bool preserve32 = false);
  /** Set a particular flag */
  void set(const x64asm::Eflags, SymBool b);

  /** Add constraint */
  void add_constraint(const SymBool& b) {
    constraints.push_back(b);
  }
  /** Vector of constraints */
  std::vector<SymBool> constraints;

  /** Generate constraints expressing equality of two states over a given regset */
  std::vector<SymBool> equality_constraints(const SymState& other, 
                                     const x64asm::RegSet& rs = x64asm::RegSet::universe()) const;


private:

  /** Builds a symbolic CPU state from a concerete one */
  void build_from_cpustate(const CpuState& cs);
  /** Builds a symbolic CPU state with variables */
  void build_with_suffix(const std::string& str);


};

}; //namespace stoke


#endif
