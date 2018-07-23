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
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/inequality.h"
#include "src/validator/invariants/memory_null.h"
#include "src/validator/invariants/nonzero.h"
#include "src/validator/invariants/range.h"

#include "src/validator/int_matrix.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"

namespace stoke {

class InvariantLearner {

public:

  InvariantLearner(const Cfg& target, const Cfg& rewrite) : target_(target), rewrite_(rewrite) {
    set_sample_tcs(25);
    set_enable_shadow(true);
    set_enable_nonlinear(true);
    set_enable_memory(true);
    set_enable_vector_vars(false);
  }

  InvariantLearner& add_ghost(Variable v) {
    ghosts_.push_back(v);
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

  /** Enable invariants over vector variables. */
  InvariantLearner& set_enable_vector_vars(bool b) {
    enable_vector_vars_ = b;
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

  /** Enable invariants over basic block shadow variables. */
  InvariantLearner& set_enable_shadow(bool b) {
    enable_shadow_ = b;
    return *this;
  }

  /** Get live-out variables for a program point. */
  std::vector<Variable> pick_variables(const Cfg& target, const Cfg& rewrite,
                                       Cfg::id_type target_block,
                                       Cfg::id_type rewrite_block,
                                       bool include_defin=false);

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

  /** Extract variables from states and put them into a matrix. */
  IntMatrix states_to_matrix(
    const std::vector<Variable>& variables,
    const std::vector<CpuState>& target_states,
    const std::vector<CpuState>& rewrite_states);

  /** Take a matrix (from nullspace computation), and extract invariants from
   * it. */
  ConjunctionInvariant* matrix_to_invariant(
    const std::vector<Variable>& variables,
    const IntMatrix& matrix);

  /** Learn that a variable is constant over many states, AND,
    remove the variable from the referenced set of columns. */
  ConjunctionInvariant* learn_constants(
    std::vector<Variable>& columns,
    const std::vector<CpuState>& target_states,
    const std::vector<CpuState>& rewrite_states);

  /** Learn that two variables are equal over many states, AND,
    remove the variable from the referenced set of columns. */
  ConjunctionInvariant* learn_easy_equalities(
    std::vector<Variable>& columns,
    const std::vector<CpuState>& target_states,
    const std::vector<CpuState>& rewrite_states);

  /** Learn a single invariant, without regard for flags. */
  ConjunctionInvariant* learn_simple(
    x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const std::vector<CpuState>& states,
    const std::vector<CpuState>& states2);

  /** Overapproximate set of possible inequality invariants. */
  std::vector<InequalityInvariant*> build_inequality_invariants
  (x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs) const;

  /** Set of inequalities with constants */
  std::vector<InequalityInvariant*> build_inequality_with_constant_invariants(
    x64asm::RegSet target_regs, 
    x64asm::RegSet rewrite_regs, 
    const std::vector<CpuState>& target_states, 
    const std::vector<CpuState>& rewrite_states) const;

  /** Create set of invariants of form x - y == c (mod N) that
   hold over given data. */
  std::vector<EqualityInvariant*> build_modulo_invariants(
    x64asm::RegSet target_regs, 
    x64asm::RegSet rewrite_regs, 
    const std::vector<CpuState>& target_states, 
    const std::vector<CpuState>& rewrite_states) const;

  /** Create set of invariants of form x - y == c (mod N) that
   hold over given data. */
  std::vector<RangeInvariant*> build_range_invariants(
    x64asm::RegSet target_regs, 
    x64asm::RegSet rewrite_regs, 
    const std::vector<CpuState>& target_states, 
    const std::vector<CpuState>& rewrite_states) const;

  /** Get all variables corresponding to relevant sub-variables of a register. */
  std::vector<Variable> sub_registers_for_regset(x64asm::RegSet rs, bool is_rewrite) const;

  std::vector<NonzeroInvariant*> build_memory_null_invariants(
      x64asm::RegSet target_regs, x64asm::RegSet rewrite_regs) const;

  /** Set of ghost variables we should do learning over. */
  std::vector<Variable> ghosts_;

  /** Some options */
  bool enable_vector_vars_;
  bool enable_nonlinear_;
  bool enable_memory_;
  bool enable_shadow_;

  /** The maximum number of TCs we want to learn over.  If provided with
    more than this number, we'll pick from among them randomly. */
  size_t sample_tcs_;
  /** Random generator. */
  std::default_random_engine gen_;

  /** utility: compute gcd of two ints. */
  static uint64_t euclid(uint64_t, uint64_t);

  /** for picking memory derefernces. */
  const Cfg& target_;
  const Cfg& rewrite_;

};

} // namespace stoke

#endif
