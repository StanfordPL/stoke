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

#include "src/validator/cutpoints.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/validator.h"

namespace stoke {

class DdecValidator : public Validator {

public:

  DdecValidator(SMTSolver& solver) : Validator(solver), bv_(solver) {
    cutpoints_ = NULL;
    set_no_bv(false);
    set_sound_nullspace(false);
    set_try_sign_extend(true);
  }

  ~DdecValidator() {
    if (cutpoints_)
      delete cutpoints_;
  }

  /** Turn on/off invariants that sign-extend the 32-bit registers.
      Good for some benchmarks, bad for others.  --no_try_sign_extend */
  DdecValidator& set_try_sign_extend(bool b) {
    try_sign_extend_ = b;
    return *this;
  }
  /** Turn off the bounded validator.  This is a terribly silly thing to do, except
    to demonstrate that most benchmarks don't work without it. --no_ddec_bv */
  DdecValidator& set_no_bv(bool b) {
    no_bv_ = b;
    return *this;
  }
  /** Choose whether to use sound nullspace computation */
  DdecValidator& set_sound_nullspace(bool b) {
    sound_nullspace_ = b;
    return *this;
  }
  /** Set the aliasing strategy for bounded validator */
  DdecValidator& set_alias_strategy(BoundedValidator::AliasStrategy as) {
    //alias_strategy_ = as;
    alias_strategy_ = BoundedValidator::AliasStategy::STRING_NO_ALIAS;
    return *this;
  }
 
  /** Verify if target and rewrite are equivalent. */
  bool verify(const Cfg& target, const Cfg& rewrite);

private:

  /** Find all invariants with CEGAR-style search. */
  std::vector<ConjunctionInvariant*> find_invariants(const Cfg& target, const Cfg& rewrite);
  /** Learn invariants from CpuStates */
  ConjunctionInvariant* learn_disjunction_invariant(x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs, std::vector<CpuState> states, std::vector<CpuState> states2, const x64asm::Instruction& target_instr, const x64asm::Instruction& rewrite_instr);
  /** Learn invariants from CpuStates */
  ConjunctionInvariant* learn_simple_invariant(x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs, std::vector<CpuState> states, std::vector<CpuState> states2);
  /** Use bounded validator to check the invariants. */
  std::vector<CpuState> check_invariants(const Cfg& target, const Cfg& rewrite, std::vector<ConjunctionInvariant*> invariants);
  /** Use bounded validator to check the cutpoints. */
  std::vector<CpuState> check_cutpoints(const Cfg& target, const Cfg& rewrite, std::vector<Cfg::id_type>&, std::vector<Cfg::id_type>&);
  /** Check that all the invariants work. */
  bool check_proof(const Cfg& target, const Cfg& rewrite, const std::vector<ConjunctionInvariant*>& invariants, std::map<size_t, std::vector<size_t>>& failed_invariants);
  /** Generate some extra testcases, for funsies. */
  void make_tcs(const Cfg& target, const Cfg& rewrite);
  /** Print a summary of what we've done */
  void print_summary(const std::vector<ConjunctionInvariant*>&);



  /** Bounded Validator */
  BoundedValidator bv_;

  /** Whatever cutpoints we've generated. */
  Cutpoints* cutpoints_;

  /** Try to sign extend values? */
  bool try_sign_extend_;
  /** Skip the bounded validator? */
  bool no_bv_;
  /** Use the sound nullspace computation? */
  bool sound_nullspace_;
  /** Aliasing strategy for bounded validator. */
  BoundedValidator::AliasStrategy alias_strategy_;
};

} // namespace stoke

#endif
