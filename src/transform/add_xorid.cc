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

#include "src/transform/add_xorid.h"


using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

TransformInfo AddXorIdTransform::operator()(Cfg& cfg) {

  TransformInfo ti;
  ti.success = false;

  if (cfg.get_code().size() < 3)
    return ti;

  size_t index = get_index(cfg);
  ti.undo_index[0] = index;

  auto& function = cfg.get_function();

  auto instr = Instruction(XOR_R32_R32);
  auto r = pools_.get_r32();
  instr.set_operand(0, r);
  instr.set_operand(1, r);

  function.insert(index, instr, true);

  cfg.recompute();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
  assert(LatencyCost()(cfg).first);

  ti.success = true;
  return ti;
}

void AddXorIdTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  auto& function = cfg.get_function();
  function.remove(ti.undo_index[0]);
  cfg.recompute();

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
  assert(LatencyCost()(cfg).first);
}



} // namespace stoke
