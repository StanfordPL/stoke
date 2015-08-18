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

#ifndef STOKE_SRC_COST_NACL2_H
#define STOKE_SRC_COST_NACL2_H

#include "src/cost/cost_function.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

template <bool debug>
class NaCl2Cost : public CostFunction {

public:

  NaCl2Cost() {
    set_restricted_register_penalty(1);
    set_bad_instruction_penalty(100);
  }

  NaCl2Cost<debug>& set_restricted_register_penalty(uint64_t n) {
    restricted_register_penalty_ = n;
    return *this;
  }

  NaCl2Cost<debug>& set_bad_instruction_penalty(uint64_t n) {
    bad_instruction_penalty_ = n;
    return *this;
  }

  result_type operator()(const Cfg& cfg, Cost max = max_cost);

private:

  /** A cost associated for using this opcode to compute an index.
    0 if it's valid in the NaCl validator.  1 if an OpcodeWidth move could fix
    it.  The penalty if there's not a chance. */
  Cost index_cost(x64asm::Opcode op) const;

  uint64_t restricted_register_penalty_;
  uint64_t bad_instruction_penalty_;

  x64asm::Assembler assm_;
  x64asm::Function buffer_;

};

} // namespace stoke

#endif




