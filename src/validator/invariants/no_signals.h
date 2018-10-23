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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_NOSIGNALS_H
#define STOKE_SRC_VALIDATOR_INVARIANT_NOSIGNALS_H

#include "src/validator/invariant.h"


namespace stoke {

class NoSignalsInvariant : public Invariant {

public:
  using Invariant::check;

  NoSignalsInvariant() {
  }

  SymBool operator()(SymState& left, SymState& right, size_t& number) {

    return (left.sigbus == SymBool::_false()) &
           (left.sigfpe == SymBool::_false()) &
           (left.sigsegv == SymBool::_false()) &
           (right.sigbus == SymBool::_false()) &
           (right.sigfpe == SymBool::_false()) &
           (right.sigsegv == SymBool::_false());
  }

  std::ostream& write(std::ostream& os) const {
    os << "no signals";
    return os;
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {
    return target.code == ErrorCode::NORMAL && rewrite.code == ErrorCode::NORMAL;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "NoSignalsInvariant" << std::endl;
    return out;
  }

  NoSignalsInvariant(std::istream& is) { 
    CHECK_STREAM(is);
  }

  std::shared_ptr<Invariant> clone() const override {
    return std::make_shared<NoSignalsInvariant>();
  }

  virtual bool is_critical() {
    return true;
  }


private:

};

} // namespace stoke



#endif
