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

#ifndef STOKE_SRC_VALIDATOR_ABSTRACTION_H
#define STOKE_SRC_VALIDATOR_ABSTRACTION_H

#include <utility>
#include <vector>


#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"

namespace stoke {

class Abstraction {

public:

  typedef uint64_t State;
  typedef std::vector<State> Path;
  typedef std::vector<std::pair<State, CpuState>> FullTrace;

  Abstraction(const Cfg& cfg, const Sandbox& sandbox) : cfg_(cfg), sandbox_(sandbox) { }

  /** Get the CFG */
  Cfg get_cfg() {
    return cfg_;
  }

  /** Get the start state for this abstraction. */
  virtual State start_state() = 0;

  /** Get the set of exit states for this abstraction. */
  virtual State exit_state() = 0;

  /** Get the next states from a start state. */
  virtual std::vector<State> next_states(State) = 0;
  /** Get the previous states from a start state. */
  virtual std::vector<State> prev_states(State) = 0;

  /** Get the defined registers at a given state. */
  virtual x64asm::RegSet defined_regs(State) = 0;
  /** Get live out registers at a point in the abstraction automata. */
  virtual x64asm::RegSet live_out_regs(State) = 0;

  /** Extract a sequence of states from a test case.  If
   include_start is set to true, we also output the initial
   starting state in the trace. */
  virtual std::vector<std::pair<State, CpuState>> learn_trace(const CpuState&, bool include_start = true) = 0;

  virtual ~Abstraction() { }

protected:

  /** Cfg we're abstracting. */
  Cfg cfg_;
  /** The sandbox */
  Sandbox sandbox_;

};

}

#endif
