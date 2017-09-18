
#include "src/validator/variable.h"

using namespace stoke;
using namespace std;
using namespace x64asm;

SymBitVector Variable::from_state(SymState& target, SymState& rewrite) const {
  auto& prog = is_rewrite ? rewrite : target;

  if (!is_ghost) {
    SymBitVector original_bv = prog[operand];
    SymBitVector extracted = original_bv[size*8+offset*8-1][offset*8];
    return extracted;
  } else {
    return prog.shadow[name];
  }
}

/** From a concrete state, find the value of this term. */
uint64_t Variable::from_state(const CpuState& target, const CpuState& rewrite) const {

  assert(size <= 8);
  assert(offset >= 0);

  auto& cs = is_rewrite ? rewrite : target;

  if (!is_ghost) {

    if (operand.is_typical_memory()) {
      auto mem = static_cast<const x64asm::Mem&>(operand);
      if (!cs.is_valid(mem)) {
        cout << "===== from state: invalid memory reference" << endl;
        return 0; // it would really be a segfault
      }
    }

    auto vector = cs[operand];

    uint64_t value = 0;
    for (int i = offset + (int)size - 1; (int)i >= offset; --i) {
      value = value << 8;
      value = value | vector.get_fixed_byte(i);
    }

    return value;
  } else {
    return cs.shadow.at(name);
  }
}


namespace std {


std::ostream& operator<<(std::ostream& os, const stoke::Variable& v) {

  if (v.coefficient < 0) {
    os << "-" << -v.coefficient << "*";
  } else if (v.coefficient != 1) {
    os << v.coefficient << "*";
  }

  if (!v.is_ghost) {
    size_t total_size = v.operand.size()/8;
    size_t sub_size = v.size;

    os << v.operand;
    if (v.operand.is_typical_memory())
      os << dec << "(" << v.size*8 <<  ")";

    if (v.is_rewrite)
      os << "'";

    if (sub_size < total_size) {
      // we need to add some indexing information
      os << "[" << (v.size*8 + v.offset*8) << ":" << (v.offset*8) << "]";
    }
  } else {
    os << v.name;
    if (v.is_rewrite)
      os << "'";
  }

  return os;

};

}
