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
#include "src/validator/variable.h"

namespace stoke {

class InequalityInvariant : public Invariant {

public:
  using Invariant::check;

  InequalityInvariant(const Variable& v1, const Variable& v2, 
                      bool is_strict, bool is_signed=false, uint64_t lhs_constant = 0) :
    variable1_(v1), variable2_(v2),
    is_strict_(is_strict), is_signed_(is_signed),
    lhs_constant_(lhs_constant) {
    assert(v1.size == v2.size);
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    set_di(target, number, false);
    set_di(rewrite, number, true);

    auto lhs = variable1_.from_state(target, rewrite);
    auto rhs = variable2_.from_state(target, rewrite);

    if(lhs_constant_) {
      lhs = lhs + SymBitVector::constant(variable1_.size*8, lhs_constant_);
    }

    if (!is_signed_) {

      // unsigned compare
      if (is_strict_) {
        return (lhs < rhs);
      } else {
        return (lhs <= rhs);
      }
    } else {

      // signed compare
      if (is_strict_) {
        return lhs.s_lt(rhs);
      } else {
        return lhs.s_le(rhs);
      }
    }
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    uint64_t lhs = variable1_.from_state(target, rewrite) + lhs_constant_;
    uint64_t rhs = variable2_.from_state(target, rewrite);

    // Unsigned is easy!
    if (!is_signed_) {
      if (is_strict_) {
        return (lhs < rhs);
      } else {
        return (lhs <= rhs);
      }
    }

    // Signed case;
    switch (variable1_.size) {
    case 1:
      if (is_strict_) {
        return (int8_t)lhs < (int8_t)rhs;
      } else {
        return (int8_t)lhs <= (int8_t)rhs;
      }
      break;

    case 2:
      if (is_strict_) {
        return (int16_t)lhs < (int16_t)rhs;
      } else {
        return (int16_t)lhs <= (int16_t)rhs;
      }
      break;

    case 3:
      if (is_strict_) {
        return (int32_t)lhs < (int32_t)rhs;
      } else {
        return (int32_t)lhs <= (int32_t)rhs;
      }

      break;
    case 4:
      if (is_strict_) {
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
    os << variable1_;
    if(lhs_constant_ != 0) {
      os << " + " << lhs_constant_;
    }

    if (is_strict_)
      os << " <";
    else
      os << " ≤";

    if (is_signed_) {
      os << "ₛ";
    }
    os << " " << variable2_;

    return os;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    result.push_back(variable1_);
    result.push_back(variable2_);
    return result;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "InequalityInvariant" << std::endl;
    variable1_.serialize(out);
    variable2_.serialize(out);
    out << is_strict_ << " " << is_signed_ << " " << lhs_constant_ << std::endl;
    return out;
  }

  InequalityInvariant(std::istream& is) : variable1_(is), variable2_(is) {
    is >> is_strict_ >> is_signed_;
    CHECK_STREAM(is);
    if(is.peek() == '\n') {
      // version without lhs_constant
      lhs_constant_ = 0;
    } else {
      // version with lhs_constant
      is >> lhs_constant_;
      CHECK_STREAM(is);
    }
  }

  bool is_postponable() const override {
    return false;
  }

  std::shared_ptr<Invariant> clone() const override {
    return std::make_shared<InequalityInvariant>(variable1_, variable2_, is_strict_, is_signed_, lhs_constant_);
  }

private:

  Variable variable1_;
  Variable variable2_;

  bool is_strict_;
  bool is_signed_;

  uint64_t lhs_constant_;

};

} // namespace stoke



#endif
