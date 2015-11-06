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

#include "src/verifier/hold_out.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


/** Returns true iff these two functions are identical. Sets counter_examples_ for failed
  inputs. */
bool HoldOutVerifier::verify(const Cfg& target, const Cfg& rewrite) {

  counter_examples_.clear();

  if (fxn_.num_testcases() == 0) {
    error_ = "No testcases provided; cannot perform hold-out verification.";
    return false;
  }

  // Don't set a max value here; we're okay with performance costs
  error_ = "";
  const auto res = fxn_(rewrite);
  if (!res.first) {
    counter_examples_.push_back(fxn_.get_counter_example());
    return false;
  }

  return true;
}

