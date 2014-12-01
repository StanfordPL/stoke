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

#include <cassert>
#include <cmath>
#include <csignal>
#include <unistd.h>

#include "src/search/search.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace x64asm;

namespace {

bool give_up_now = false;
void handler(int sig, siginfo_t* siginfo, void* context) {
  give_up_now = true;
}

} // namespace

namespace stoke {

Search::Search(Transforms* transforms) : transforms_(transforms) {
  set_max_instrs(16);
  set_seed(0);
  set_timeout_itr(0);
  set_timeout_sec(0);
  set_beta(1.0);
  set_progress_callback(nullptr, nullptr);
  set_statistics_callback(nullptr, nullptr);
  set_statistics_interval(100000);

  static bool once = false;
  if (!once) {
    once = true;

    struct sigaction term_act;
    memset(&term_act, '\0', sizeof(term_act));
    sigfillset(&term_act.sa_mask);
    term_act.sa_sigaction = handler;
    term_act.sa_flags = SA_ONSTACK;

    sigaction(SIGINT, &term_act, 0);
  }
}

Search& Search::set_mass(Move move, size_t mass) {
  vector<Move> new_moves;
  for (auto m : moves_) {
    if (m != move) {
      new_moves.push_back(m);
    }
  }
  for (size_t i = 0; i < mass; ++i) {
    new_moves.push_back(move);
  }
  moves_ = new_moves;
  int_ = decltype(int_)(0, moves_.size() - 1);

  return *this;
}

void Search::run(const Cfg& target, CostFunction& fxn, Init init, SearchState& state, vector<TUnit>& aux_fxn) {

  // Make sure target is correct with respect to itself
  assert(fxn(target).first);

  // Configure initial state
  configure(init, target, fxn, state, aux_fxn);

  if (!target.is_sound()) {
    cerr << "ERROR: the target reads undefined values, or leaves live out values undefined!" << endl;
    exit(1);
  }

  if (!state.current.is_sound()) {
    cerr << "ERROR: the initial rewrite reads undefined values, or leaves live out values undefined!" << endl;
    if (init == Init::EMPTY) {
      cerr << "Using --init zero will automatically prevent this problem." << endl;
    } else if (init == Init::ZERO) {
      cerr << "This is a bug, please report it." << endl;
    }
    exit(1);
  }

  // Make sure target and rewrite are sound to begin with
  assert(state.best_yet.is_sound());
  assert(state.best_correct.is_sound());

  // Early corner case bailouts
  if (state.current_cost == 0) {
    state.success = true;
    return;
  } else if (moves_.empty()) {
    state.success = false;
    return;
  }

  // Statistics callback variables
  vector<Statistics> statistics((size_t) Move::NUM_MOVES);
  const auto start = chrono::steady_clock::now();

  give_up_now = false;
  for (size_t iterations = 0; (state.current_cost > 0) && !give_up_now; ++iterations) {
    // Invoke statistics callback if we've been running for long enough
    if ((statistics_cb_ != nullptr) && (iterations % interval_ == 0) && iterations > 0) {
      const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
      statistics_cb_({statistics, iterations, dur}, statistics_cb_arg_);
    }

    // This is just here to clean up the for loop; check early exit conditions
    if (iterations >= timeout_itr_) {
      break;
    } else if (duration_cast<duration<size_t>>(steady_clock::now() - start) >= timeout_sec_) {
      break;
    }

    // @todo Check cost function hasn't changed across iterations

    const auto move_type = moves_[int_(gen_)];
    statistics[(size_t) move_type].num_proposed++;

    if (!transforms_->modify(state.current, move_type)) {
      continue;
    }
    statistics[(size_t) move_type].num_succeeded++;

    const auto p = prob_(gen_);
    const auto max = state.current_cost - (log(p) / beta_);

    const auto new_res = fxn(state.current, max + 1);
    const auto is_correct = new_res.first;
    const auto new_cost = new_res.second;

    // @todo Check that cost function hasnt' changed within an iteration

    if (new_cost > max) {
      transforms_->undo(state.current, move_type);
      continue;
    }
    statistics[(size_t) move_type].num_accepted++;
    state.current_cost = new_cost;

    const auto new_best_yet = new_cost < state.best_yet_cost;
    if (new_best_yet) {
      state.best_yet = state.current;
      state.best_yet_cost = new_cost;
    }
    const auto new_best_correct_yet = is_correct && ((new_cost == 0)
                                      || (new_cost < state.best_correct_cost));
    if (new_best_correct_yet) {
      state.success = true;
      state.best_correct = state.current;
      state.best_correct_cost = new_cost;
    }

    if ((progress_cb_ != nullptr) && (new_best_yet || new_best_correct_yet)) {
      progress_cb_({state}, progress_cb_arg_);
    }
  }
}

void Search::stop() {
  give_up_now = true;
}

void Search::configure(Init init, const Cfg& target, CostFunction& fxn, SearchState& state, vector<TUnit>& aux_fxn) const {
  switch (init) {
  case Init::EMPTY:
    configure_empty(target, state);
    break;
  case Init::ZERO:
    configure_zero(target, state);
    break;
  case Init::TARGET:
    configure_target(target, state);
    break;
  case Init::PREVIOUS:
    // Does nothing.
    break;
  case Init::EXTENSION:
    configure_extension(target, state);
    break;

  default:
    assert(false);
    break;
  }

  // add dataflow information about function call targets
  for (const auto& fxn : aux_fxn) {
    auto code = fxn.code;
    auto lbl = code[0].get_operand<x64asm::Label>(0);
    state.current.add_summary(lbl,
                              code.must_read_set(),
                              code.must_write_set(),
                              code.must_undef_set(),
                              code.maybe_read_set(),
                              code.maybe_write_set(),
                              code.maybe_undef_set());
  }

  state.current_cost = fxn(state.current).second;
  state.best_yet_cost = fxn(state.best_yet).second;
  state.best_correct_cost = fxn(state.best_correct).second;
  state.success = false;

  // Invariant 3: Best correct should be correct with respect to target
  assert(fxn(state.best_correct).first);
  // Invariant 4: Best yet should be less than or equal to correct cost
  assert(state.best_yet_cost <= state.current_cost);
}

void Search::configure_empty(const Cfg& target, SearchState& state) const {
  state.current = Cfg({{}}, target.def_ins(), target.live_outs());
  for (size_t i = 0, ie = max_instrs_ - 1; i < ie; ++i) {
    state.current.get_code().push_back({NOP});
  }
  state.current.get_code().push_back({RET});
  state.current.recompute();

  state.best_yet = state.current;
  state.best_correct = target;
}

Code Search::find_sound_code(const RegSet& def_ins, const RegSet& live_outs) {
  auto diff = live_outs - def_ins;
  vector<Instruction> code;

  // initialize all general purpose registers
  for (auto rit = diff.gp_begin(); rit != diff.gp_end(); ++rit) {
    auto reg = *rit;
    auto type = reg.type();
    if (type == Type::R_64 || type == Type::RAX) {
      code.push_back(Instruction(MOV_R64_IMM64, {reg, Imm64(0)}));
    } else if (type == Type::R_32 || type == Type::EAX) {
      code.push_back(Instruction(MOV_R32_IMM32, {reg, Imm32(0)}));
    } else if (type == Type::R_16 || type == Type::AX || type == Type::DX) {
      code.push_back(Instruction(MOV_R16_IMM16, {reg, Imm16(0)}));
    } else if (type == Type::RL || type == Type::AL || type == Type::CL) {
      code.push_back(Instruction(MOV_RL_IMM8, {reg, Imm8(0)}));
    } else if (type == Type::RH) {
      code.push_back(Instruction(MOV_RH_IMM8, {reg, Imm8(0)}));
    } else if (type == Type::RB) {
      code.push_back(Instruction(MOV_RB_IMM8, {reg, Imm8(0)}));
    }
  }

  // initialize sse registers
  for (auto rit = diff.sse_begin(); rit != diff.sse_end(); ++rit) {
    auto reg = *rit;
    auto type = reg.type();
    if (type == Type::XMM || type == Type::XMM_0) {
      code.push_back(Instruction(MOV_R32_IMM32, {Constants::eax(), Imm64(0)}));
      code.push_back(Instruction(MOVD_XMM_R32, {reg, Constants::eax()}));
    } else if (type == Type::YMM) {
      code.push_back(Instruction(MOV_R32_IMM32, {Constants::eax(), Imm64(0)}));
      code.push_back(Instruction(VMOVD_XMM_R32, {reg, Constants::eax()}));
    }
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
      code.push_back(Instruction(MOV_R32_IMM32, {Constants::eax(), Imm64(0)}));
      code.push_back(Instruction(ADD_R32_IMM32, {Constants::eax(), Imm32(0)}));
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
      if (Cfg(Code(copy.begin(), copy.end()), def_ins, live_outs).is_sound()) {
        code = copy;
        changed = true;
        break;
      }
    }
  }

