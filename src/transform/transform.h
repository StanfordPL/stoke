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

#ifndef STOKE_SRC_TRANSFORM_TRANSFORM_H
#define STOKE_SRC_TRANSFORM_TRANSFORM_H

#include "src/cfg/cfg.h"
#include "src/transform/info.h"
#include "src/transform/pools.h"

namespace stoke {

class Transform {
public:

  Transform(TransformPools& pools) : pools_(pools) {}

  /** Returns a name for this transform. */
  virtual std::string get_name() const = 0;

  /** Attempt to transform the Cfg.  The 'TransformInfo'
    will return success/failure, and also metadata to undo
    the transformation if needed.  */
  virtual TransformInfo operator()(Cfg& cfg) = 0;

  /** Undos a move performed on the Cfg.  Requires the 'TransformInfo'
      originally passed to operator() */
  virtual void undo(Cfg& cfg, const TransformInfo& transform_info) const = 0;

  /** Set a seed for the random number generator. */
  virtual void set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
  }

  virtual ~Transform() {}

protected:


  /** Does this instruction induce control flow? */
  static bool is_control_opcode(x64asm::Opcode o);

  /** Does this instruction induce control flow, other than a call (which STOKE can propose)? */
  static bool is_control_other_than_call(x64asm::Opcode op);

  /** Get the index of some non-control flow instruction in the code. */
  bool get_indices(const Cfg& cfg, Cfg::id_type& bb, size_t& block_idx, size_t& code_idx);

  TransformPools& pools_;
  std::default_random_engine gen_;

private:

};

} // namespace stoke

#endif
