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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_NOT_H
#define STOKE_SRC_VALIDATOR_INVARIANT_NOT_H

#include "src/validator/invariant.h"

namespace stoke {

class NotInvariant : public Invariant {

public:
  using Invariant::check;

  NotInvariant(Invariant* a) : a_(a) { }

  SymBool operator()(SymState& left, SymState& right, size_t& number) {
    auto a = (*a_)(left, right, number);
    return !a;
  }

  void get_dereference_map(DereferenceMap& deref_map, const CpuState& target, const CpuState& rewrite, size_t& number) {
    a_->get_dereference_map(deref_map, target, rewrite, number);
  };

  bool check (const CpuState& target, const CpuState& rewrite) const {
    auto a = a_->check(target, rewrite);
    return !a;
  }

  std::ostream& write(std::ostream& os) const {

    os << "!( ";
    a_->write(os);
    os << " )";

    return os;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    auto a = a_->get_variables();
    result.insert(result.begin(), a.begin(), a.end());
    return result;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "NotInvariant" << std::endl;
    a_->serialize(out);
    return out;
  }

  NotInvariant(std::istream& is) {
    a_ = Invariant::deserialize(is);
  }

private:

  Invariant* a_;

};

} // namespace stoke



#endif
