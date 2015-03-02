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


#include "src/search/search_state.h"

using namespace std;
using namespace x64asm;

namespace stoke {

SearchState::SearchState(const Cfg& target, const Cfg& c, const Cfg& by, const Cfg& bc,
                         Init init, size_t size) : current(c), best_yet(by), best_correct(bc) {
  success = false;
  interrupted = false;

  // This constructor is guaranteed sound so long as target satisfies all its invariants
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
    // Do nothing; preserve input values
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

  // Start with initial label
  current = target;
  current.get_function().clear();
  current.get_function().push_back(target.get_code()[0]);

  // Insert minimal number of instructions to cover live-outs
  const auto code = find_sound_code(target.def_ins(), target.live_outs());
  for (const auto& instr : code) {
    current.get_function().push_back(instr);
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

Code SearchState::find_sound_code(const RegSet& def_ins, const RegSet& live_outs) {
  auto diff = live_outs;
  vector<Instruction> code;

  // initialize all general purpose registers
  for (auto rit = diff.gp_begin(); rit != diff.gp_end(); ++rit) {
    auto reg = *rit;
    auto type = reg.type();
    if (type == Type::R_64 || type == Type::RAX) {
      code.push_back(Instruction(XOR_R64_R64, {reg, reg}));
    } else if (type == Type::R_32 || type == Type::EAX) {
      code.push_back(Instruction(XOR_R32_R32, {reg, reg}));
    } else if (type == Type::R_16 || type == Type::AX || type == Type::DX) {
      code.push_back(Instruction(XOR_R16_R16, {reg, reg}));
    } else if (type == Type::RL || type == Type::AL || type == Type::CL) {
      code.push_back(Instruction(XOR_RL_RL, {reg, reg}));
    } else if (type == Type::RH) {
      code.push_back(Instruction(XOR_RH_RH, {reg, reg}));
    } else if (type == Type::RB) {
      code.push_back(Instruction(XOR_RB_RB, {reg, reg}));
    }
  }

  // initialize sse registers
  for (auto rit = diff.sse_begin(); rit != diff.sse_end(); ++rit) {
    auto reg = *rit;
    auto type = reg.type();
    if (type == Type::XMM || type == Type::XMM_0) {
      code.push_back(Instruction(PXOR_XMM_XMM, {reg, reg}));
    } else if (type == Type::YMM) {
      code.push_back(Instruction(VPXOR_YMM_YMM_YMM, {reg, reg, reg}));
    }
  }

  // initialize mm registers
  for (auto rit = diff.mm_begin(); rit != diff.mm_end(); ++rit) {
    auto reg = *rit;
    code.push_back(Instruction(PXOR_MM_MM, {reg, reg}));
  }

  // flags
  bool regular = false;
  for (auto rit = diff.flags_begin(); rit != diff.flags_end(); ++rit) {
    auto reg = *rit;
    if ((reg == Constants::eflags_of() ||
         reg == Constants::eflags_zf() ||
         reg == Constants::eflags_sf() ||
         reg == Constants::eflags_af() ||
         reg == Constants::eflags_cf() ||
         reg == Constants::eflags_pf()) && !regular) {
      regular = true;
      code.push_back(Instruction(XOR_R32_R32, {Constants::rax(), Constants::rax()}));
      code.push_back(Instruction(ADD_R32_IMM32, {Constants::rax(), Imm32(0)}));
    }
  }

  // remove statements if possible
  bool changed = true;
  while (changed) {
    changed = false;
    int i = 0;
    for (auto it = code.begin(); it != code.end(); ++it, ++i) {
      vector<Instruction> copy = code;
      copy.erase(copy.begin()+i);
      if (Cfg(TUnit(Code(copy.begin(), copy.end())), def_ins, live_outs).check_invariants()) {
        code = copy;
        changed = true;
        break;
      }
    }
  }

  return Code(code.begin(), code.end());
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
