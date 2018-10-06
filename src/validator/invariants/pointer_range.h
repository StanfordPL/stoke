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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_POINTER_RANGE_H
#define STOKE_SRC_VALIDATOR_INVARIANT_POINTER_RANGE_H

#include "src/validator/invariant.h"
#include "src/validator/variable.h"

namespace stoke {

class PointerRangeInvariant : public Invariant {

public:
  using Invariant::check;

  PointerRangeInvariant(x64asm::M8 begin, x64asm::M8 end) : begin_(begin), end_(end) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    auto target_begin = target.get_addr(begin_);
    auto target_end =   target.get_addr(end_);
    auto rewrite_begin = rewrite.get_addr(begin_);
    auto rewrite_end   = rewrite.get_addr(end_);

    auto works =
      (target_begin >= SymBitVector::constant(64, 0x1000)) &
      (target_begin <= target_end) &
      (target_end <= SymBitVector::constant(64, (uint64_t)-0x1000)) &
      (rewrite_begin >= SymBitVector::constant(64, 0x1000)) &
      (rewrite_begin <= rewrite_end) &
      (rewrite_end <= SymBitVector::constant(64, (uint64_t)-0x1000));

    return works;
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    uint64_t target_begin = target.get_addr(begin_);
    uint64_t target_end =   target.get_addr(end_);
    uint64_t rewrite_begin = rewrite.get_addr(begin_);
    uint64_t rewrite_end   = rewrite.get_addr(end_);

    bool works =
      (target_begin >= 0x1000) &&
      (target_begin <= target_end) &&
      (target_end <= (uint64_t)-0x1000) &&
      (rewrite_begin >= 0x1000) &&
      (rewrite_begin <= rewrite_end) &&
      (rewrite_end <= (uint64_t)-0x1000);

    return works;
  }

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    return result;
  }

  std::ostream& write(std::ostream& os) const {
    os << "PointerRange(" << begin_ << " : " << end_ << ")";
    return os;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "PointerRangeInvariant" << std::endl;
    out << begin_ << " " << end_ << std::endl;
    return out;
  }

  PointerRangeInvariant(std::istream& is) : 
    begin_(x64asm::Imm32(0)), end_(x64asm::Imm32(0)) {
    is >> std::ws >> begin_ >> std::ws >> end_ >> std::dec;
    CHECK_STREAM(is);
  }

  Invariant* clone() const {
    return new PointerRangeInvariant(begin_, end_);
  }


private:

  x64asm::M8 begin_;
  x64asm::M8 end_;

};

} // namespace stoke



#endif
