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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_EQUALITY_H
#define STOKE_SRC_VALIDATOR_INVARIANT_EQUALITY_H

#include "src/symstate/state.h"


namespace stoke {

class EqualityInvariant : public Invariant {

public:

  EqualityInvariant(std::map<x64asm::R, int> target_mults, std::map<x64asm::R, int> rewrite_mults, int constant) : target_r64_multipliers_(target_mults), rewrite_r64_multipliers_(rewrite_mults) {
    constant_ = constant;
  }

  SymBool operator()(const SymState& left, const SymState& right) const {
    int count64 = 0;
    SymBitVector sum = SymBitVector::constant(64, 0);

    for (size_t i = 0; i < x64asm::r64s.size(); ++i) {
      x64asm::R reg = x64asm::r64s[i];

      if (target_r64_multipliers_.count(reg)) {
        count64++;
        sum = sum + SymBitVector::constant(64, target_r64_multipliers_.at(reg))*left.gp[reg];
      }
      if (rewrite_r64_multipliers_.count(reg)) {
        count64++;
        sum = sum + SymBitVector::constant(64, rewrite_r64_multipliers_.at(reg))*right.gp[reg];
      }
    }

    SymBool result;
    if (count64) {
      result = sum == SymBitVector::constant(64, constant_);
    } else {
      result = SymBool::_true();
    }

    SymBitVector sum32 = SymBitVector::constant(32, 0);
    int count32 = 0;
    for (size_t i = 0; i < x64asm::r64s.size(); ++i) {
      x64asm::R reg = x64asm::r32s[i];

      if (target_r64_multipliers_.count(reg)) {
        sum32 = sum32 + SymBitVector::constant(32, target_r64_multipliers_.at(reg))*(left.gp[reg][31][0]);
        count32++;
      }
      if (rewrite_r64_multipliers_.count(reg)) {
        sum32 = sum32 + SymBitVector::constant(32, rewrite_r64_multipliers_.at(reg))*(right.gp[reg][31][0]);
        count32++;
      }
    }
    if (count32)
      result = result & (sum32 == SymBitVector::constant(32, constant_));

    return result;
  }

private:

  std::map<x64asm::R, int> target_r64_multipliers_;
  std::map<x64asm::R, int> rewrite_r64_multipliers_;
  int constant_;

};

} // namespace stoke



#endif
