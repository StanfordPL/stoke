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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_POINTER_NULL_H
#define STOKE_SRC_VALIDATOR_INVARIANT_POINTER_NULL_H

#include "src/validator/invariant.h"
#include "src/validator/variable.h"

namespace stoke {

class PointerNullInvariant : public Invariant {

public:
  using Invariant::check;

  PointerNullInvariant(Variable v, size_t bytes) : variable_(v), size_(bytes) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    /** Get symbolic address */
    auto var_value = variable_.from_state(target, rewrite);

    /** Read from memory and check if zero. */
    auto state = variable_.is_rewrite ? rewrite : target;

    DereferenceInfo di;
    di.is_invariant = true;
    di.invariant_number = number;
    di.is_rewrite = variable_.is_rewrite;
    di.implicit_dereference = false;
    di.line_number = (size_t)(-1);
    
    auto mem_value = state.memory->read(var_value, size_*8, di);
    auto result = mem_value.first == SymBitVector::constant(size_*8, 0);

    return result;
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    auto& state = variable_.is_rewrite ? rewrite : target;

    auto var_value = variable_.from_state(target, rewrite);
    auto mem_value = state.read(var_value, size_);

    for (size_t i = 0; i < size_; ++i) {
      if (mem_value.get_fixed_byte(i) != 0)
        return false;
    }
    return true;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    result.push_back(variable_);
    return result;
  }

  std::ostream& write(std::ostream& os) const {
    os << "*" << variable_ << " == 0";
    return os;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "PointerNullInvariant" << std::endl;
    variable_.serialize(out);
    out << size_ << std::endl;
    return out;
  }

private:

  Variable variable_;
  size_t size_;

};

} // namespace stoke



#endif
