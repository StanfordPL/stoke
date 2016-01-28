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

#ifndef STOKE_SRC_VALIDATOR_BOUNDED_H
#define STOKE_SRC_VALIDATOR_BOUNDED_H

#include <iostream>
#include <vector>
#include <string>

#include "gtest/gtest_prod.h"

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/memory/cell.h"
#include "src/validator/invariant.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/validator.h"


namespace stoke {

class BoundedValidator : public ObligationChecker {

public:

  BoundedValidator(SMTSolver& solver) : ObligationChecker(solver), target_final_state_(), rewrite_final_state_() {
    set_bound(2);
    set_alias_strategy(AliasStrategy::STRING);
    set_nacl(false);
    set_no_bailout(false);
    set_heap_out(true); // FIXME: there's a bug prevening the command line argument from making it here.
    set_sandbox(NULL);
  }

  ~BoundedValidator() {}

  /** Set bound. */
  BoundedValidator& set_bound(size_t n) {
    bound_ = n;
    return *this;
  }
  /** If every memory reference in your code is of the form (r15,r*x,1), then
    setting this option to 'true' is logically equivalent to adding constraints
    that bound the index register away from the top/bottom of the 32-bit
    address space.  It is unsound for NaCl code only if you have a memory
    dereference of (r15,r*x,k) where k = 2, 4 or 8.  This does not come up in
    any of our NaCl examples, and sould be rare to find since no compilers
    generate code that use an index besides 1 for NaCl; and STOKE won't do this
    transformation. */
  /** If set to true, don't bail out early once counterexample found. */
  BoundedValidator& set_no_bailout(bool b) {
    bailout_ = !b;
    return *this;
  }

  /** Evalue if the target and rewrite are the same */
  bool verify(const Cfg& target, const Cfg& rewrite);

  /** Make testcases for a target. */
  std::vector<CpuState> make_testcases(const Cfg& target);

  /** Returns whether the last counterexample made sense */
  size_t counter_examples_available() {
    return counterexamples_.size();
  }
  /** Gets the counterexample */
  virtual std::vector<CpuState> get_counter_examples() {
    return counterexamples_;
  }


  /** Get the expected final state of the target after running counterexample.
    (This is only for the fuzz tester, basically).  It is only valid if we just
    returned a counterexample.  It also doesn't handle memory writes right. */
  CpuState get_target_final_state() {
    return target_final_state_;
  }
  /** Get the expected final state of the rewrite.  See caveats above. */
  CpuState get_rewrite_final_state() {
    return rewrite_final_state_;
  }

private:

  /** The final state of the target for last counterexample. */
  CpuState target_final_state_;
  /** The final state of the rewrite for last counterexample. */
  CpuState rewrite_final_state_;

  /** The bound on iterations */
  size_t bound_;
  /** Should we bailout early? */
  bool bailout_;

  /** Verify a pair of paths. */
  bool verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q);

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

};



} // namespace stoke

#endif
