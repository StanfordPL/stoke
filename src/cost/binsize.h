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

#ifndef STOKE_SRC_COST_BINSIZE_H
#define STOKE_SRC_COST_BINSIZE_H

namespace stoke {

class BinSizeCost : public CostFunction {

public:

  BinSizeCost() : buffer_(1024) {

  }

  /** Return the size, in bytes, of the assembled CFG
      (less unreachable blocks and nops) */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {

    const auto& code = cfg.get_code();
    buffer_.reserve(code.size()*32);

    assm_.start(buffer_);

    for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
      if(cfg.is_exit(*b)) {
        continue;
      }

      const auto begin = cfg.get_index(Cfg::loc_type(*b, 0));
      for (size_t i = 0, ie = begin + cfg.num_instrs(*b); i < ie; ++i) {
        const auto& instr = code[i];
        if(!instr.is_nop())
          assm_.assemble(instr);
      }
    }

    assm_.finish();

    return result_type(true, buffer_.size());
  }

private:

  x64asm::Assembler assm_;
  x64asm::Function buffer_;

};

} // namespace stoke

#endif
