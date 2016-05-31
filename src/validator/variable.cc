
#include "src/validator/variable.h"

using namespace stoke;
using namespace std;
using namespace x64asm;

SymBitVector Variable::from_state(SymState& target, SymState& rewrite) {
  auto& prog = this->is_rewrite ? rewrite : target;
  auto op = this->operand;

  SymBitVector original_bv = prog[op];
  SymBitVector extracted = original_bv[this->size*8+this->offset*8-1][this->offset*8];
  return extracted;
}

/** From a concrete state, find the value of this term. */
uint64_t Variable::from_state(const CpuState& target, const CpuState& rewrite) {

  assert(size <= 8);
  assert(offset >= 0);

  auto& prog = this->is_rewrite ? rewrite : target;
  auto op = this->operand;
  auto vector = prog[op];

  uint64_t value = 0;
  for (int i = offset + (int)size - 1; (int)i >= offset; --i) {
    value = value << 8;
    value = value | vector.get_fixed_byte(i);
  }

  return value;
}


namespace std {


std::ostream& operator<<(std::ostream& os, const stoke::Variable& v) {

  size_t total_size = v.operand.size()/8;
  size_t sub_size = v.size;

  if (v.coefficient < 0) {
    if (v.coefficient == -1) {
      os << "-";
    } else {
      os << "-" << (-v.coefficient);
    }
  } else if (v.coefficient != 1) {
    os << v.coefficient;
  }

  os << v.operand;

  if (v.is_rewrite)
    os << "'";

  if (sub_size < total_size) {
    // we need to add some indexing information
    os << "[" << (v.size*8 + v.offset*8) << ":" << (v.offset*8) << "]";
  }

  return os;

};

}
