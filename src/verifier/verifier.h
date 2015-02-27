// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_VERIFIER_VERIFIER_H
#define STOKE_SRC_VERIFIER_VERIFIER_H

#include "src/cfg/cfg.h"
#include "src/cost/correctness.h"
#include "src/solver/cvc4solver.h"
#include "src/state/cpu_state.h"
#include "src/validator/validator.h"
#include "src/verifier/strategy.h"

namespace stoke {

class Verifier {
public:
  /** Creates a new verifier with a cost function for use in hold-out verification. */
  Verifier(CorrectnessCost& fxn, Validator& validator) :
    counter_example_(), counter_example_available_(false), validator_(validator),
    fxn_(fxn), next_counter_example_(0), strategy_(Strategy::NONE) { }

  /** Sets proof strategy. */
  Verifier& set_strategy(Strategy s) {
    strategy_ = s;
    return *this;
  }

  /** Returns true iff these two functions are identical. Sets counter_example_ for failed
    proofs. */
  bool verify(const Cfg& target, const Cfg& rewrite);
  /** Returns whether the last failed invocation of verify() produced a new counter example. */
  bool counter_example_available() const {
    return counter_example_available_;
  }
  /** Returns the counter example produced by the last failed invocation of verify(). */
  const CpuState& get_counter_example() const {
    return counter_example_;
  }

  /** Checks if an error message is available */
  bool has_error() {
    return error_ != "";
  }
  /** Gets the error message */
  std::string error() {
    return error_;
  }

private:
  /** Proof strategy. */
  Strategy strategy_;
  /** Counter example set by last failed proof. */
  CpuState counter_example_;
  /** Whether the last failed proof produced a new counter example. */
  bool counter_example_available_;

  /** Cost function for use in hold-out verification. */
  CorrectnessCost fxn_;
  /** Next counter example returned by hold-out verifier. */
  size_t next_counter_example_;

  /** The validator for formal validation */
  Validator& validator_;

  /** Verify rewrite user hold-out cost function. */
  bool hold_out_verify(const Cfg& target, const Cfg& rewrite);
  /** Verify rewrite using user-defined extension. */
  bool extension_verify(const Cfg& target, const Cfg& rewrite);
  /** Verify rewrite using STOKE's formal validator */
  bool formal_verify(const Cfg& target, const Cfg& rewrite);

  /** Did an error occur? */
  std::string error_ = "";
};

} // namespace stoke

#endif
