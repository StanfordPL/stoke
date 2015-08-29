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

#ifndef STOKE_SRC_VALIDATOR_BOUNDED_H
#define STOKE_SRC_VALIDATOR_BOUNDED_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/validator/validator.h"


namespace stoke {

class BoundedValidator : public Validator {

public:

  BoundedValidator(SMTSolver& solver) : Validator(solver) {}

  ~BoundedValidator() {}

  /** Evalue if the target and rewrite are the same */
  bool verify(const Cfg& target, const Cfg& rewrite);

  /** Sandbox callback to record path */
  static void sandbox_callback(const StateCallbackData& data, void* arg);

private:
  typedef std::vector<Cfg::id_type> Path;

  void learn_paths(const Cfg&, bool is_rewrite);

  /** Traces for the target/rewrite. */
  std::vector<Path> paths_[2];
  /** Map taking a path in the target/rewrite to testcases that work with it. */
  std::map<Path, std::vector<size_t>> path_to_testcase_[2];

  /** The current trace we're adding to in the callback */
  Path* current_path_;

  

};




} // namespace stoke



#endif
