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

  SignInvariant(const Variable& var, bool positive) :
    variable_(var), positive_(positive) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    set_di(target, number, false);
    set_di(rewrite, number, true);

    auto value = variable_.from_state(target, rewrite);

    if (positive_)
      return value.s_ge(SymBitVector::constant(variable_.size*8, 0));
    else
      return value.s_le(SymBitVector::constant(variable_.size*8, 0));
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    int64_t value = variable_.from_state(target, rewrite);

    if (positive_)
      return value >= 0;
    else
      return value <= 0;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    result.push_back(variable_);
    return result;
  }

  std::ostream& write(std::ostream& os) const {
    os << variable_;

    if (positive_)
      os << " >= 0";
    else
      os << " <= 0";

    return os;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "SignInvariant" << std::endl;
    variable_.serialize(out);
    out << positive_ << std::endl;
    return out;
  }

  SignInvariant(std::istream& is) : variable_(is) {
    is >> positive_;
    CHECK_STREAM(is);
  }



private:

  Variable variable_;
  bool positive_;

};

} // namespace stoke



#endif
