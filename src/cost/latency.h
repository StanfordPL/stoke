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

#ifndef STOKE_SRC_COST_LATENCY_H
#define STOKE_SRC_COST_LATENCY_H

#include "src/cost/cost_function.h"

namespace stoke {

class LatencyCost : public CostFunction {

public:
  LatencyCost& set_nesting_penalty(Cost penalty) {
    nesting_penalty_ = penalty;
  }

  result_type operator()(const Cfg& cfg, Cost max = max_cost);

private:

  Cost nesting_penalty_;

};

} // namespace stoke

#endif




