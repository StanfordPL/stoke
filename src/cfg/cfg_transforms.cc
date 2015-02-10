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

#include "src/cfg/cfg_transforms.h"

using namespace x64asm;

namespace stoke {

void CfgTransforms::remove_unreachable(Cfg& cfg) {
  Code temp;
  for (auto b = cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    for (auto i = cfg.instr_begin(*b), ie = cfg.instr_end(*b); i != ie; ++i) {
      temp.push_back(*i);
    }
  }

  cfg.get_code() = temp;
  cfg.recompute();
}

void CfgTransforms::remove_nop(Cfg& cfg) {
  Code temp;
  for (auto b = cfg.get_entry(), be = cfg.get_exit(); b != be; ++b) {
    for (auto i = cfg.instr_begin(b), ie = cfg.instr_end(b); i != ie; ++i) {
      if (!i->is_nop()) {
        temp.push_back(*i);
      }
    }
  }

  cfg.get_code() = temp;
  cfg.recompute();
}

} // namespace stoke
