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

#include "src/transform/add_nops.h"

#ifndef NDEBUG
#include "src/cost/latency.h"
#endif



using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

TransformInfo AddNopsTransform::operator()(Cfg& cfg) {


  TransformInfo ti;
  ti.success = false;

  if(cfg.get_code().size() < 3)
    return ti;

  size_t index = (gen_() % (cfg.get_code().size() - 1)) + 1;
  ti.undo_index[0] = index;

  size_t new_nops = 1;
  ti.undo_index[1] = new_nops;

  auto& function = cfg.get_function();
  for(size_t i = 0; i < new_nops; ++i) {
    function.insert(index, Instruction(NOP), false);
  }

  cfg.recompute();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.check_invariants());
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
  assert(LatencyCost()(cfg).first);

  ti.success = true;
  return ti;
}

void AddNopsTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  auto& function = cfg.get_function();
  for(size_t i = 0; i < ti.undo_index[1]; ++i) {
    function.remove(ti.undo_index[0]);
  }
  cfg.recompute();

  assert(cfg.check_invariants());
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
  assert(LatencyCost()(cfg).first);
}



} // namespace stoke
