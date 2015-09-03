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

#ifndef STOKE_SRC_VERIFIER_NONE_H
#define STOKE_SRC_VERIFIER_NONE_H

#include "src/verifier/verifier.h"

namespace stoke {

class NoneVerifier : public Verifier {
public:

  /** Returns true iff these two functions are identical. Sets counter_example_ for failed
    proofs. */
  bool verify(const Cfg& target, const Cfg& rewrite) {
    return true; //hah!
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
    return false;
  }
  /** Gets the error message */
  virtual std::string error() {
    return "";
  }

};

} // namespace stoke

#endif
