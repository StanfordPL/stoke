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

#include "src/transform/multi.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

TransformInfo MultiTransform::operator()(Cfg& cfg) {


  TransformInfo finished_ti;
  finished_ti.success = false;

  for(size_t i = 0; i < count_; ++i) {
    TransformInfo* ti = new TransformInfo();
    ti->success = false;
    for(size_t j = 0; j < 4; ++j) {
      *ti = transform_(cfg);
      if(ti->success)
        break;
    }

    if(ti->success) {
      //add to record
      ti->undo_next = finished_ti.undo_next;
      finished_ti.undo_next = ti;

    } else {
      //undo everything!
      undo(cfg, finished_ti);
      finished_ti.success = false;
      return finished_ti;
    }
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());

  finished_ti.success = true;
  return finished_ti;
}

void MultiTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  TransformInfo* info = ti.undo_next;
  while(info) {
    transform_.undo(cfg, *info);
    info = info->undo_next;
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
}



} // namespace stoke
