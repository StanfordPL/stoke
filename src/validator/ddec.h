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

#ifndef STOKE_SRC_VALIDATOR_DDEC_H
#define STOKE_SRC_VALIDATOR_DDEC_H

#include "src/validator/bounded.h"

namespace stoke {

class DdecValidator : public Validator {

public:

  DdecValidator(SMTSolver& solver) : Validator(solver) {
  }

  ~DdecValidator() {}

private:

  typedef std::map<Cfg::id_type, Cfg::id_type> TransitionMap;

  // Find cutpoints.
  // Trivial version: take one cutpoint, namely

  // Check cutpoints (optional)
  // We need to make sure that memory states of (target, rewrite) are the same
  // at corresponding cutpoints.

  // Learn invariant at cutpoint

  // Learn corresponding transitions

  // Generate regex list

  // Prove path (given a regex)

  // Check path equivalence

} // namespace stoke

#endif
