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

#ifndef STOKE_SRC_COST_MEASURED_H
#define STOKE_SRC_COST_MEASURED_H

#include <cmath>

#include <algorithm>
#include <array>
#include <limits>

#include "src/sandbox/sandbox.h"

namespace stoke {

class MasuredCost : public CostFunction {

  Cost MeasuredCost::measured_performance(const Cfg& cfg) const {
    Cost latency = 0;
    Cost tc_count = 0;

    for(auto i = sandbox_->output_begin(), ie = sandbox_->output_end(); i != ie; ++i) {
      latency += i->latency_seen;
      tc_count++;
    }

    return latency/tc_count;
  }

};

} // namespace stoke

#endif
