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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_DISJUNCTION_H
#define STOKE_SRC_VALIDATOR_INVARIANT_DISJUNCTION_H

#include "src/validator/invariant.h"

namespace stoke {

class DisjunctionInvariant : public Invariant {

public:
  using Invariant::check;

  DisjunctionInvariant() : invariants_() { }

  DisjunctionInvariant(std::vector<Invariant*> invariants) : invariants_(invariants) { }

  DisjunctionInvariant& add_invariant(Invariant* inv) {
    invariants_.push_back(inv);
    return *this;
  }

  SymBool operator()(SymState& left, SymState& right, size_t& tln, size_t& rln) const {
    SymBool b = SymBool::_false();

    for (auto it : invariants_) {
      b = b | (*it)(left, right, tln, rln);
    }

    return b;
  }

  Invariant* operator[](size_t n) {
    assert(n < invariants_.size());
    return invariants_[n];
  }

  size_t size() {
    return invariants_.size();
  }

  void remove(size_t i) {
    invariants_.erase(invariants_.begin() + i);
  }

  bool check (const CpuState& target, const CpuState& rewrite) const {
    for (auto it : invariants_) {
      if (it->check(target, rewrite))
        return true;
    }
    return false;
  }

  std::ostream& write(std::ostream& os) const {

    if (invariants_.size() == 0) {
      os << "false";
      return os;
    }

    if (invariants_.size() == 1) {
      invariants_[0]->write(os);
      return os;
    }

    os << "( ";
    for (size_t i = 0; i < invariants_.size(); ++i) {
      invariants_[i]->write(os);
      if (i != invariants_.size() - 1) {
        os << " ) v ( ";
      }
    }
    os << " )";
    return os;
  }

  virtual std::vector<x64asm::Mem> target_memory_references() const {
    std::vector<x64asm::Mem> result;
    for(auto it : invariants_) {
      auto prev = it->target_memory_references();
      result.insert(result.begin(), prev.begin(), prev.end());
    }
    return result;
  }

  virtual std::vector<x64asm::Mem> rewrite_memory_references() const {
    std::vector<x64asm::Mem> result;
    for(auto it : invariants_) {
      auto prev = it->rewrite_memory_references();
      result.insert(result.begin(), prev.begin(), prev.end());
    }
    return result;
  }




private:

  std::vector<Invariant*> invariants_;

};

} // namespace stoke



#endif
