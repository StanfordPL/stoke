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

#include "src/cost/cost_function.h"
#include "src/cost/latency.h"

namespace stoke {

class MeasuredCost : public CostFunction {

public:

  /** Yes, we need to use the sandbox */
  bool need_sandbox() {
    return true;
  }

  /** And we need to set it up. */
  MeasuredCost& setup_sandbox(Sandbox* sb) {
    sandbox_ = sb;
    sandbox_->insert_before(measured_callback, this);
    return *this;
  }

  /** Measures the "running time" with our latency table */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {

    run_sandbox(cfg);

    uint64_t res = latency_;
    size_t tc_count = sandbox_->size();
    latency_ = 0;
    if(tc_count == 0) {
      LatencyCost lc;
      return lc(cfg, max);
    }
    else
      return result_type(true, res/tc_count);
  }

  /** Add to the measured latency */
  static void measured_callback(const StateCallbackData& data, void* arg) {
    MeasuredCost* ptr = (MeasuredCost*)arg;
    ptr->latency_ += data.code[data.line].haswell_latency();
  }

private:

  /** The latency seem so far. */
  uint64_t latency_ = 0;
};

} // namespace stoke

#endif
