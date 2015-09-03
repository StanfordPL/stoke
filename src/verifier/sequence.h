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

#ifndef STOKE_SRC_VERIFIER_SEQUENCE_H
#define STOKE_SRC_VERIFIER_SEQUENCE_H

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/verifier/verifier.h"

namespace stoke {

class SequenceVerifier : public Verifier {
public:

  SequenceVerifier(Verifier* v1, Verifier* v2) : Verifier() {
    verifiers_.push_back(v1);
    verifiers_.push_back(v2);
  }

  SequenceVerifier(std::vector<Verifier*> verifiers) : Verifier() {
    verifiers_ = verifiers;
  }

  /** Add a sandbox for this verifier to use. */
  SequenceVerifier& set_sandbox(Sandbox* sb) {
    for(auto it : verifiers_)
      it->set_sandbox(sb);
    return *this;
  }

  /** Set if the heap is live out */
  SequenceVerifier& set_heap_out(bool b) {
    for(auto it : verifiers_)
      it->set_heap_out(b);
    return *this;
  }

  /** Set if the stack is live out */
  Verifier& set_stack_out(bool b) {
    for(auto it : verifiers_)
      it->set_stack_out(b);
    return *this;
  }

  /** Returns true iff these two functions are identical. Sets counter_example_ for failed
    proofs. */
  bool verify(const Cfg& target, const Cfg& rewrite) {
    for(auto it : verifiers_) {
      bool good = it->verify(target, rewrite);

      if(it->has_error()) {
        assert(!good);
        has_error_ = true;
        error_ = it->error();
        return false;
      }

      if(!good) {
        counterexamples_ = it->get_counter_examples();
        return false;
      }
    }

    // all succeeded
    return true;
  }

  /** Returns whether the last failed invocation of verify() produced a new counter example. */
  size_t counter_examples_available() {
    return counterexamples_.size();
  }
  /** Returns the counter example produced by the last failed invocation of verify(). */
  std::vector<CpuState> get_counter_examples() {
    return counterexamples_;
  }

protected:

  std::vector<Verifier*> verifiers_;
  std::vector<CpuState> counterexamples_;

};

} // namespace stoke

#endif
