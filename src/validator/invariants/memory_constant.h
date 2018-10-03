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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_MEMORY_CONSTANT_H
#define STOKE_SRC_VALIDATOR_INVARIANT_MEMORY_CONSTANT_H

#include "src/validator/invariant.h"

namespace stoke {

class MemoryConstantInvariant : public Invariant {

public:
  using Invariant::check;

  // TODO: rewrite to use Variable class
  MemoryConstantInvariant(x64asm::M8 m, bool is_rewrite, uint8_t byte)
    : m_(m), is_rewrite_(is_rewrite), byte_(byte) {
  }

  SymBool operator()(SymState& target, SymState& rewrite, size_t& number) {

    set_di(target, number, false);
    set_di(rewrite, number, true);

    auto& state = is_rewrite_ ? rewrite : target;

    auto result = state.lookup(m_) == SymBitVector::constant(8, byte_);

    return result;
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    auto& state = is_rewrite_ ? rewrite : target;

    if (!state.in_range(m_) || !state.is_valid(m_)) {
      /*
      std::cout << state << std::endl;
      std::cout << " * " << m_ << std::endl;
      std::cout << " * state not valid" << std::endl;
      */
      return false;
    }

    auto mem_val = state[m_];
    return mem_val.get_fixed_byte(0) == byte_;
  }

  void get_dereference_map(DereferenceMap& deref_map, const CpuState& target, const CpuState& rewrite, size_t& number) {
    auto& state = is_rewrite_ ? rewrite : target;
    auto di = get_di(number, is_rewrite_);
    deref_map[di] = state.get_addr(m_);
  };

  virtual std::vector<Variable> get_variables() const {
    std::vector<Variable> result;
    return result;
  }

  std::ostream& write(std::ostream& os) const {
    os << m_;
    if (is_rewrite_)
      os << "'";
    os << " == " << (uint64_t)byte_;

    return os;
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "MemoryConstant" << std::endl;
    const x64asm::Operand* op = static_cast<const x64asm::Operand*>(&m_);
    out << *op << " " << is_rewrite_ << " " << std::dec << (uint64_t)byte_ << std::endl;
    return out;
  }

  MemoryConstantInvariant(std::istream& is) : m_(x64asm::M8(x64asm::Imm32(0))) {
    x64asm::M8 m8(x64asm::Imm32(0));
    uint64_t byte;
    is >> std::ws >> m8 >> is_rewrite_ >> std::dec >> byte;
    CHECK_STREAM(is);
    m_ = m8;
    byte_ = (uint8_t)byte;
  }

private:

  x64asm::M8 m_;
  bool is_rewrite_;
  uint8_t byte_;

};

} // namespace stoke



#endif
