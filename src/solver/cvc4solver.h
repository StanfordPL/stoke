// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#ifndef _STOKE_SRC_SOLVER_CVC4SOLVER_H
#define _STOKE_SRC_SOLVER_CVC4SOLVER_H

#include <map>

#include "cvc4/cvc4.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/bitvector.h"

namespace stoke {

class Cvc4Solver {


public:
  /** Instantiate a new Cvc4 solver */
  Cvc4Solver() {
    se_ = new CVC4::SmtEngine(&em_);
    se_->setOption("incrementally", true);
    se_->setLogic("QF_BV");
  }

  /** Check if a query is satisfiable given constraints */
  bool is_sat(const std::vector<SymBool>& constraints);

  /** Check if a satisfying assignment is available. */
  bool has_model() const {
    return false;
  }
  /** Get the satisfying assignment for a bit-vector from the model. */
  cpputil::BitVector get_model_bv(const std::string& var, uint16_t octs);
  /** Get the satisfying assignment for a bit from the model. */
  bool get_model_bool(const std::string& var);

private:

  CVC4::ExprManager em_;
  CVC4::SmtEngine* se_;

};

} //namespace stoke

#endif
