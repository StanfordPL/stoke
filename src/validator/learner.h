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

#ifndef STOKE_SRC_VALIDATOR_LEARNING_H
#define STOKE_SRC_VALIDATOR_LEARNING_H

#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/inequality.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class InvariantLearner {

public:

  InvariantLearner() {
    set_sample_tcs(100);
  }

  InvariantLearner& add_ghost(Variable v) {
    ghosts_.push_back(v);
    set_enable_nonlinear(true);
    set_enable_memory(true);
    return *this;
  }

  /** Enable non-linear invariant learning. */
  InvariantLearner& set_enable_nonlinear(bool b) {
    enable_nonlinear_ = b;
    return *this;
  }

  /** Enable invariants over memory. */
  InvariantLearner& set_enable_memory(bool b) {
    enable_memory_ = b;
    return *this;
  }

  /** Set the seed for picking test cases.  (See next option) */
  InvariantLearner& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }

  /** The maximum number of TCs we want to learn over.  If provided with
    more than this number, we'll pick from among them randomly. */
  InvariantLearner& set_sample_tcs(size_t n) {
    sample_tcs_ = n;
    return *this;
  }

  /** Get a reasonable set of variables for a program point. */
  std::vector<Variable> pick_variables(const Cfg& target, const Cfg& rewrite,
                                       Cfg::id_type target_block,
                                       Cfg::id_type rewrite_block);

  /** Learn a precise invariant over a set of data */
  // TODO: add set of memory locations to look at
  ConjunctionInvariant* learn(
    x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const std::vector<CpuState>& states,
    const std::vector<CpuState>& states2,
    std::string target_cc = "",
    std::string rewrite_cc = "");

  /** Learn linear equalities over some columns of data */
  ConjunctionInvariant* learn_equalities(
    std::vector<Variable>,
    const std::vector<CpuState>&,
    const std::vector<CpuState>&);


private:

  /** Select sample_tcs_ (if nonzero) from the TCs provided. */
  std::pair<std::vector<CpuState>, std::vector<CpuState>> choose_tcs(
        const std::vector<CpuState>&, const std::vector<CpuState>&);

  /** learn a single invariant, without regard for flags. */
  ConjunctionInvariant* learn_simple(
    x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const std::vector<CpuState>& states,
    const std::vector<CpuState>& states2);

  /** Overapproximate set of possible inequality invariants. */
  std::vector<InequalityInvariant*> build_inequality_invariants
  (x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs) const;

  /** Set of ghost variables we should do learning over. */
  std::vector<Variable> ghosts_;

  /** Some options */
  bool enable_nonlinear_;
  bool enable_memory_;

  /** The maximum number of TCs we want to learn over.  If provided with
    more than this number, we'll pick from among them randomly. */
  size_t sample_tcs_;
  /** Random generator. */
  std::default_random_engine gen_;

};

} // namespace stoke

#endif
