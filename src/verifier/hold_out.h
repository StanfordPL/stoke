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

#ifndef STOKE_SRC_VERIFIER_HOLD_OUT_H
#define STOKE_SRC_VERIFIER_HOLD_OUT_H

#include "src/cost/correctness.h"
#include "src/verifier/verifier.h"

namespace stoke {

class HoldOutVerifier : public Verifier {
public:

  /** Returns true iff these two functions are identical. Sets counter_example_ for failed
    proofs. */
  bool verify(const Cfg& target, const Cfg& rewrite);

  /** Returns whether the last failed invocation of verify() produced a new counter example. */
  size_t counter_examples_available() {
    return counter_examples_.size();
  }

  /** Returns the counter example produced by the last failed invocation of verify(). */
  virtual std::vector<CpuState> get_counter_examples() {
    return counter_examples_;
  }

private:

  /** Returns if two states are equal on a set of registers. */
  bool states_equivalent(CpuState s1, CpuState s2, x64asm::RegSet rs);

  static x64asm::RegSet supported_regset();

  std::vector<CpuState> counter_examples_;
};

} // namespace stoke

#endif
