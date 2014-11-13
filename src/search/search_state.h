// Copyright 2014 eric schkufza
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

#ifndef STOKE_SRC_SEARCH_STATE_H
#define STOKE_SRC_SEARCH_STATE_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"

namespace stoke {

struct SearchState {
  SearchState() :
    current( {
    {
      x64asm::RET
    }
  }, x64asm::RegSet::empty(), x64asm::RegSet::empty()),
  current_cost(0),
  best_yet({{x64asm::RET}}, x64asm::RegSet::empty(), x64asm::RegSet::empty()),
  best_yet_cost(0),
  best_correct({{x64asm::RET}}, x64asm::RegSet::empty(), x64asm::RegSet::empty()),
  best_correct_cost(0),
  success(false) {
  }

  /** The current rewrite. */
  Cfg current;
  /** The cost of the current rewrite. */
  Cost current_cost;

  /** The lowest cost unverified rewrite discovered so far. */
  Cfg best_yet;
  /** The lowest unverified cost discovered so far. */
  Cost best_yet_cost;

  /** The lowest cost verified rewrite discovered so far. */
  Cfg best_correct;
  /** The lowest verified cost discovered so far. */
  Cost best_correct_cost;

  /** Has search discovered at least one new correct rewrite? */
  bool success;
};

} // namespace stoke

#endif

