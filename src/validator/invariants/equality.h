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

  EqualityInvariant(std::vector<Variable> terms, long constant, uint64_t modulus = 0) : 
    terms_(terms), constant_(constant), modulus_(modulus) {

    assert(modulus_ != 1);

  }

  /** Check if this invariant holds over an abstract state */
  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    set_di(target, number, false);
    set_di(rewrite, number, true);

    size_t size = 64;
    for(auto var : terms_) {
      if(var.size*8 > size)
        size = var.size*8;
    }


    // simplification step: find greatest k s.t. 2^k | C for all coefficients C
    // (replace this with a shift)
    size_t k = 64;
    for (auto term : terms_) {
      //std::cout << std::hex << "coefficient: " << term.coefficient << std::endl;
      if(term.coefficient > 0) {
        size_t zeros = __builtin_ctzl(term.coefficient);
        //std::cout << "pos coefficient zeros = " << zeros << std::endl;
        if(zeros < k)
          k = zeros;
      } else if (term.coefficient < 0) {
        size_t zeros = __builtin_ctzl(-term.coefficient);
        //std::cout << "neg coefficient zeros = " << zeros << std::endl;
        if(zeros < k)
          k = zeros;
      } else {
        //std::cout << "zero coefficient found" << std::endl;
      }
    }

    //std::cout << "k = " << k << std::endl;
    if(k == 64 || modulus_ != 0)
      k = 0;

    SymBitVector sum = SymBitVector::constant(size-k, 0);
    // proceed, chopping off the top k bits from each term
    for (auto term : terms_) {
      if(term.coefficient == 0)
        continue;

      auto value = term.from_state(target, rewrite);
      auto value_ext = value.sign_extend(size);
      auto normalized_term = (term.coefficient >> k);
      auto coefficient = SymBitVector::constant(64, normalized_term);
      if(k) 
        value_ext = value_ext[size-1-k][0];
      if(size-k < 64)
        coefficient = coefficient[size-k-1][0];
      auto coefficient_ext = coefficient.sign_extend(size-k);
      sum = sum + coefficient_ext*value_ext;
    }

    if(modulus_ == 0)
      return sum == SymBitVector::constant(size-k, constant_);
    else
      return 
        ((sum - SymBitVector::constant(size, constant_)) 
          % SymBitVector::constant(size, modulus_)) 
        == SymBitVector::constant(size, 0);
  }

  /** Check if this invariant holds over a concrete state. */
  bool check(const CpuState& target, const CpuState& rewrite) const {
    auto sum = calculate_lhs(target, rewrite);

    if(modulus_ == 0)
      return sum == (uint64_t)constant_;
    else
      return ((uint64_t)constant_ - sum) % modulus_ == 0;
  }

  /** Calculate the sum of terms on the left hand side. */
  uint64_t calculate_lhs(const CpuState& target, const CpuState& rewrite) const {
    uint64_t sum = 0;

    // TODO: properly handle invariants of more than 64 bits
    for (auto term : terms_) {
      auto value64 = term.from_state(target, rewrite);
      sum = sum + term.coefficient*value64;
    }

    return sum;
  }

  std::ostream& write(std::ostream& os) const {
    bool not_first = false;

    for (auto term : terms_) {

      if (not_first)
        os << " + ";

      if (term.coefficient != 0) {
        os << std::hex;
        os << term;
        os << std::dec;
      }

      not_first = true;
    }

    if (!not_first) {
      if (constant_ == 0)
        os << "true";
      else
        os << "false";
    } else {
      os << std::hex;
      os << " = 0x" << constant_;
      os << std::dec;
    }
    if(modulus_ != 0) {
      os << " (mod " << modulus_ << ")";
    }

    return os;
  }

  virtual std::vector<Variable> get_variables() const {
    return terms_;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "EqualityInvariant" << std::endl;
    out << constant_ << " " << modulus_ << std::endl;
    out << terms_.size() << std::endl;
    for(auto it : terms_) {
      it.serialize(out);
    }
    return out;
  }

  EqualityInvariant(std::istream& is) {
    size_t count;
    is >> constant_ >> modulus_ >> count;
    CHECK_STREAM(is);
    for(size_t i = 0; i < count; ++i) {
      Variable v(is);
      terms_.push_back(v);
    }
  }

  std::shared_ptr<Invariant> clone() const override {
    return std::make_shared<EqualityInvariant>(terms_, constant_, modulus_);
  }

  std::vector<Variable> get_terms() const {
    return terms_;
  }

  /** return true if we're sure that *this does not imply inv. */
  virtual bool does_not_imply(std::shared_ptr<Invariant> inv) const override {
    auto casted = std::dynamic_pointer_cast<EqualityInvariant>(inv);
    if(casted) {
      auto our_terms = casted->get_terms();
      auto their_terms = casted->get_terms();
      for(auto ours : our_terms) {
        bool found_one = false;
        for(auto theirs : their_terms) {
          if(ours.is_related(theirs)) {
            found_one = true;
            break;
          }
        }
        if(!found_one)
          return true;
      }
      for(auto theirs : their_terms) {
        bool found_one = false;
        for(auto ours : our_terms) {
          if(theirs.is_related(ours)) {
            found_one = true;
            break;
          }
        }
        if(!found_one)
          return true;
      }
    }
    return false;
  }


private:

  std::vector<Variable> terms_;
  long constant_;
  uint64_t modulus_;

};

} // namespace stoke



#endif
