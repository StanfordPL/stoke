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
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"

namespace stoke {

class Verifier {
public:

  Verifier() {
    sandbox_ = 0;
    error_ = "";
    has_error_ = false;
  }

  virtual ~Verifier() { }

  /** Add a sandbox for this verifier to use. */
  virtual Verifier& set_sandbox(Sandbox* sb) {
    sandbox_ = sb;
    return *this;
  }

  /** Set if the heap is live out */
  Verifier& set_heap_out(bool b) {
    heap_out_ = b;
    return *this;
  }

  /** Set if the stack is live out */
  Verifier& set_stack_out(bool b) {
    stack_out_ = b;
    return *this;
  }

  /** Returns true iff these two functions are identical. Sets counter_example_ for failed
    proofs. */
  virtual bool verify(const Cfg& target, const Cfg& rewrite) {
    return false;
  }

  /** Returns whether the last failed invocation of verify() produced a new counter example. */
  virtual size_t counter_examples_available() {
    return 0;
  }
  /** Returns the counter example produced by the last failed invocation of verify(). */
  virtual std::vector<CpuState> get_counter_examples() {
    return std::vector<CpuState>();
  }

  /** Checks if an error message is available */
  virtual bool has_error() const {
    return has_error_;
  }
  /** Gets the error message */
  virtual std::string error() {
    return error_;
  }

protected:

  /** Sandbox for verification to use. */
  Sandbox* sandbox_;

  /** Do we need to validate heap correctness? */
  bool heap_out_;
  /** Do we need to validate stack correctness? */
  bool stack_out_;

  /** Did an error occur? */
  std::string error_;
  bool has_error_;
};

} // namespace stoke

#endif
