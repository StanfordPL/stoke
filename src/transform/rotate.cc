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

#include "src/transform/rotate.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


namespace stoke {

TransformInfo RotateTransform::operator()(Cfg& cfg) {

  TransformInfo ti;
  ti.success = false;

  if(cfg.get_code().size() < 3)
    return ti;

  ti.undo_index[0] = (gen_() % (cfg.get_code().size() - 1)) + 1;
  ti.undo_index[1] = (gen_() % (cfg.get_code().size() - 1)) + 1;
  if (ti.undo_index[0] == ti.undo_index[1]) {
    return ti;
  }

  const auto& i = cfg.get_code()[ti.undo_index[0]];
  if (is_control_other_than_call(i.get_opcode())) {
    return ti;
  }
  const auto& j = cfg.get_code()[ti.undo_index[1]];
  if (is_control_other_than_call(j.get_opcode())) {
    return ti;
  }

  if (ti.undo_index[0] < ti.undo_index[1])
    cfg.get_function().rotate_left(ti.undo_index[0], ti.undo_index[1]);
  else
    cfg.get_function().rotate_right(ti.undo_index[1], ti.undo_index[0]);

  cfg.recompute();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  ti.success = true;
  return ti;

}

void RotateTransform::undo(Cfg& cfg, TransformInfo& ti) const {
  if(ti.undo_index[0] < ti.undo_index[1])
    cfg.get_function().rotate_right(ti.undo_index[0], ti.undo_index[1]);
  else
    cfg.get_function().rotate_left(ti.undo_index[1], ti.undo_index[0]);
  cfg.recompute();
}



} // namespace stoke
