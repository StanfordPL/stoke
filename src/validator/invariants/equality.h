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

// Copyrewrite 2013-2015 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_EQUALITY_H
#define STOKE_SRC_VALIDATOR_INVARIANT_EQUALITY_H

#include "src/validator/invariant.h"
#include "src/validator/variable.h"

namespace stoke {

class EqualityInvariant : public Invariant {

public:
  using Invariant::check;

  EqualityInvariant(std::vector<Variable> terms, long constant) : terms_(terms) {
    constant_ = constant;

    for (auto it : terms) {
      assert(it.size == 8);
    }
  }

  /** Check if this invariant holds over an abstract state */
  SymBool operator()(SymState& target, SymState& rewrite, size_t& tln, size_t& rln) const {
    SymBitVector sum = SymBitVector::constant(64, 0);

    for (auto term : terms_) {
      auto value64 = term.from_state(target, rewrite);
      sum = sum + SymBitVector::constant(64, term.coefficient)*value64;
    }

    return sum == SymBitVector::constant(64, constant_);
  }

  /** Check if this invariant holds over a concrete state. */
  bool check(const CpuState& target, const CpuState& rewrite) const {
    uint64_t sum = 0;

    for (auto term : terms_) {
      auto value64 = term.from_state(target, rewrite);
      sum = sum + term.coefficient*value64;
    }

    return sum == (uint64_t)constant_;
  }

  std::ostream& write(std::ostream& os) const {
    os << std::hex;
    bool not_first = false;

    for (auto term : terms_) {

      if (not_first)
        os << " + ";

      if (term.coefficient != 0) {
        os << term;
      }

      not_first = true;
    }

    if (!not_first) {
      if (constant_ == 0)
        os << "true";
      else
        os << "false";
    } else {
      os << " = 0x" << constant_;
    }
    os << std::dec;

    return os;
  }

  virtual std::vector<Variable> get_variables() const {
    return terms_;
  }


private:

  std::vector<Variable> terms_;
  long constant_;

};

} // namespace stoke



#endif
