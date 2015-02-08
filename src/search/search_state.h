// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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
  success(false),
  interrupted(false) {
  }

  SearchState(const SearchState& other) :
    current(Cfg(other.current)),
    current_cost(other.current_cost),
    best_yet(Cfg(other.best_yet)),
    best_yet_cost(other.best_yet_cost),
    best_correct(Cfg(other.best_correct)),
    best_correct_cost(other.best_correct_cost),
    success(other.success),
    interrupted(other.interrupted) {
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

  /** Did the search get interrupted? */
  bool interrupted;

  /** Set the current state based on the command line argument. */
  void configure(Init init, const Cfg& target, size_t size);

  /** Returns a program that is sound for a given def_ins/live_outs combination by initializing
  registers as necessary. */
  static x64asm::Code find_sound_code(const x64asm::RegSet& def_ins, const x64asm::RegSet& live_outs);

private:

  /** Set the current state to be a series of nops. */
  void configure_empty(const Cfg& target, size_t size);

  /** Set the current state to zero the live-outs. */
  void configure_zero(const Cfg& target, size_t size);

  /** Set the current state to the target. */
  void configure_target(const Cfg& target, size_t size);

  /** Set the state in some other way. */
  void configure_extension(const Cfg& target, size_t size);

};

} // namespace stoke

#endif

