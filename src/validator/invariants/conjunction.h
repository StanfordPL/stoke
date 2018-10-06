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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_CONJUNCTION_H
#define STOKE_SRC_VALIDATOR_INVARIANT_CONJUNCTION_H

#include "src/validator/invariant.h"

namespace stoke {

class ConjunctionInvariant : public Invariant {

public:
  using Invariant::check;

  ConjunctionInvariant() : invariants_() { }

  ConjunctionInvariant(std::vector<Invariant*> invariants) : invariants_(invariants) { }

  /** makes a copy of the container, but not a deep copy */
  ConjunctionInvariant(ConjunctionInvariant* other) : invariants_(other->invariants_) { }

  ConjunctionInvariant& add_invariants(ConjunctionInvariant* invs) {
    for (size_t i = 0; i < invs->size(); ++i)
      add_invariant((*invs)[i]);
    return *this;
  }
  ConjunctionInvariant& add_invariant(Invariant* inv) {
    invariants_.push_back(inv);
    return *this;
  }

  SymBool operator()(SymState& left, SymState& right, size_t& number) {
    SymBool b = SymBool::_true();

    for (auto it : invariants_) {
      b = b & (*it)(left, right, number);
      number++;
    }

    return b;
  }

  void get_dereference_map(DereferenceMap& deref_map, const CpuState& target, const CpuState& rewrite, size_t& number) {
    for(auto it : invariants_) {
      it->get_dereference_map(deref_map, target, rewrite, number);
      number++;
    }
  };

  Invariant* operator[](size_t n) const {
    assert(n < invariants_.size());
    return invariants_[n];
  }

  size_t size() const {
    return invariants_.size();
  }

  void remove(size_t i) {
    invariants_.erase(invariants_.begin() + i);
  }

  bool check (const CpuState& target, const CpuState& rewrite) const {
   for (auto it : invariants_) {
     if (!it->check(target, rewrite))
       return false;
     }
     return true;
  }

 std::ostream& write_pretty(std::ostream& os) const {

    if (invariants_.size() == 0) {
      os << "    true" << std::endl;
      return os;
    }

    for (size_t i = 0; i < invariants_.size(); ++i) {
      os << "    ";
      invariants_[i]->write(os);
      if (i != invariants_.size() - 1) {
        os << " ^ " << std::endl;
      }
    }
    os << std::endl;
    return os;
  }


  std::ostream& write(std::ostream& os) const {

    if (invariants_.size() == 0) {
      os << "true";
      return os;
    }

    if (invariants_.size() == 1) {
      invariants_[0]->write(os);
      return os;
    }

    for (size_t i = 0; i < invariants_.size(); ++i) {
      invariants_[i]->write(os);
      if (i != invariants_.size() - 1) {
        os << " ^ ";
      }
    }
    return os;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    for (auto it : invariants_) {
      auto prev = it->get_variables();
      result.insert(result.end(), prev.begin(), prev.end());
    }
    return result;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "ConjunctionInvariant" << std::endl;
    out << invariants_.size() << std::endl;
    for(auto it : invariants_) {
      it->serialize(out);
    }
    return out;
  }

  ConjunctionInvariant(std::istream& is) {
    size_t count;
    is >> count;
    for(size_t i = 0; i < count; ++i) {
      invariants_.push_back(Invariant::deserialize(is));
      CHECK_STREAM(is);
    }
  }

  Invariant* clone() const {
    std::vector<Invariant*> new_invs;
    for(auto inv : invariants_)
      new_invs.push_back(inv->clone());
    return new ConjunctionInvariant(new_invs);
  }

private:

  std::vector<Invariant*> invariants_;

};

} // namespace stoke



#endif
