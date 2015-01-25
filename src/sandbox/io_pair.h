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

#ifndef STOKE_SRC_SANDBOX_IO_PAIR_H
#define STOKE_SRC_SANDBOX_IO_PAIR_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_state.h"

namespace stoke {

class IoPair {
  /** This class is for use by the sandbox only. */
  friend class Sandbox;
  /** This iterator exposes input states. */
  friend class input_iterator;
  /** This iterator exposes output states. */
  friend class output_iterator;

  /** Input state (this never changes). */
  CpuState in_;
  /** Copies input state to cpu. */
  x64asm::Function in2cpu_;

  /** Output state (this is modified as code executes). */
  CpuState out_;
  /** Copies output state to cpu. */
  x64asm::Function out2cpu_;
  /** Reads output state from cpu. */
  x64asm::Function cpu2out_;
  /** Sandboxes memory accesses for this output state. */
  x64asm::Function map_addr_;
};

} // namespace stoke

#endif
