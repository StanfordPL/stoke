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

  /** The number of jumps last spent on this testcase */
  uint64_t jumps_seen;
  /** The total latency of the last run of this testcase */
  uint64_t latency_seen;
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
