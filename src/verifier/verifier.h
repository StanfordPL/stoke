// Copyright 2014 eric schkufza
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
#include "src/cost/cost_function.h"
#include "src/state/cpu_state.h"
#include "src/verifier/strategy.h"

namespace stoke {

class Verifier {
public:
  /** Creates a new verifier with a cost function for use in hold-out verification. */
  Verifier(CostFunction& fxn) : counter_example_(), counter_example_available_(false),
    fxn_(fxn), next_counter_example_(0) {
    set_strategy(Strategy::NONE);
  }

  /** Sets proof strategy. */
  Verifier& set_strategy(Strategy s) {
    strategy_ = s;
    return *this;
  }

  /** Sets the timeout, in milliseconds */
  Verifier& set_timeout(uint64_t time) {
    timeout_ = time;
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

private:
  /** Proof strategy. */
  Strategy strategy_;
  /** Counter example set by last failed proof. */
  CpuState counter_example_;
  /** Whether the last failed proof produced a new counter example. */
  bool counter_example_available_;

  /** Timeout (in ms) */
  uint64_t timeout_;

	/** Cost function for use in hold-out verification. */
	CostFunction fxn_;
	/** Next counter example returned by hold-out verifier. */
	size_t next_counter_example_;

  /** Verify rewrite user hold-out cost function. */
  bool hold_out_verify(const Cfg& target, const Cfg& rewrite);
	/** Verify rewrite using user-defined extension. */
	bool extension_verify(const Cfg& target, const Cfg& rewrite);
  /** Verify rewrite using STOKE's formal validator */
  bool formal_verify(const Cfg& target, const Cfg& rewrite);
};

} // namespace stoke

#endif
