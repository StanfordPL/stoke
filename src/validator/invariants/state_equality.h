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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_STATE_EQUALITY_H
#define STOKE_SRC_VALIDATOR_INVARIANT_STATE_EQUALITY_H

#include "src/ext/x64asm/include/x64asm.h"
#include "src/validator/invariant.h"


namespace stoke {

class StateEqualityInvariant : public Invariant {

public:
  using Invariant::check;

  StateEqualityInvariant(x64asm::RegSet rs, std::vector<Variable> ghosts = {}) : rs_(rs) {
    ghost_variables_ = ghosts;
    for (auto it : ghosts) {
      ghost_names_.push_back(it.name);
    }
  }

  SymBool operator()(SymState& left, SymState& right, size_t& number) {
    SymBool b = SymBool::_true();
    for (auto it : left.equality_constraints(right, rs_, ghost_names_))
      b = b & it;
    return b;
  }

  std::ostream& write(std::ostream& os) const {
    os << "(t/r agree on " << rs_;
    for (auto it : ghost_names_) {
      os << ", " << it;
    }
    os << ")";

    return os;
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {
    for (auto it = rs_.gp_begin(); it != rs_.gp_end(); ++it) {
      if (target[*it] != rewrite[*it])
        return false;
    }
    for (auto it = rs_.sse_begin(); it != rs_.sse_end(); ++it) {
      if (target[*it] != rewrite[*it])
        return false;
    }
    for (auto it = rs_.flags_begin(); it != rs_.flags_end(); ++it) {
      if (target.rf.is_set((*it).index()) != rewrite.rf.is_set((*it).index()))
        return false;
    }

    // check that shadow values are the same
    for (auto ghost : ghost_names_)
      if (target.shadow.at(ghost) != rewrite.shadow.at(ghost))
        return false;

    return true;
  }

  std::vector<Variable> get_variables() {
    return ghost_variables_;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "StateEqualityInvariant" << std::endl;
    out << rs_ << std::endl;
    out << ghost_variables_.size() << std::endl;
    for(auto v : ghost_variables_)
      v.serialize(out);
    return out;
  }

  StateEqualityInvariant(std::istream& is) {
    size_t count;
    is >> rs_ >> count;
    CHECK_STREAM(is);
    for(size_t i = 0; i < count; ++i) {
      Variable v(is);
      CHECK_STREAM(is);
      ghost_names_.push_back(v.name);
      ghost_variables_.push_back(v);
    }
  }

  Invariant* clone() const {
    return new StateEqualityInvariant(rs_, ghost_variables_);
  }


private:
  x64asm::RegSet rs_;

  std::vector<std::string> ghost_names_;
  std::vector<Variable> ghost_variables_;

};

} // namespace stoke



#endif
