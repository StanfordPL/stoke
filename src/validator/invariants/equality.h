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

// Copyrewrite 2013-2015 Stanford University
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

#include "src/validator/invariant.h"

namespace stoke {

class EqualityInvariant : public Invariant {

public:
  using Invariant::check;

  typedef std::map<std::pair<x64asm::Operand, bool>, long> CoefficientMap;

  EqualityInvariant(CoefficientMap& target_mults, CoefficientMap& rewrite_mults, long constant) : target_multipliers_(target_mults), rewrite_multipliers_(rewrite_mults) {
    constant_ = constant;
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& tln, size_t& rln) const {
    SymBitVector sum = SymBitVector::constant(64, 0);

    for(size_t k = 0; k < 2; ++k) {
      auto map = k ? rewrite_multipliers_ : target_multipliers_;
      auto prog = k ? rewrite : target;

      for (auto pair : map) {
        auto r = pair.first.first;
        auto multiplier = pair.second;
        bool sign_extend = pair.first.second;
        size_t index = 0;

        auto value64 = prog[r];
        if(r.size() < 64 && sign_extend) {
          value64 = value64.sign_extend(64);
        } else if (r.size() < 64) {
          value64 = SymBitVector::constant(64-r.size(), 0) || value64;
        } else if (r.size() > 64) {
          value64 = value64[index*64+63][index*64];
        }

        sum = sum + SymBitVector::constant(64, multiplier)*value64;
      }
    }

    return sum == SymBitVector::constant(64, constant_);
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {
    uint64_t sum = 0;


    for(size_t k = 0; k < 2; ++k) {
      auto map = k ? rewrite_multipliers_ : target_multipliers_;
      auto prog = k ? rewrite : target;

      for (auto pair : map) {
        auto r = pair.first.first;
        auto multiplier = pair.second;
        bool sign_extend = pair.first.second;
        size_t index = 0;

        auto value = prog[r];
        uint64_t value64 = 0;

        if(r.size() == 32 && sign_extend) {
          value64 = (uint64_t)value.get_fixed_double(0);
          if (value64 & 0x80000000) 
            value64 = value64 | 0xffffffff00000000;
        } else if (r.size() == 32) {
          value64 = (uint64_t)value.get_fixed_double(0);
        } else if (r.size() > 64) {
          value64 = value.get_fixed_quad(index);
        }

        sum = sum + multiplier*value64;
      }
    }

    return sum == (uint64_t)constant_;
  }

  std::ostream& write(std::ostream& os) const {
    os << std::dec;
    bool not_first = false;
    for (size_t i = 0; i < x64asm::r64s.size(); ++i) {
      for (size_t j = 0; j < 3; ++j) {
        bool size_32 = (j == 1 || j == 2);
        bool sign_extend = (j == 2);

        x64asm::R reg = x64asm::r32s[i];
        if (!size_32)
          reg = x64asm::r64s[i];

        std::string sx = sign_extend ? "_sx" : "";

        auto p = std::pair<x64asm::R, bool>(reg, sign_extend);
        //std::cout << "Looking for " << reg << std::endl;
        if (target_multipliers_.count(p)) {
          auto mult = target_multipliers_.at(p);
          //std::cout << "  ... found it in target " << mult << std::endl;
          if (mult != 0) {
            if (not_first)
              os << " + ";
            else
              not_first = true;
            if (mult == 1) {
              os << reg << sx;
            } else {
              os << mult << "*" << reg << sx;
            }
          }
        }
        if (rewrite_multipliers_.count(p)) {
          auto mult = rewrite_multipliers_.at(p);
          //std::cout << "  ... found it in rewrite " << mult << std::endl;
          if (mult != 0) {
            if (not_first)
              os << " + ";
            else
              not_first = true;
            if (mult == 1) {
              os << reg << sx << "'";
            } else {
              os << mult << "*" << reg << sx << "'";
            }
          }
        }
      }
    }

    if (!not_first) {
      if (constant_ == 0)
        os << "true";
      else
        os << "false";
    } else {
      os << " = " << constant_;
    }

    return os;
  }


private:

  static uint64_t sign_extend(const CpuState& cs, x64asm::R& r) {
    uint64_t value = cs.gp[r].get_fixed_quad(0);
    size_t width = r.size();
    /*
    std::cout << "SIGN EXTENDING " << std::dec << "width=" << width
              << " r=" << r << " " << std::hex << value << std::endl;
              */
    if (width == 64)
      return value;

    uint64_t value_mask = ((uint64_t)1 << width) - 1;
    value &= value_mask;
    //std::cout << "MASK=" << value_mask << " VALUE=" << value << std::endl;

    uint64_t sign_mask = ((uint64_t)1 << width);
    if (value & sign_mask) {
      uint64_t ones = (uint64_t)(-1);
      ones = ones << width;
      //std::cout << (value | ones) << std::endl;
      return value | ones;
    } else {
      // positive
      //std::cout << value << std::endl;
      return value;
    }
  }

  static uint64_t zero_extend(const CpuState& cs, x64asm::R& r) {
    uint64_t value = cs.gp[r].get_fixed_quad(0);
    size_t width = r.size();
    if (width == 64)
      return value;

    uint64_t value_mask = ((uint64_t)1 << width) - 1;
    value &= value_mask;
    return value;
  }

  /** Map from (register, sign_extend?) -> multiplier */
  std::map<std::pair<x64asm::Operand, bool>, long> target_multipliers_;
  std::map<std::pair<x64asm::Operand, bool>, long> rewrite_multipliers_;
  long constant_;

};

} // namespace stoke



#endif
