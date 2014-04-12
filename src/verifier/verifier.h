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
  Verifier(CostFunction& fxn) : counter_example_(), fxn_(fxn) {
    set_strategy(Strategy::NONE);
  }

  Verifier& set_strategy(Strategy s) {
    strategy_ = s;
    return *this;
  }

  bool verify(const Cfg& target, const Cfg& rewrite);

  const CpuState& get_counter_example() const {
    return counter_example_;
  }

 private:
  Strategy strategy_;
  CpuState counter_example_;

	CostFunction fxn_;

  bool hold_out(const Cfg& target, const Cfg& rewrite);
};

} // namespace stoke

#endif
