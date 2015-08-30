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
#include "src/validator/error.h"
#include "src/validator/validator.h"


namespace stoke {

class BoundedValidator : public Validator {

public:

  BoundedValidator(SMTSolver& solver) : Validator(solver) {
    set_bound(4);
  }

  ~BoundedValidator() {}

  BoundedValidator& set_bound(size_t n) {
    bound_ = n;
    return *this;
  }

  /** Evalue if the target and rewrite are the same */
  bool verify(const Cfg& target, const Cfg& rewrite);

  /** Sandbox callback to record path */
  static void sandbox_path_callback(const StateCallbackData& data, void* arg);

  /** Sandbox callback to record aliasing data */
  static void sandbox_aliasing_callback(const StateCallbackData& data, void* arg);

private:
  typedef std::vector<Cfg::id_type> Path;

  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };

  /** The bound on iterations */
  size_t bound_;

  /** Run cfg on all testcases, learn the paths, and store them.*/
  void learn_paths(const Cfg&, bool is_rewrite);
  /** Verify a pair of paths. */
  bool verify_pair(const Cfg& target, const Cfg& rewrite, const Path& p, const Path& q);
  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&);
  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const Path& P, size_t i);

  /** Traces for the target/rewrite. */
  std::vector<Path> paths_[2];
  /** Map taking a path in the target/rewrite to testcases that work with it. */
  std::map<Path, std::vector<size_t>> path_to_testcase_[2];

  /** The current path we're adding to in the callback */
  Path* current_path_;
  /** The current trace of memory addresses we're adding in the aliasing callback */
  std::vector<uint64_t>* current_memory_trace_;


  /** File where error occurred */
  std::string error_file_;
  /** Line where error occurred */
  size_t error_line_;

};




} // namespace stoke



#endif
