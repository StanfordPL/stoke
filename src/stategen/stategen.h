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

#ifndef STOKE_SRC_STATEGEN_STATEGEN_H
#define STOKE_SRC_STATEGEN_STATEGEN_H

#include <stdint.h>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"

namespace stoke {

class StateGen {
public:
  /** Creates a new state generator. */
  StateGen(Sandbox* sb, size_t stack_size = 16) : sb_{sb}, stack_size_(stack_size) {
    set_max_attempts(16);
    set_max_memory(1024);
    set_allow_unaligned(false);
  }

  /** Sets the maximum number of attempts to make when generating a state. */
  StateGen& set_max_attempts(size_t ma) {
    max_attempts_ = ma;
    return *this;
  }
  /** Sets the maximum number of bytes to allocate to stack or heap. */
  StateGen& set_max_memory(size_t ms) {
    max_memory_ = ms;
    return *this;
  }
  /** Sets if unaligned accesses are allowed? */
  StateGen& set_allow_unaligned(bool b) {
    allow_unaligned_ = b;
    return *this;
  }

  /** Tries to generate a state that contains random register values; sensible rsp. */
  bool get(CpuState& cs) const;
  /** Tries to generate a state in which cfg can execute without signaling. */
  bool get(CpuState& cs, const Cfg& cfg);

  /** Returns the reason the last attempt to fix a dereference failed. */
  std::string get_error() const {
    return error_message_;
  }

private:
  /** Sandbox */
  Sandbox* sb_;

  /** The minimum stack size. */
  size_t stack_size_;

  /** Replaces the register contents of cs with random bits. */
  void randomize_regs(CpuState& cs) const;

  /** Returns true if we support fixing derefs of this type. */
  bool is_supported_deref(const x64asm::Instruction& instr);

  /** Returns if we've already produced an acceptable state. */
  bool is_ok(const Sandbox&, const x64asm::Instruction& instr);
  /** Returns the address that was dereferenced on this line. */
  uint64_t get_addr(const CpuState& cs, const x64asm::Instruction& instr) const;
  /** Returns the number of bytes dereferenced on this line. */
  size_t get_size(const x64asm::Instruction& instr) const;
  /** Returns true if the memory at this address is already allocated. */
  bool already_allocated(const Memory& mem, uint64_t addr, size_t size) const {
    return mem.in_range(addr) && mem.in_range(addr + size - 1);
  }
  /** Returns true if the memory at this address is misaligned. */
  bool is_misaligned(uint64_t addr, size_t size) const {
    return (size == 16 && ((addr % 16) != 0)) || (size == 32 && ((addr % 32) != 0));
  }

  /** Returns true if a memory can be resized for an address inside it. */
  bool resize_within(Memory& mem, uint64_t addr, size_t size) const;
  /** Returns true if a memory can be resized for an address below it. */
  bool resize_below(Memory& mem, uint64_t addr, size_t size) const;
  /** Returns true if a memory can be resized for an address above it. */
  bool resize_above(Memory& mem, uint64_t addr, size_t size) const;
  /** Randomizes and defines previously invalid memory. */
  void randomize_mem(Memory& mem) const;
  /** Returns true if a memory can be resized to accommadate an access. */
  bool resize_mem(Memory& mem, uint64_t addr, size_t size) const;
  /** Returns true if the memory access on this line was fixable. */
  bool fix(const CpuState& cs, CpuState& fixed, const x64asm::Instruction& instr);
  /** Returns true if we think we've adjusted registers to make memory align. */
  bool fix_misalignment(const CpuState& cs, CpuState& fixed, const x64asm::Instruction& instr);
  /** If we've already tried to fix misalignment.  We can go into an infinite loop
      if this check isn't done. */
  bool tried_to_fix_misalign_;

  /** The maximum number of attempts to make when generating a state. */
  size_t max_attempts_;
  /** The maximum number of bytes to allocate to stack or heap. */
  size_t max_memory_;
  /** The maximum number of jumps to take before sigint. */
  size_t max_jumps_;
  /** If unaligned memory accesses are OK? */
  bool allow_unaligned_;

  /** A textual description of the cause of the last failure. */
  std::string error_message_;
};

} // namespace stoke

#endif
