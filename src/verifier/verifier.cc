// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include <cassert>

#include "src/solver/z3solver.h"
#include "src/verifier/verifier.h"
#include "src/validator/validator.h"

using namespace std;

namespace stoke {

bool Verifier::verify(const Cfg& target, const Cfg& rewrite) {
  switch (strategy_) {
  case Strategy::NONE:
    counter_example_available_ = false;
    return true;
  case Strategy::HOLD_OUT:
    return hold_out_verify(target, rewrite);
  case Strategy::FORMAL:
    return formal_verify(target, rewrite);
  case Strategy::EXTENSION:
    return extension_verify(target, rewrite);
  default:
    assert(false);
    return false;
  }
}

bool Verifier::hold_out_verify(const Cfg& target, const Cfg& rewrite) {
  // Don't set a max value here; we're okay with performance costs
  const auto res = fxn_(rewrite);
  if (!res.first) {
    counter_example_available_ = next_counter_example_ < fxn_.num_testcases();
    counter_example_ = fxn_.get_testcase(next_counter_example_);
    next_counter_example_++;
    return false;
  }
  return true;
}

bool Verifier::formal_verify(const Cfg& target, const Cfg& rewrite) {

  CpuState ceg;

  Z3Solver s;
  Validator v(s);
  s.set_timeout(timeout_);

  bool success = v.validate(target, rewrite, ceg);

  if (!success) {
    counter_example_available_ = true;
    counter_example_ = ceg;
  }

  return success;
}

bool Verifier::extension_verify(const Cfg& target, const Cfg& rewrite) {
  // Add user-defined implementation here ...

  // Invariant 1. If this method returns false and is able to produce a
  // counter example explaining why, counter_example_available_ should be
  // set to true.

  // Invariant 2. If this method returns false, and it is able (see above),
  // counter_example_ should be set to a CpuState that will cause target and
  // rewrite to produce different values.

  // Invariant 3. If this method produces a counter example, it should be
  // unique relative to all previously produced counter examples.

  return true;
}

} // namespace stoke

