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

#ifndef STOKE_SRC_COST_SSEAVX_H
#define STOKE_SRC_COST_SSEAVX_H

namespace stoke {

/** This class is a penalty of 1 if both SSE and AVX
    instructions are used togehter.  It's 0 otherwise.
    This corresponds to rule 71 in the Intel Optimization Manual.
    It could be improved in a few ways:
    (i)  make it sensitive to loops;
    (ii) use the fact that vzeroupper removes the penalty;
    (iii) track the state of the ymms with a program analysis.

    (i) and (ii) might be useful.  (iii) probably not. */

class SseAvxCost : public CostFunction {

public:

  /** Returns 1 <=> sse and avx are both used. */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {

    bool avx = false;
    bool sse = false;

    const auto& code = cfg.get_code();
    for (auto it : code) {
      avx |= it.is_avx();
      sse |= it.is_sse();
      if (avx && sse)
        return result_type(true, 1);
    }

    return result_type(true, 0);
  }

private:


};

} // namespace stoke

#endif
