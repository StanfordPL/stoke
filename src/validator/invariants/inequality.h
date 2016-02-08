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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_INEQUALITY_H
#define STOKE_SRC_VALIDATOR_INVARIANT_INEQUALITY_H

#include "src/validator/invariant.h"

namespace stoke {

class InequalityInvariant : public Invariant {

public:
  using Invariant::check;

  InequalityInvariant(const x64asm::R& reg1, const x64asm::R& reg2, 
                      bool reg1_is_rewrite, bool reg2_is_rewrite,
                      bool is_strict, bool is_signed=false) : 
    reg1_(reg1), reg2_(reg2), 
    reg1_is_rewrite_(reg1_is_rewrite), reg2_is_rewrite_(reg2_is_rewrite),
    is_strict_(is_strict), is_signed_(is_signed) {

    assert(reg1.size() == reg2.size());
  }

  SymBool operator()(const SymState& target, const SymState& rewrite) const {

    auto lhs = (reg1_is_rewrite_ ? rewrite : target).lookup(reg1_);
    auto rhs = (reg2_is_rewrite_ ? rewrite : target).lookup(reg2_);

    if(!is_signed_) {

      // unsigned compare
      if(is_strict_) {
        return (lhs < rhs);
      } else {
        return (lhs <= rhs);
      }
    } else {

      // signed compare
      if(is_strict_) {
        return lhs.s_lt(rhs);
      } else {
        return lhs.s_le(rhs);
      }
    }
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    auto lhs = (reg1_is_rewrite_ ? rewrite : target)[reg1_];
    auto rhs = (reg2_is_rewrite_ ? rewrite : target)[reg2_];

    // Unsigned is easy!
    if(!is_signed_) {
      if(is_strict_) {
        return (lhs < rhs);
      } else {
        return (lhs <= rhs);
      }
    }

    // Signed case;
    switch(reg1_.size()) {
      case 32:

        if(is_strict_) {
          return (int32_t)lhs < (int32_t)rhs;
        } else {
          return (int32_t)lhs <= (int32_t)rhs;
        }

        break;
      case 64:

        if(is_strict_) {
          return (int64_t)lhs < (int64_t)rhs;
        } else {
          return (int64_t)lhs <= (int64_t)rhs;
        }

        break;
      default:
        assert(false);
    }

    assert(false);
    return false;
  }

  std::ostream& write(std::ostream& os) const {
    os << reg1_;
    if (reg1_is_rewrite_)
      os << "'";

    if(is_strict_)
      os << " <";
    else
      os << " ≤";

    if(is_signed_) {
      os << "ₛ";
    } 
    os << " ";

    os << reg2_;
    if (reg2_is_rewrite_)
      os << "'";

    return os;
  }

private:

  x64asm::R reg1_;
  x64asm::R reg2_;

  bool reg1_is_rewrite_;
  bool reg2_is_rewrite_;

  bool is_strict_;
  bool is_signed_;

};

} // namespace stoke



#endif
