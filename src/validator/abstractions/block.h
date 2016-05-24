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

  BlockAbstraction(const Cfg& cfg) : cfg_(cfg) {

  }

  /** Get the start state for this abstraction. */
  virtual State start_state() {
    return cfg_.get_entry();
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

  /** Extract a sequence of states from a test case. */
  virtual std::vector<State> learn_trace(CpuState& tc) {
    std::vector<State> trace;

    CfgPath p;
    CfgPaths cp;
    cp.learn_path(p, cfg_, tc);
    for (auto it : p)
      trace.push_back((State)it);

    return trace;
  }

  ~BlockAbstraction() { }

private:

  /** The control flow graph we're abstracting. */
  Cfg cfg_;

};

}

#endif
