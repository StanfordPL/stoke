// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_STATE_CPU_STATE_H
#define STOKE_STATE_CPU_STATE_H

#include <iostream>
#include <sstream>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/error_code.h"
#include "src/state/memory.h"
#include "src/state/regs.h"
#include "src/state/rflags.h"

namespace stoke {

struct CpuState {
  /** Returns a new CpuState. */
  CpuState() : code(ErrorCode::NORMAL), gp(16, 64), sse(16, 256), rf() {
    stack.resize(0x700000000, 0);
    heap.resize (0x100000000, 0);
    data.resize (0x000000000, 0);
  }

  /** Bit-wise xor; ignores error code. */
  CpuState& operator^=(const CpuState& rhs) {
    gp ^= rhs.gp;
    sse ^= rhs.sse;
    rf ^= rhs.rf;
    stack ^= rhs.stack;
    heap ^= rhs.stack;
    data ^= rhs.data;

    return *this;
  }
  /** Bit-wise xor; ignores error code. */
  CpuState operator^(const CpuState& rhs) const {
    auto ret = *this;
    return ret ^= rhs;
  }

  /** Equality. */
  bool operator==(const CpuState& rhs) const {
    return code == rhs.code &&
           gp == rhs.gp && sse == rhs.sse && rf == rhs.rf &&
           stack == rhs.stack && heap == rhs.heap && data == rhs.data;
  }
  /** Inequality. */
  bool operator!=(const CpuState& rhs) const {
    return !(*this == rhs);
  }

  /** Access to a general purpose register. */
  uint64_t operator[](const x64asm::R& reg) const {
    size_t start = 0;
    size_t idx = reg;
    if (reg.type() == x64asm::Type::RH) {
      start = 8;
      idx -= 4;
    }
    return read_gp(idx, reg.size(), start);
  }
  /** Access to Rh register. */
  uint8_t operator[](const x64asm::Rh& reg) const {
    return (*this)[(x64asm::R&)reg];
  }
  /** Access to R8 register. */
  uint8_t operator[](const x64asm::R8& reg) const {
    return (*this)[(x64asm::R&)reg];
  }
  /** Access to R16 register. */
  uint16_t operator[](const x64asm::R16& reg) const {
    return (*this)[(x64asm::R&)reg];
  }
  /** Access to R32 register. */
  uint32_t operator[](const x64asm::R32& reg) const {
    return (*this)[(x64asm::R&)reg];
  }
  /** Access to R64 register. */
  uint64_t operator[](const x64asm::R64& reg) const {
    return (*this)[(x64asm::R&)reg];
  }
  /** Read the general purpose register with index idx, a given width that starts at bit `start`. */
  uint64_t read_gp(size_t idx, size_t width, size_t start) const {
    auto full = gp[idx].get_fixed_quad(0);
    uint64_t mask = ((uint64_t)1 << width) - 1;
    if (width == 64)
      mask = -1;
    mask <<= start;
    auto val = full & mask;
    val >>= start;
    return val;
  }

  /** Update a general purpose register. */
  void update(const x64asm::R& reg, uint64_t val) {
    size_t start = 0;
    size_t idx = reg;
    if (reg.type() == x64asm::Type::RH) {
      start = 8;
      idx -= 4;
    }
    gp_update(idx, reg.size(), val, start);
  }
  /** Update an Rh register. */
  void update(const x64asm::Rh& reg, uint8_t val) {
    update((x64asm::R&)reg, val);
  }
  /** Update an R8 register. */
  void update(const x64asm::R8& reg, uint8_t val) {
    update((x64asm::R&)reg, val);
  }
  /** Update an R16 register. */
  void update(const x64asm::R16& reg, uint16_t val) {
    update((x64asm::R&)reg, val);
  }
  /** Update an R16 register. */
  void update(const x64asm::R16& reg, uint32_t val) {
    update((x64asm::R&)reg, val);
  }
  /** Update an R64 register. */
  void update(const x64asm::R64& reg, uint64_t val) {
    update((x64asm::R&)reg, val);
  }

  /** Write text. */
  std::ostream& write_text(std::ostream& os) const;
  /** Read text. */
  std::istream& read_text(std::istream& is);

  /** Write binary. */
  std::ostream& write_bin(std::ostream& os) const;
  /** Read binary. */
  std::istream& read_bin(std::istream& is);

  /** Perform sanity checks on the contents of this cpu state. */
  void check(std::istream& is) const;

  /** The error code associated with this state. */
  ErrorCode code;
  /** General purpose register buffer. */
  Regs gp;
  /** SSE register buffer. */
  Regs sse;
  /** Rflags. */
  RFlags rf;
  /** Stack. */
  Memory stack;
  /** Heap. */
  Memory heap;
  /** Data. */
  Memory data;

  /** Get the memory address corresponding to a memory operand */
  uint64_t get_addr(x64asm::M8 ref) const;
  /** Get the memory address corresponding to an instruction */
  uint64_t get_addr(x64asm::Instruction instr) const;

  /** The number of jumps last spent on this testcase */
  uint64_t jumps_seen;
  /** The total latency of the last run of this testcase */
  uint64_t latency_seen;

private:
  /** Update the general purpose register at index idx to value val. */
  void gp_update(size_t idx, size_t width, uint64_t val, size_t start) {
    uint64_t& full = gp[idx].get_fixed_quad(0);
    uint64_t mask = ((uint64_t)1 << width) - 1;
    if (width == 64)
      mask = -1;
    assert((val & (~mask)) == 0);
    mask <<= start;
    full &= (~mask);
    full |= (val << start);
  }
};

} // namespace stoke

namespace std {

inline std::ostream& operator<<(std::ostream& os, const stoke::CpuState& cs) {
  return cs.write_text(os);
}

inline std::istream& operator>>(std::istream& is, stoke::CpuState& cs) {
  return cs.read_text(is);
}

} // namespace std

#endif
