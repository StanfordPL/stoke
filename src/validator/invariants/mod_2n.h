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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_MOD2N_H
#define STOKE_SRC_VALIDATOR_INVARIANT_MOD2N_H

#include "src/validator/invariant.h"

namespace stoke {

class Mod2NInvariant : public Invariant {

public:
  using Invariant::check;

  Mod2NInvariant(const x64asm::R& reg, bool is_rewrite, size_t zero_bits) :
    reg_(reg), is_rewrite_(is_rewrite), zero_bits_(zero_bits) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& tln, size_t& rln) const {

    uint64_t mask = (1 << zero_bits_) - 1;
    auto value = (is_rewrite_ ? rewrite : target).lookup(reg_);
    auto anded = value & SymBitVector::constant(64, mask);

    return anded == SymBitVector::constant(64, 0);
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    uint64_t mask = (1 << zero_bits_) - 1;
    auto value = is_rewrite_ ? rewrite[reg_] : target[reg_];
    auto anded = value & mask;

    return anded == 0;
  }

  std::ostream& write(std::ostream& os) const {
    os << reg_;
    if (is_rewrite_)
      os << "'";

    os << " % 2^" << zero_bits_;
    os << " == 0";

    return os;
  }

private:

  x64asm::R reg_;
  bool is_rewrite_;
  size_t zero_bits_;

};

} // namespace stoke



#endif
