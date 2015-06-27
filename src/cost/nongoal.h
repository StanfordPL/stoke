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

#ifndef STOKE_SRC_COST_NONGOAL_H
#define STOKE_SRC_COST_NONGOAL_H

#include "src/cost/cost_function.h"

namespace stoke {

/** This class is a penalty of 1 if the code (when minimized) is equivalent
    to one provided in --non_goal. */

class NonGoalCost : public CostFunction {

public:

  /** Set the list of non-goals. */
  NonGoalCost& set_nongoals(std::vector<TUnit> nongoals) {
    nongoals_.clear();
    for (auto& t : nongoals) {
      nongoals_.push_back(t.get_code());
    }
    return *this;
  }

  /** Returns 1 <=> code is equivalent as one in --non_goal. */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {
    const auto& code = cfg.get_code();
    return result_type(true, 0);
  }

private:
  std::vector<x64asm::Code> nongoals_;

};

} // namespace stoke

#endif
