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
    sandbox_->set_count_instructions(true);
  }

  /** Measures the "running time" with our latency table */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {
    Cost latency = 0;
    Cost tc_count = 0;

    for(auto i = sandbox_->output_begin(), ie = sandbox_->output_end(); i != ie; ++i) {
      latency += i->latency_seen;
      tc_count++;
    }

    assert(tc_count != 0);
    return result_type(true, latency/tc_count);
  }

private:

  /** The sandbox that has the most recently run target. */
  Sandbox* sandbox_;

};

} // namespace stoke

#endif
