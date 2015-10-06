// Copyright 2013-2015 Stanford University
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

#include "src/symstate/state.h"


namespace stoke {

class NoSignalsInvariant : public Invariant {

public:

  NoSignalsInvariant() {
  }

  SymBool operator()(const SymState& left, const SymState& right) const {

    return (left.sigbus == SymBool::_false()) &
           (left.sigfpe == SymBool::_false()) &
           (left.sigsegv == SymBool::_false()) &
           (right.sigbus == SymBool::_false()) &
           (right.sigfpe == SymBool::_false()) &
           (right.sigsegv == SymBool::_false());
  }

private:

};

} // namespace stoke



#endif
