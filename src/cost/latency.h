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
  LatencyCost() {
    set_nesting_penalty(5);
  }

  LatencyCost& set_nesting_penalty(Cost penalty) {
    nesting_penalty_ = penalty;

    // initialize the lookup table
    nesting_lookup_.clear();
    nesting_lookup_.push_back(1);
    nesting_lookup_.push_back(nesting_penalty_);

    return *this;
  }

  result_type operator()(const Cfg& cfg, Cost max = max_cost);

private:

  /** Uses and updates the 'nesting_lookup_' table to return the value
      of (nesting_penalty_)^i.  Most calls to this function will be free,
      performance wise.*/
  uint64_t nesting_penalty(size_t nesting_depth);

  /** This keeps a vector such that index i contains the value of
      (nesting_penalty_)^i.  If a value in this table is '0' it
      means it can't been computed yet. */
  std::vector<uint64_t> nesting_lookup_;

  Cost nesting_penalty_;

};

} // namespace stoke

#endif




