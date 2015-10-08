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

#include "src/cfg/cfg_transforms.h"
#include "src/cost/cost_function.h"

namespace stoke {

/** This class is a penalty of 1 if the code (when minimized) is equivalent
    to one provided in --non_goal. */

class NonGoalCost : public CostFunction {

public:

  /** Set the list of non-goals. */
  NonGoalCost& set_nongoals(const std::vector<TUnit>& nongoals,
                            const Cfg& target) {
    nongoals_.clear();
    for (auto& t : nongoals) {
      auto cfg = Cfg(t, target.def_ins(), target.live_outs());
      cfg.fncs_summary = target.fncs_summary;
      cfg.recompute();
      nongoals_.push_back(CfgTransforms::remove_redundant(cfg).get_code());
    }
    return *this;
  }

  /** Returns 1 <=> code is equivalent as one in --non_goal. */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {
    Cfg tmp(cfg.get_function(), cfg.def_ins(), cfg.live_outs());
    tmp.fncs_summary = cfg.fncs_summary;
    tmp.recompute();
    const auto& code = CfgTransforms::remove_redundant(tmp).get_code();
    for (auto& ng : nongoals_) {
      if (code == ng) {
        return result_type(true, 1);
      }
    }
    return result_type(true, 0);
  }

private:
  std::vector<x64asm::Code> nongoals_;

};

} // namespace stoke

#endif
