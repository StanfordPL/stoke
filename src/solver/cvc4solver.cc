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


#include <iostream>

#include "src/solver/cvc4solver.h"
#include "src/symstate/bitvector.h"

using namespace stoke;
using namespace std;
using namespace CVC4;


bool Cvc4Solver::is_sat(const vector<SymBool>& constraints) {

  Type bitvector32 = em_.mkBitVectorType(32);
  Expr x = em_.mkVar("x", bitvector32);

  se_->query(x);

  return false;
}

/** Get the satisfying assignment for a bit-vector from the model.
    NOTE: This function is very brittle right now.  If you pass in the wrong
    variable/size, there's no way to know and the result you get back is
    undefined. */
cpputil::BitVector Cvc4Solver::get_model_bv(const std::string& var, uint16_t octs) {
  cpputil::BitVector v;
  return v;
}

/** Get the satisfying assignment for a bit from the model.
    NOTE: This function is very brittle right now.  If you pass in the wrong
    variable/size, there's no way to know and the result you get back is
    undefined. */
bool Cvc4Solver::get_model_bool(const std::string& var) {
  return false;
}

