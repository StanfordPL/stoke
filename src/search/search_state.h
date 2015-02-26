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

#ifndef STOKE_SRC_SEARCH_STATE_H
#define STOKE_SRC_SEARCH_STATE_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"
#include "src/search/init.h"

namespace stoke {

class SearchState {

public:
  /** Default construction is disallowed */
  SearchState(const Cfg& target, const Cfg& c, const Cfg& by, const Cfg& bc,
              Init init, size_t size);

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
  /** Did the search get interrupted? */
  bool interrupted;

  /** Search state should agree on boundary conditions wrt target */
  bool invariant_boundary_conditions(const Cfg& target) const;
  /** Search state should be composed of well-formed functions */
  bool invariant_functions() const;
  /** Check all invariants */
  bool check_invariants(const Cfg& target) const {
    return invariant_boundary_conditions(target) && invariant_functions();
  }

private:
  /** Set the current state to be a series of nops. */
  void configure_empty(const Cfg& target, size_t size);
  /** Set the current state to zero the live-outs. */
  void configure_zero(const Cfg& target, size_t size);
  /** Set the current state to the target. */
  void configure_target(const Cfg& target, size_t size);
  /** Set the state in some other way. */
  void configure_extension(const Cfg& target, size_t size);

  /** Returns a program that is sound for a given def_ins/live_outs combination */
  static x64asm::Code find_sound_code(const x64asm::RegSet& def_ins, const x64asm::RegSet& live_outs);
};

} // namespace stoke

#endif

