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

    sandbox_->insert_function(cfg);
    sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));

    uint64_t res = 0;
    size_t tc_count = sandbox_->size();
    uint64_t average_size = 0;
    latency_ = 0;

    for (size_t i = 0; i < tc_count; ++i) {
      auto tc = *(sandbox_->get_input(i));
      average_size += tc.heap.size();
    }
    average_size /= tc_count;

    for (size_t i = 0; i < tc_count; ++i) {
      auto tc = *(sandbox_->get_input(i));
      if (tc.heap.size() > average_size) {
        nops_emitted_ = 0;
        sandbox_->run(i);
      }
    }

    res = latency_;
    if (tc_count == 0) {
      LatencyCost lc;
      return lc(cfg, max);
    }
    else
      return result_type(true, res/tc_count);
  }

  /** Add to the measured latency */
  static void measured_callback(const StateCallbackData& data, void* arg) {
    MeasuredCost* ptr = (MeasuredCost*)arg;
    assert(data.line < data.code.size());

    auto instr = data.code[data.line];
    if (instr.is_nop()) {
      if (ptr->nops_emitted_ >= 14) {
        ptr->nops_emitted_ = 0;
      } else if (ptr->nops_emitted_ == 0) {
        ptr->latency_ += 1;
        ptr->nops_emitted_++;
      } else {
        ptr->nops_emitted_++;
      }
    } else {
      ptr->latency_ += data.code[data.line].haswell_latency();
      ptr->nops_emitted_ = 0;
    }

  }

private:

  /** The latency seem so far. */
  uint64_t latency_ = 0;
  size_t nops_emitted_ = 0;
};

} // namespace stoke

#endif
