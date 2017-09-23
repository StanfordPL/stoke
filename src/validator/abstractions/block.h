// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_ABSTRACTION_BLOCK_H
#define STOKE_SRC_VALIDATOR_ABSTRACTION_BLOCK_H

#include "src/validator/abstraction.h"
#include "src/cfg/paths.h"

namespace stoke {

class BlockAbstraction : public Abstraction {

public:

  BlockAbstraction(const Cfg& cfg, const Sandbox& sandbox) : Abstraction(cfg, sandbox) {
    cfg_.recompute();
  }

  /** Get the start state for this abstraction. */
  virtual State start_state() {
    return cfg_.get_entry();
  }

  /** Get the exit states for this abstraction. */
  virtual State exit_state() {
    return cfg_.get_exit();
  }

  /** Get the next states from a start state. */
  virtual std::vector<State> next_states(State s) {
    std::vector<State> next;
    for (auto it = cfg_.succ_begin(s); it != cfg_.succ_end(s); ++it) {
      next.push_back(*it);
    }
    return next;
  }

  /** Get the previous states from a start state. */
  virtual std::vector<State> prev_states(State s) {
    std::vector<State> prev;
    for (auto it = cfg_.pred_begin(s); it != cfg_.pred_end(s); ++it) {
      prev.push_back(*it);
    }
    return prev;
  }

  virtual x64asm::RegSet defined_regs(State s) {
    return cfg_.def_outs(s);
  }

  virtual x64asm::RegSet live_out_regs(State s) {
    if (s == start_state()) {
      return cfg_.live_ins();
    } else if (s == exit_state()) {
      return cfg_.live_outs();
    } else {
      assert(cfg_.num_instrs(s) > 0);
      auto loc = Cfg::loc_type(s, cfg_.num_instrs(s)-1);
      return cfg_.live_outs(loc);
    }
  }


  struct TraceCallbackInfo {
    State state;
    std::vector<std::pair<State, CpuState>>* trace;
  };

  static void learn_trace_callback(const StateCallbackData& data, void* ptr) {
    auto tci = (TraceCallbackInfo*)ptr;

    std::pair<State, CpuState> p;
    p.first = tci->state;
    p.second = data.state;

    tci->trace->push_back(p);
  }

  /** Extract a sequence of states from a test case. */
  virtual std::vector<std::pair<State, CpuState>> learn_trace(const CpuState& tc, bool include_start) {
    auto code = cfg_.get_code();
    auto label = cfg_.get_function().get_leading_label();
    sandbox_.reset();
    sandbox_.insert_function(cfg_);
    sandbox_.insert_input(tc);
    sandbox_.set_entrypoint(label);

    std::vector<std::pair<State, CpuState>> trace;
    std::vector<TraceCallbackInfo*> to_delete;

    if (include_start)
      trace.push_back(std::pair<State,CpuState>(start_state(), tc));

    for (size_t i = cfg_.get_entry(), ie = cfg_.get_exit(); i < ie; ++i) {
      size_t instrs_in_block = cfg_.num_instrs(i);
      if (!instrs_in_block)
        continue;

      size_t index = cfg_.get_index({i, instrs_in_block-1});
      auto instr = code[index];

      TraceCallbackInfo* tci = new TraceCallbackInfo();
      tci->state = (State)i;
      tci->trace = &trace;
      to_delete.push_back(tci);

      if (instr.is_jump() || instr.is_ret()) {
        sandbox_.insert_before(label, index, learn_trace_callback, tci);
      } else {
        sandbox_.insert_after(label, index, learn_trace_callback, tci);
      }
    }

    sandbox_.run();

    for (auto it : to_delete)
      delete it;

    return trace;
  }

  ~BlockAbstraction() { }

};

}

#endif
