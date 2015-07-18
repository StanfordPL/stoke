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

#include "src/transform/local_swap.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


namespace stoke {

TransformInfo LocalSwapTransform::operator()(Cfg& cfg) {

  TransformInfo ti;
  ti.success = false;

  const auto bb = (gen_() % (cfg.num_blocks() - 2)) + 1;
  if (!cfg.is_reachable(bb)) {
    return ti;
  }
  const auto num_instrs = cfg.num_instrs(bb);
  if (num_instrs < 2) {
    return ti;
  }

  ti.undo_index[0] = cfg.get_index({bb, gen_() % num_instrs});
  if (ti.undo_index[0] == cfg.get_index({cfg.get_entry()+1,0})) {
    return ti;
  }
  ti.undo_index[1] = cfg.get_index({bb, gen_() % num_instrs});
  if (ti.undo_index[0] == ti.undo_index[1]) {
    return ti;
  }
  if (ti.undo_index[0] > ti.undo_index[1]) {
      swap(ti.undo_index[0], ti.undo_index[1]);
  }

  const auto& i = cfg.get_code()[ti.undo_index[0]];
  if (is_control_other_than_call(i.get_opcode())) {
    return ti;
  }
  const auto& j = cfg.get_code()[ti.undo_index[1]];
  if (is_control_other_than_call(j.get_opcode())) {
    return ti;
  }

  cfg.get_function().swap(ti.undo_index[0], ti.undo_index[1]);
  cfg.recompute_defs();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  ti.success = true;
  return ti;

}

void LocalSwapTransform::undo(Cfg& cfg, TransformInfo& ti) const {
  cfg.get_function().swap(ti.undo_index[0], ti.undo_index[1]);
  cfg.recompute_defs();
}



} // namespace stoke
