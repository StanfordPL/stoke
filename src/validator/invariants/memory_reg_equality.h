// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_MEMORY_REG_EQUALITY_H
#define STOKE_SRC_VALIDATOR_INVARIANT_MEMORY_REG_EQUALITY_H

#include "src/validator/invariant.h"

namespace stoke {

class MemoryRegEqualityInvariant : public Invariant {

public:
  using Invariant::check;

  MemoryRegEqualityInvariant(const x64asm::R& reg, const x64asm::M& m, bool is_rewrite) 
    : reg_(reg), m_(m), is_rewrite_(is_rewrite) {
    is_rewrite_ = is_rewrite;
  }

  SymBool operator()(const SymState& left, const SymState& right) const {

    if (is_rewrite_) {
      return right.lookup(reg_) == right.lookup(m_);
    } else {
      return left.lookup(reg_) == left.lookup(m_);
    }
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    auto& state = is_rewrite_ ? rewrite : target;

    auto mem_val = state[m_];
    auto reg_val = state[reg_];

    return mem_val == reg_val;
  }

  std::ostream& write(std::ostream& os) const {
    os << reg_;
    if (is_rewrite_)
      os << "'";
    os << "[63][32] == 0";
    return os;
  }

private:

  x64asm::R& reg_;
  x64asm::M& m_;
  bool is_rewrite_;

};

} // namespace stoke



#endif
