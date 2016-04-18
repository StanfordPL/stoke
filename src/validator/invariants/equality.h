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

namespace stoke {

class EqualityInvariant : public Invariant {

public:
  using Invariant::check;

  struct Term {
    x64asm::Operand reg;
    bool sign_extend;
    size_t index;
    long coefficient;
    bool is_rewrite;

    /** From an abstract state, find the abstract value of this term. */
    SymBitVector from_state(SymState& target, SymState& rewrite) {
      auto& prog = this->is_rewrite ? rewrite : target;
      auto r = this->reg;
      auto value64 = prog[r];

      if (r.size() < 64 && this->sign_extend) {
        value64 = value64.sign_extend(64);
      } else if (r.size() < 64) {
        value64 = SymBitVector::constant(64-r.size(), 0) || value64;
      } else if (r.size() >= 64) {
        value64 = value64[this->index*64+63][this->index*64];
      } else {
        assert(false);
      }

      return value64;
    }

    /** From a concrete state, find the value of this term. */
    uint64_t from_state(const CpuState& target, const CpuState& rewrite) {

      auto& prog = this->is_rewrite ? rewrite : target;
      auto r = this->reg;
      auto value = prog[r];
      uint64_t value64 = 0;

      if (r.size() < 64 && this->sign_extend) {
        value64 = (uint64_t)value.get_fixed_double(0);
        if (value64 & 0x80000000)
          value64 = value64 | 0xffffffff00000000;
      } else if (r.size() < 64) {
        value64 = (uint64_t)value.get_fixed_double(0);
      } else if (r.size() >= 64) {
        value64 = value.get_fixed_quad(this->index);
      } else {
        assert(false);
      }

      return value64;
    }

    Term() : reg(x64asm::rax), sign_extend(false), index(0), coefficient(0), is_rewrite(false) { }
  };

  EqualityInvariant(std::vector<Term> terms, long constant) : terms_(terms) {
    constant_ = constant;
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

      if (term.coefficient != 0) {
        if (not_first && term.coefficient > 0) {
          os << " + ";
        } else if (not_first && term.coefficient < 0) {
          os << " - ";
        } else {
          not_first = true;
          if (term.coefficient < 0) {
            os << "-";
          }
        }

        std::string sx = term.sign_extend ? "_sx" : "";
        std::string rewrite = term.is_rewrite ? "'" : "";

        // Coefficient
        if (term.coefficient > 0 && term.coefficient != 1) {
          os << "0x" << term.coefficient << "*";
        } else if (term.coefficient < 0 && term.coefficient != -1) {
          os << "0x" << -term.coefficient << "*";
        }

        // Register
        os << term.reg;

        // Sign Extend
        if (term.sign_extend)
          os << "_sx";

        // Is rewrite?
        if (term.is_rewrite)
          os << "'";

        // Index
        if (term.reg.size() > 64) {
          os << std::dec << "[" << term.index*64+63 << ":" << term.index*64 << std::hex << "]";
        }
      }
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


private:

  std::vector<Term> terms_;
  long constant_;

};

} // namespace stoke



#endif
