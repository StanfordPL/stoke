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

#include "src/state/error_code.h"
#include "src/state/regs.h"
#include "src/state/rflags.h"
#include "src/state/memory.h"

namespace stoke {

/* #include'ing src/symstate/memory.h has problems for PIN, so make this easy. */
//class SymMemory;

struct CpuState {
  /** Returns a new CpuState. */
  CpuState(size_t stack_size = 0, size_t heap_size = 0, uint64_t base = 0) :
    code(ErrorCode::NORMAL), gp(16, 64), sse(16, 256), rf() {
    stack.resize(0, stack_size);
    heap.resize(base, heap_size);
  }

  /** Bit-wise xor; ignores error code. */
  CpuState& operator^=(const CpuState& rhs) {
    gp ^= rhs.gp;
    sse ^= rhs.sse;
    rf ^= rhs.rf;
    stack ^= rhs.stack;
    heap ^= rhs.stack;

    return *this;
  }
  /** Bit-wise xor; ignores error code. */
  CpuState operator^(const CpuState& rhs) const {
    auto ret = *this;
    return ret ^= rhs;
  }

  /** Equality. */
  bool operator==(const CpuState& rhs) const {
    return code == rhs.code && gp == rhs.gp && sse == rhs.sse &&
           rf == rhs.rf && stack == rhs.stack && heap == rhs.heap;
  }
  /** Inequality. */
  bool operator!=(const CpuState& rhs) const {
    return !(*this == rhs);
  }

  /** Write text. */
  std::ostream& write_text(std::ostream& os) const;
  /** Read text. */
  std::istream& read_text(std::istream& is);

  /** Write binary. */
  std::ostream& write_bin(std::ostream& os) const {
    os.write((const char*)&code, sizeof(ErrorCode));
    gp.write_bin(os);
    sse.write_bin(os);
    rf.write_bin(os);
    stack.write_bin(os);
    heap.write_bin(os);

    return os;
  }
  /** Read binary. */
  std::istream& read_bin(std::istream& is) {
    is.read((char*)&code, sizeof(ErrorCode));
    gp.read_bin(is);
    sse.read_bin(is);
    rf.read_bin(is);
    stack.read_bin(is);
    heap.read_bin(is);

    return is;
  }

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
