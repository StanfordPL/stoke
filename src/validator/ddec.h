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

#ifndef STOKE_SRC_VALIDATOR_DDEC_H
#define STOKE_SRC_VALIDATOR_DDEC_H

#include "src/validator/cutpoints.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/learner.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class DdecValidator : public ObligationChecker {

public:

  DdecValidator(SMTSolver& solver) : ObligationChecker(solver) {
    cutpoints_ = NULL;
    set_no_bv(false);
  }

  ~DdecValidator() {
    if (cutpoints_)
      delete cutpoints_;
  }

  /** Turn off the bounded validator.  This is a terribly silly thing to do, except
    to demonstrate that most benchmarks don't work without it. --no_ddec_bv */
  DdecValidator& set_no_bv(bool b) {
    no_bv_ = b;
    return *this;
  }
  /** Set the bound for bounded validator */
  DdecValidator& set_bound(size_t bound) {
    bound_ = bound;
    return *this;
  }

  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  InvariantLearner learner_;

  /** Find all invariants with CEGAR-style search. */
  std::vector<ConjunctionInvariant*> find_invariants(const Cfg& target, const Cfg& rewrite);
  /** Learn invariants from CpuStates */
  ConjunctionInvariant* learn_disjunction_invariant(const Cfg& target, const Cfg& rewrite, size_t cutpoint);
  /** Learn invariants from CpuStates */
  ConjunctionInvariant* learn_simple_invariant(const Cfg& target, const Cfg& rewrite, x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs, const std::vector<CpuState>& states, const std::vector<CpuState>& states2);
  /** Check that all the invariants work. */
  bool check_proof(const Cfg& target, const Cfg& rewrite, const std::vector<ConjunctionInvariant*>& invariants, std::map<size_t, std::vector<size_t>>& failed_invariants);
  /** Generate some extra testcases, for funsies. */
  void make_tcs(const Cfg& target, const Cfg& rewrite);
  /** Print a summary of what we've done */
  void print_summary(const std::vector<ConjunctionInvariant*>&);

  /** Bound */
  size_t bound_;

  /** Whatever cutpoints we've generated. */
  Cutpoints* cutpoints_;

  /** Try to sign extend values? */
  bool try_sign_extend_;
  /** Skip the bounded validator? */
  bool no_bv_;
};

} // namespace stoke

#endif
