// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_COST_MEASURED_IACA_H
#define STOKE_SRC_COST_MEASURED_IACA_H

#include "src/cost/cost_function.h"
#include "src/cost/iaca.h"

namespace stoke {

class MeasuredIacaCost : public CostFunction {

public:

  /** Yes, we need to use the sandbox */
  bool need_perf_sandbox() {
    return true;
  }

  /** And we need to set it up. */
  MeasuredIacaCost& setup_perf_sandbox(Sandbox* sb) {
    perf_sandbox_ = sb;
    perf_sandbox_->insert_before(record_callback_before, this);
    perf_sandbox_->insert_after(record_callback_after, this);
    return *this;
  }

  /** Measures the "running time" with iaca */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {

    run_perf_sandbox(cfg);

    size_t tc_count = perf_sandbox_->size();
    IacaCost lc;
    if (tc_count == 0) {
      return lc(cfg, max);
    } else {
      auto code = x64asm::Code(executed_instrs_.begin(), executed_instrs_.end());
      auto tunit = TUnit(code);
      auto res = lc(Cfg(tunit), max);
      reset();
      return result_type(true, res.second/tc_count);
    }
  }

  // we record all instructions before they get executed (so that we can record jumps and retq)
  // however, if we jump to a label, we won't see the "before" call, so we record those afterwards
  // secondly, we filter out labels so we don't have duplicate label definitions
  static void record_callback_before(const StateCallbackData& data, void* arg) {
    MeasuredIacaCost* ptr = (MeasuredIacaCost*)arg;
    auto instr = data.code[data.line];
    if (!instr.is_label_defn()) {
      ptr->executed_instrs_.push_back(instr);
    }
  }
  static void record_callback_after(const StateCallbackData& data, void* arg) {
    MeasuredIacaCost* ptr = (MeasuredIacaCost*)arg;
    auto instr = data.code[data.line];
    if (instr.is_label_defn()) {
      auto label = instr.get_operand<x64asm::Label>(0);
      if (ptr->label_defs_.find(label) == ptr->label_defs_.end()) {
        ptr->label_defs_.insert(label);
        ptr->executed_instrs_.push_back(instr);
      }
    }
  }

private:

  void reset() {
    executed_instrs_.clear();
    label_defs_.clear();
  }

  /** The instruction that were executed. */
  std::vector<x64asm::Instruction> executed_instrs_;
  std::set<x64asm::Label> label_defs_;
};

} // namespace stoke

#endif
