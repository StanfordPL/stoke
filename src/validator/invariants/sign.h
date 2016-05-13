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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_SIGN_H
#define STOKE_SRC_VALIDATOR_INVARIANT_SIGN_H

#include "src/validator/invariant.h"

namespace stoke {

class SignInvariant : public Invariant {

public:
  using Invariant::check;

  SignInvariant(const x64asm::R& reg, bool is_rewrite, bool positive) :
    reg_(reg), is_rewrite_(is_rewrite), positive_(positive) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& tln, size_t& rln) const {

    auto value = (is_rewrite_ ? rewrite : target).lookup(reg_);

    if (positive_)
      return value.s_ge(SymBitVector::constant(64, 0));
    else
      return value.s_le(SymBitVector::constant(64, 0));
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    int64_t value = (int64_t)(is_rewrite_ ? rewrite[reg_] : target[reg_]);

    if (positive_)
      return value >= 0;
    else
      return value <= 0;
  }

  std::ostream& write(std::ostream& os) const {
    os << reg_;
    if (is_rewrite_)
      os << "'";

    if (positive_)
      os << " >= 0";
    else
      os << " <= 0";

    return os;
  }

private:

  x64asm::R reg_;
  bool is_rewrite_;
  bool positive_;

};

} // namespace stoke



#endif
