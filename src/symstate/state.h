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


#ifndef _STOKE_SRC_SYMSTATE_SYM_STATE_H
#define _STOKE_SRC_SYMSTATE_SYM_STATE_H

#include <array>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/symstate/memory.h"
#include "src/symstate/regs.h"

namespace stoke {

class SymState {

public:

  /** Returns a new symbolic CPU state filled with 0s*/
  SymState() : gp(16, 64), sse(16, 256), memory(NULL), delete_memory_(false) { }
  /** Builds a symbolic CPU state from a concrete one */
  SymState(const CpuState& cs) : gp(16, 64), sse(16, 256) {
    build_from_cpustate(cs);
  }
  /** Builds a symbolic CPU state with variable name suffix */
  SymState(const std::string& suffix) : gp(16, 64), sse(16, 256), memory(NULL), delete_memory_(false) {
    build_with_suffix(suffix);
  }

  ~SymState() {
    if (delete_memory_)
      delete memory;
  }

  /** Symbolic general purpose registers */
  SymRegs gp;
  /** Symbolic SSE registers */
  SymRegs sse;
  /** Memory */
  SymMemory* memory;
  /** Symbolic rflags: CF, PF, AF, ZF, SF, OF */
  std::array<SymBool, 6> rf;
  /** Has a #NP, #SS or #AC exception occurred? (These trigger SIGBUG on linux)*/
  SymBool sigbus;
  /** Has a #DE, #MF or #XM exception occurred? (These trigger SIGFPE on linux) */
  SymBool sigfpe;
  /** Has a #OF, #BR, #TS, #GP or #PF exception occurred? These trigger SIGSEGV on linux) */
  SymBool sigsegv;

  /** Get the address corresponding to a memory location */
  template <typename T>
  SymBitVector get_addr(x64asm::M<T> ref) const;
  /** Get the address corresponding to an instruction */
  SymBitVector get_addr(const x64asm::Instruction& instr) const;

  /** Lookup the symbolic representation of a generic operand.
    * Can modify state if you lookup memory and it causes segfault. */
  SymBitVector operator[](const x64asm::Operand o);
  /** Lookup the symbolic representation of a particular flag */
  SymBool operator[](const x64asm::Eflags rf) const;
  /** Lookup the symbolic representation of a generic operand.
    * Will not trigger symbolic segfaults.  Cannot be used to do memory. */
  SymBitVector lookup(const x64asm::Operand o) const;

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

  /** Mark that a #DE, #MF or #XM exception conditionally occurs */
  //TODO: check for identically false for simplification purposes
  inline void set_sigfpe(SymBool b) {
    sigfpe = sigfpe | (!sigbus & !sigsegv & b);
  }
  /** Mark that a #NP, #SS or #AC exception conditionally occurs. */
  inline void set_sigbus(SymBool b) {
    sigbus = sigbus | (!sigfpe & !sigsegv & b);
  }
  /** Mark that a #OF, #BR, #TS, #GP or #PF exception conditionally occurs. */
  inline void set_sigsegv(SymBool b) {
    sigsegv = sigsegv | (!sigfpe & !sigbus & b);
  }

  /** Set the SF/PF/ZF flags according to a given value.  If width
      is provided, it's used; otherwise, we compute it */
  void set_szp_flags(const SymBitVector& v, uint16_t width = 0);

  /** Add constraint */
  void add_constraint(const SymBool& b) {
    constraints.push_back(b);
  }
  /** Vector of constraints */
  std::vector<SymBool> constraints;

  /** Generate constraints expressing equality of two states over a given regset */
  std::vector<SymBool> equality_constraints(const SymState& other,
      const x64asm::RegSet& rs = x64asm::RegSet::universe()) const;

  /** Set the line number.  Used as a parameter to access memory. */
  void set_lineno(size_t line) {
    lineno_ = line;
  }

  /** Replace symbolic values with variables and add constraints.*/
  void simplify();

private:

  /** Builds a symbolic CPU state from a concerete one */
  void build_from_cpustate(const CpuState& cs);
  /** Builds a symbolic CPU state with variables */
  void build_with_suffix(const std::string& str);

  /** Do we need to delete the SymMemory we allocated earlier? */
  bool delete_memory_;

  /** The current line number */
  size_t lineno_;
};

}; //namespace stoke


#endif
