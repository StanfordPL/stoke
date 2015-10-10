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

  EqualityInvariant(std::map<x64asm::R, long> target_mults, std::map<x64asm::R, long> rewrite_mults, long constant) : target_multipliers_(target_mults), rewrite_multipliers_(rewrite_mults) {
    constant_ = constant;
  }

  SymBool operator()(const SymState& left, const SymState& right) const {
    SymBitVector sum = SymBitVector::constant(64, 0);

    for (size_t i = 0; i < x64asm::r64s.size(); ++i) {
      x64asm::R reg = x64asm::r64s[i];

      if (target_multipliers_.count(reg)) {
        sum = sum + SymBitVector::constant(64, target_multipliers_.at(reg))*left.gp[reg];
      }
      if (rewrite_multipliers_.count(reg)) {
        sum = sum + SymBitVector::constant(64, rewrite_multipliers_.at(reg))*right.gp[reg];
      }
    }

    for (size_t i = 0; i < x64asm::r64s.size(); ++i) {
      x64asm::R reg = x64asm::r32s[i];

      if (target_multipliers_.count(reg)) {
        sum = sum + SymBitVector::constant(64, target_multipliers_.at(reg))*(left.gp[reg][31][0].sign_extend(64));
      }
      if (rewrite_multipliers_.count(reg)) {
        sum = sum + SymBitVector::constant(64, rewrite_multipliers_.at(reg))*(right.gp[reg][31][0].sign_extend(64));
      }
    }

    return sum == SymBitVector::constant(64, constant_);
  }

  std::ostream& write(std::ostream& os) const {
    os << std::dec;
    bool not_first = false;
    for(size_t i = 0; i < x64asm::r64s.size(); ++i) {
      for(size_t j = 0; j < 2; ++j) {
        x64asm::R reg = x64asm::r32s[i];
        if(j)
          reg = x64asm::r64s[i];
        //std::cout << "Looking for " << reg << std::endl;
        if(target_multipliers_.count(reg)) {
          auto mult = target_multipliers_.at(reg);
          //std::cout << "  ... found it in target " << mult << std::endl;
          if(mult != 0) {
            if(not_first)
              os << " + ";
            else
              not_first = true;
            if(mult == 1) {
              os << reg;
            } else {
              os << mult << "*" << reg;
            }
          }
        } 
        if(rewrite_multipliers_.count(reg)) {
          auto mult = rewrite_multipliers_.at(reg);
          //std::cout << "  ... found it in rewrite " << mult << std::endl;
          if(mult != 0) {
            if(not_first)
              os << " + ";
            else
              not_first = true;
            if(mult == 1) {
              os << reg << "'";
            } else {
              os << mult << "*" << reg << "'";
            }
          }
        }
      }
    }

    if(!not_first) {
      if(constant_ == 0)
        os << "true";
      else
        os << "false";
    } else {
      os << " = " << constant_;
    }

    return os;
  }

private:

  std::map<x64asm::R, long> target_multipliers_;
  std::map<x64asm::R, long> rewrite_multipliers_;
  long constant_;

};

} // namespace stoke



#endif
