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
#include "src/cfg/paths.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/validator/alias_miner.h"
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

  /** Returns whether the last counterexample made sense */
  size_t counter_examples_available() {
    return counterexamples_.size();
  }
  /** Gets the counterexample */
  virtual std::vector<CpuState> get_counter_examples() {
    return counterexamples_;
  }

private:

  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };

  /** The bound on iterations */
  size_t bound_;

  /** Run cfg on all testcases, learn the paths, and store them.
    Returns true if it finds at least one good path. */
  bool learn_paths(const Cfg&, bool is_rewrite);
  /** Verify a pair of paths. */
  bool verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q);
  /** Generate a loop-free CFG from a loopy CFG and a path */
  static Cfg path_cfg(const Cfg& cfg, const CfgPath& p);
  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&, size_t& line_no);
  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const CfgPath& P, size_t i);
  /** Find or create a testcase for a pair of paths. */
  bool find_pair_testcase(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q, CpuState& tc);
  /** Synthesize a testcase for a pair of paths. */
  bool brute_force_testcase(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q, CpuState& tc);

  /** For learning aliasing relationships */
  AliasMiner am;
  /** For learning paths */
  CfgPaths cfg_paths;

  /** Traces for the target/rewrite. */
  std::vector<CfgPath> paths_[2];
  /** Map taking a path in the target/rewrite to testcases that work with it. */
  std::map<CfgPath, std::vector<size_t>> path_to_testcase_[2];
  /** Map marking if we've discovered a pair of paths (P,Q) infeasible. */
  std::map<CfgPath, std::map<CfgPath, bool>> paths_infeasible_;

  /** The set of counterexamples (one per pair) that we've found. */
  std::vector<CpuState> counterexamples_;

  // This is to print out Cfg paths easily (for debugging purposes).
  static std::string print(const CfgPath& p) {
    std::stringstream os;
    for (size_t i = 0; i < p.size(); ++i) {
      os << p[i];
      if (i != p.size() - 1)
        os << " ";
    }
    return os.str();
  }


  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing_helper(const Cfg& target, const Cfg& rewrite,
      const Cfg& target_unroll, const Cfg& rewrite_unroll,
      const CfgPath& P, const CfgPath& Q,
      const std::vector<size_t>& target_con_access,
      const std::vector<size_t>& rewrite_con_access,
      const std::vector<CellMemory::SymbolicAccess>& symbolic_access_list,
      size_t sym_accesses_done);

  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q);

  bool check_feasibility(const Cfg& target, const Cfg& rewrite,
                         const Cfg& target_unroll, const Cfg& rewrite_unroll,
                         const CfgPath& P, const CfgPath& Q,
                         const std::vector<CellMemory::SymbolicAccess>& symbolic_access_list);

};



} // namespace stoke

#endif
