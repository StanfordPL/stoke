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

#ifndef STOKE_SRC_COST_SIZE_H
#define STOKE_SRC_COST_SIZE_H

namespace stoke {

class SizeCost : public CostFunction {

public:
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {

    Cost size = 0;

    x64asm::Code code = cfg.get_code();
    for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
      if(cfg.is_exit(*b)) {
        continue;
      }

      const auto first = cfg.get_index(Cfg::loc_type(*b, 0));
      for(size_t i = first, ie = first + cfg.num_instrs(*b); i < ie; i < ie, ++i) {
        if(!code[i].is_nop() && !code[i].is_label_defn())
          size++;
      }
    }
    return result_type(true, size);
  }

};

} // namespace stoke

#endif
