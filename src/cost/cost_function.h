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

#ifndef STOKE_SRC_COST_COST_FUNCTION_H
#define STOKE_SRC_COST_COST_FUNCTION_H

#include <cassert>
#include <stdint.h>

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"

namespace stoke {

class CostFunction {
public:
  /** Result type; cost and whether correctness term equals zero. */
  typedef std::pair<bool, Cost> result_type;

  /** The maximum cost that any rewrite should produce. */
  static constexpr auto max_cost = (Cost)(0x1ull << 62);

  /** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
    result would equal or exceed that value. */
  virtual result_type operator()(const Cfg& cfg, const Cost max = max_cost) = 0;

};

} // namespace stoke

#endif
