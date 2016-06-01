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

  Mod2NInvariant(const Variable& var, size_t zero_bits) :
    variable_(var), zero_bits_(zero_bits) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& tln, size_t& rln) const {

    uint64_t mask = (1 << zero_bits_) - 1;
    auto value = variable_.from_state(target, rewrite);
    auto anded = value & SymBitVector::constant(variable_.size*8, mask);

    return anded == SymBitVector::constant(variable_.size*8, 0);
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    uint64_t mask = (1 << zero_bits_) - 1;
    auto value = variable_.from_state(target, rewrite);
    auto anded = value & mask;

    return anded == 0;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    result.push_back(variable_);
    return result;
  }


  std::ostream& write(std::ostream& os) const {
    os << variable_ << " % 2^" << zero_bits_ << " = 0";
    return os;
  }

private:

  Variable variable_;
  size_t zero_bits_;

};

} // namespace stoke



#endif
