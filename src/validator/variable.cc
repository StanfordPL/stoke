
#include "src/serialize/check_stream.h"
#include "src/validator/variable.h"

using namespace stoke;
using namespace std;
using namespace x64asm;

SymBitVector Variable::from_state(SymState& target, SymState& rewrite) const {
  auto& prog = is_rewrite ? rewrite : target;

  /*
  cout << "====" << endl;
  cout << "Looking up variable from state: " << *this << endl;
  cout << "   size=" << size << "   offset=" << offset << endl;
  */

  if (!is_ghost) {
    SymBitVector original_bv = prog[operand];
    SymBitVector extracted = original_bv[size*8+offset*8-1][offset*8];
    return extracted;
  } else {
    return prog.shadow[name];
  }
}

bool Variable::is_valid(const CpuState& target, const CpuState& rewrite) const {

  auto& cs = is_rewrite ? rewrite : target;

  if (operand.is_typical_memory()) {
    auto mem = static_cast<const x64asm::Mem&>(operand);
    auto addr = cs.get_addr(mem);
    for(size_t i = 0; i < mem.size()/8; ++i) {
      if (!cs.is_valid(addr + i)) {
        return false; // it would really be a segfault
      }
    }
  }

  return true;
}

bool Variable::is_valid(const vector<CpuState>& target, const vector<CpuState>& rewrite) const {
  for(size_t i = 0; i < target.size(); ++i) {
    if(!is_valid(target[i], rewrite[i]))
      return false;
  }

  return true;
}

/** From a concrete state, find the value of this term. */
cpputil::BitVector Variable::from_state_vector(const CpuState& target, const CpuState& rewrite) const {

  assert(offset >= 0);

  auto& cs = is_rewrite ? rewrite : target;
  

  if (!is_ghost) {

    if (operand.is_typical_memory()) {
      auto mem = static_cast<const x64asm::Mem&>(operand);
      if (!cs.is_valid(mem)) {
        cpputil::BitVector v(mem.size());
        return v; // it would really be a segfault
      }
    }

    auto vector = cs[operand];
    return vector;
  } else {
    cpputil::BitVector v(64);
    v.get_fixed_quad(0) = cs.shadow.at(name);
    return v;
  }
}

/** From a concrete state, find the value of this term. */
uint64_t Variable::from_state(const CpuState& target, const CpuState& rewrite) const {
  assert(size <= 8);
  assert(offset >= 0);

  auto vector = from_state_vector(target, rewrite);
  uint64_t value = 0;
  for (int i = offset + (int)size - 1; (int)i >= offset; --i) {
    value = value << 8;
    value = value | vector.get_fixed_byte(i);
  }
  return value;
}

/** Does this have a memory dereference? */
bool Variable::is_dereference() const {
  if(is_ghost)
    return false;
  return operand.is_typical_memory();
}

uint64_t Variable::get_addr(const CpuState& target, const CpuState& rewrite) const {
  const Mem& mem = static_cast<const Mem&>(operand);
  if(is_rewrite) {
    return rewrite.get_addr(mem);
  } else {
    return target.get_addr(mem);
  }
}



Variable Variable::bb_ghost(size_t n, bool is_rewrite) {
  std::stringstream ss;
  ss << "n" << n;
  Variable v(ss.str(), is_rewrite);
  return v;
}

size_t Variable::get_ghost_bb() {
  std::string ghost = name;
  assert(ghost[0] == 'n');
  ghost = ghost.substr(1);
  size_t block = stoul(ghost);
  return block;
}


ostream& Variable::serialize(ostream& out) const {
  out << is_rewrite << " " 
      << size << " "
      << offset << " "
      << coefficient << " "
      << is_ghost << endl;
  if(is_ghost) {
    out << name << endl;
  } else {
    out << operand << endl;
  }
  return out;
}

istream& Variable::deserialize(istream& in) {
  in >> std::dec;
  in >> is_rewrite >> ws
     >> size >> ws
     >> offset >> ws
     >> coefficient >> ws
     >> is_ghost >> ws;
  CHECK_STREAM(in);
  if(is_ghost) {
    in >> name >> ws;
    CHECK_STREAM(in);
  } else {
    in >> operand >> std::dec >> ws;
    CHECK_STREAM(in);
  }

  /** Unfortunately, writing and reading the operand looses the size of memory
    references.  Therefore we need to modify the memory reference so that it
    is sufficiently large to account for the size and offset (which are expressed
    in bytes) */
  size_t min_size = size+offset;
  if(operand.size() < min_size*8) {
    size_t new_size = 1;
    while(new_size < min_size) {
      new_size *= 2;
    }
    assert(operand.is_typical_memory());
    /*
    cout << "Upgrading operand " << operand << "to size " << new_size << endl;
    cout << "is_typical_memory: " << operand.is_typical_memory() << endl;
    */
    M8 m = *static_cast<M8*>(&operand);

    switch(new_size) {
      case 1:
        operand = M8(m);
        break;
      case 2:
        operand = M16(m);
        break;
      case 4:
        operand = M32(m);
        break;
      case 8:
        operand = M64(m);
        break;
      case 16:
        operand = M128(m);
        break;
      case 32:
        operand = M256(m);
        break;
    }
  }

  return in;
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
      os << "[" << (v.size*8 + v.offset*8 - 1) << ":" << (v.offset*8) << "]";
    }
  } else {
    os << v.name;
    if (v.is_rewrite)
      os << "'";
  }

  return os;

};

}