  return Code(code.begin(), code.end());
}

void Search::configure_zero(const Cfg& target, SearchState& state) const {
  if (target.def_ins().contains(target.live_outs())) {
    // no need to initialize any registers
    configure_empty(target, state);
    return;
  }

  auto code = find_sound_code(target.def_ins(), target.live_outs());
  state.current = Cfg(code, target.def_ins(), target.live_outs());
  for (size_t i = code.size(), ie = max_instrs_ - 1; i < ie; ++i) {
    state.current.get_code().push_back({NOP});
  }
  state.current.get_code().push_back({RET});
  state.current.recompute();

  state.best_yet = state.current;
  state.best_correct = target;
}

void Search::configure_target(const Cfg& target, SearchState& state) const {
  state.current = target;
  state.best_yet = target;
  state.best_correct = target;
}

void Search::configure_extension(const Cfg& target, SearchState& state) const {
  // Add user-defined logic here ...

  // Invariant 1: Search state should agree with target on boundary conditions.
  assert(state.current.def_ins() == target.def_ins());
  assert(state.current.live_outs() == target.live_outs());

  assert(state.best_yet.def_ins() == target.def_ins());
  assert(state.best_yet.live_outs() == target.live_outs());

  assert(state.best_correct.def_ins() == target.def_ins());
  assert(state.best_correct.live_outs() == target.live_outs());

  // Invariant 2: Search state must be in a valid state. This function isn't on
  // a critical path, so this can safely be accomplished by calling
  state.current.recompute();
  state.best_yet.recompute();
  state.best_correct.recompute();

  // See Search::configure for additional invariants
}

} // namespace stoke
