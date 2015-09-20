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

#include "src/transform/bb_merge.h"

#ifndef NDEBUG
#include "src/cost/latency.h"
#endif



using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

TransformInfo BbMergeTransform::operator()(Cfg& cfg) {


  TransformInfo ti;

  cfg.recompute();
  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.check_invariants());
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());

  ti.success = true;
  return ti;
}

void BbMergeTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  cfg.recompute();

  assert(cfg.check_invariants());
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
}



} // namespace stoke
