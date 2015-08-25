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

#ifndef STOKE_SRC_COST_PRESERVE_CONTROL_H
#define STOKE_SRC_COST_PRESERVE_CONTROL_H

#include "src/cost/cost_function.h"

namespace stoke {

class PreserveControlCost : public CostFunction {

public:

  PreserveControlCost(Sandbox* sandbox) : CostFunction() {
    sandbox_ = sandbox;
  }

  /** Learn the expected control flow. */
  PreserveControlCost& set_target(const Cfg& target) {
    assert(sandbox_ != nullptr);

    reference_outs_.clear();

    sandbox_->insert_function(target);
    sandbox_->set_entrypoint(target.get_code()[0].get_operand<x64asm::Label>(0));
    sandbox_->insert_before(build_control_callback, this);
    for (size_t i = 0, ie = sandbox_->size(); i < ie; ++i) {
      std::vector<x64asm::Label> new_vector;
      current_list_ = &new_vector;
      sandbox_->run(i);
      reference_outs_.push_back(new_vector);
    }
    sandbox_->clear_callbacks();
    return *this;
  }

  /** Yes, we need to use the sandbox */
  bool need_sandbox() {
    return true;
  }

  /** Just make sure we're getting the sandbox we've already got. */
  PreserveControlCost& setup_sandbox(Sandbox* sb) {
    assert(sb == sandbox_);
    return *this;
  }

  /** Checks if control flow matches what's expected. */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {

    sandbox_->insert_function(cfg);
    sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));
    sandbox_->insert_before(check_control_callback, this);
    sandbox_->run();
    difference_found_ = false;
    for(size_t i = 0, ie = sandbox_->size(); i < ie && !difference_found_; ++i) {
      current_pos_ = 0;
      current_list_ = &reference_outs_[i];
      sandbox_->run(i);
      if(current_pos_ != current_list_->size()) {
        difference_found_ = true;
      }
    }

    return std::pair<bool,Cost>(true, difference_found_);

  }

  /** Check the current control flow */
  static void check_control_callback(const StateCallbackData& data, void* arg) {
    PreserveControlCost* ptr = (PreserveControlCost*)arg;
    assert(data.line < data.code.size());

    if(ptr->difference_found_)
      return;

    auto instr = data.code[data.line];
    if(instr.is_label_defn() || instr.is_jump()) {
      if(ptr->current_pos_ < ptr->current_list_->size()) {
        auto actual_label = instr.get_operand<x64asm::Label>(0);
        auto expected_label = (*(ptr->current_list_))[ptr->current_pos_];
        ptr->current_pos_++;
        if(actual_label != expected_label)
          ptr->difference_found_ = 1;
      } else {
        ptr->difference_found_ = 1;
      }
    }

  }

  /** Learn the control flow */
  static void build_control_callback(const StateCallbackData& data, void* arg) {
    PreserveControlCost* ptr = (PreserveControlCost*)arg;
    assert(data.line < data.code.size());

    auto instr = data.code[data.line];
    if(instr.is_label_defn() || instr.is_jump()) {
      ptr->current_list_->push_back(instr.get_operand<x64asm::Label>(0));
    }
  }



private:

  /** Reference label sequences */
  std::vector<std::vector<x64asm::Label>> reference_outs_;
  /** Vector of labels that we're working on. */
  std::vector<x64asm::Label>* current_list_;
  /** Position in vector to check. */
  size_t current_pos_;

  /** We've found a difference; abort now. */
  bool difference_found_ = false;
};

} // namespace stoke

#endif
