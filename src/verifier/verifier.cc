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

#include <cassert>

#include "src/verifier/verifier.h"

using namespace std;

namespace stoke {

bool Verifier::verify(const Cfg& target, const Cfg& rewrite) {
  switch (strategy_) {
    case Strategy::NONE:
      return true;
    case Strategy::HOLD_OUT:
      return hold_out(target, rewrite);
    default:
      assert(false);
      return false;
  }
}

bool Verifier::hold_out(const Cfg& target, const Cfg& rewrite) {
	const auto res = fxn_(rewrite, 1);
	if ( !res.first ) {
		counter_example_ = fxn_.last_testcase_evaluated();
		return false;
	}
  return true;
}

} // namespace stoke

