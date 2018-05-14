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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_RANGE_H
#define STOKE_SRC_VALIDATOR_INVARIANT_RANGE_H

#include "src/validator/invariant.h"
#include "src/validator/variable.h"

namespace stoke {

class RangeInvariant : public Invariant {

public:
  using Invariant::check;

  RangeInvariant(const Variable& v, uint64_t min=0, uint64_t max=(uint64_t)(-1)) :
    variable_(v), min_(min), max_(max) { }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    set_di(target, number, false);
    set_di(rewrite, number, true);

    auto v = variable_.from_state(target, rewrite);
    return (SymBitVector::constant(v.width(), min_) <= v) &
           (v <= SymBitVector::constant(v.width(), max_));
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    auto v = variable_.from_state(target, rewrite);
    return (min_ <= v) && (v <= max_);
  }

  std::ostream& write(std::ostream& os) const {
    if(min_ > 0 && max_ < (uint64_t)(-1)) {
      os << min_ << " ≤ " << variable_ << " ≤ " << max_;
    } else if (min_ > 0) {
      os << min_ << " ≤ " << variable_;
    } else if (max_ < (uint64_t)(-1)){
      os << variable_ << " ≤ " << max_;
    } else {
      os << "true";
    }
    return os;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    result.push_back(variable_);
    return result;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "RangeInvariant" << std::endl;
    variable_.serialize(out);
    out << min_ << " " << max_ << std::endl;
    return out;
  }

  RangeInvariant(std::istream& is) : variable_(is) {
    CHECK_STREAM(is);
    std::cout << "got variable: " << variable_ << std::endl;
    //std::string line;
    //std::getline(is, line);
    //std::cout << "got line: " << line << std::endl;
    is >> min_ >> max_; 
    CHECK_STREAM(is);

  }


private:

  Variable variable_;
  uint64_t min_;
  uint64_t max_;

};

} // namespace stoke



#endif
