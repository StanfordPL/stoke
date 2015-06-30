// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/cfg/cfg_transforms.h"
#include "src/search/search_state.h"

using namespace std;
using namespace x64asm;

namespace stoke {

SearchState::SearchState(const Cfg& target, const Cfg& previous, Init init, size_t size) : current(previous), best_yet(previous), best_correct(target) {
  success = false;
  interrupted = false;

  // This constructor is guaranteed sound so long as target satisfies all its invariants
  assert(target.check_invariants());
  assert(target.get_function().check_invariants());

  switch(init) {
  case Init::TARGET:
    configure_target(target, size);
    break;
  case Init::ZERO:
    configure_zero(target, size);
    break;
  case Init::EMPTY:
    configure_empty(target, size);
    break;
  case Init::PREVIOUS:
    current = previous;
    best_yet = previous;
    best_correct = target;
    break;
  case Init::EXTENSION:
    configure_extension(target, size);
    break;
  default:
    assert(false);
  }

  // All invariants should be satisfied after construction
  assert(check_invariants(target));
}

void SearchState::configure_empty(const Cfg& target, size_t size) {
  // Start with initial label
  current = target;
  current.get_function().clear();
  current.get_function().push_back(target.get_code()[0]);

  // Pad with nops
  for (size_t i = 1, ie = size - 1; i < ie; ++i) {
    current.get_function().push_back({NOP});
  }

  // Final return
  current.get_function().push_back({RET});

  // Recompute cfg (underlying function is kept sound automatically)
  current.recompute();

  best_yet = current;
  best_correct = target;
}

void SearchState::configure_zero(const Cfg& target, size_t size) {
  // Nothing to do if def-ins cover live-outs
  if (target.def_ins().contains(target.live_outs())) {
    configure_empty(target, size);
    return;
  }

  // Compute a minimal function that covers live-outs
  const auto minimal = CfgTransforms::minimal_correct_cfg(target.def_ins(), target.live_outs());
  const auto& code = minimal.get_code();

  // Start with initial label
  current = target;
  current.get_function().clear();
  current.get_function().push_back(target.get_code()[0]);

  // Append instructions from minimal code
  for (size_t i = 1; !code[i].is_ret(); ++i) {
    current.get_function().push_back(code[i]);
  }

  // Pad with nops
  for (size_t i = current.get_code().size(), ie = size - 1; i < ie; ++i) {
    current.get_function().push_back({NOP});
  }

  // Final return
  current.get_function().push_back({RET});

  // Recompute cfg (underlying function is kept sound automatically)
  current.recompute();

  best_yet = current;
  best_correct = target;
}

void SearchState::configure_target(const Cfg& target, size_t size) {
  current = target;
  best_yet = target;
  best_correct = target;
}

void SearchState::configure_extension(const Cfg& target, size_t size) {
  // Add user-defined logic here ...

  // Results must satisfy all class invariants
  assert(check_invariants(target));

  // See Search::configure for enforcement of additional invariants.
  // 3. The "best_correct" code must actually be correct
  // 4. The cost of best_yet code must be less than the cost of current.
}

bool SearchState::invariant_boundary_conditions(const Cfg& target) const {
  if (current.def_ins() != target.def_ins()) {
    return false;
  } else if (current.live_outs() != target.live_outs()) {
    return false;
  } else if (best_yet.def_ins() != target.def_ins()) {
    return false;
  } else if (best_yet.live_outs() != target.live_outs()) {
    return false;
  } else if (best_correct.def_ins() != target.def_ins()) {
    return false;
  } else if (best_correct.live_outs() != target.live_outs()) {
    return false;
  }

  return true;
}

bool SearchState::invariant_functions() const {
  if (!current.get_function().check_invariants()) {
    return false;
  } else if (!best_yet.get_function().check_invariants()) {
    return false;
  } else if (!best_correct.get_function().check_invariants()) {
    return false;
  }

  return true;
}

bool SearchState::invariant_cfgs() const {
  if (!current.check_invariants()) {
    return false;
  } else if (!best_yet.check_invariants()) {
    return false;
  } else if (!best_correct.check_invariants()) {
    return false;
  }

  return true;
}

} // namespace stoke
