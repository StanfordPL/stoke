
#include "src/symstate/state.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace stoke;
using namespace x64asm;

void SymState::build_from_cpustate(const CpuState& cs) {

  for(size_t i = 0; i < cs.gp.size(); ++i) {
    gp[i] = SymBitVector::constant(64, cs.gp[i].get_fixed_quad(0));    
  }

  for(size_t i = 0; i < cs.sse.size(); ++i) {
    sse[i] =
      SymBitVector::constant(64, cs.sse[i].get_fixed_quad(3)) || 
      SymBitVector::constant(64, cs.sse[i].get_fixed_quad(2)) || 
      SymBitVector::constant(64, cs.sse[i].get_fixed_quad(1)) || 
      SymBitVector::constant(64, cs.sse[i].get_fixed_quad(0));
  }

}

const SymBitVector& SymState::get_operand(const Operand o) const {

  if(o.is_gp_register()) {
    auto& r = reinterpret_cast<const R&>(o);
    return gp[r];
  }

  if(o.type() == Type::XMM) {
    auto& xmm = reinterpret_cast<const Xmm&>(o);
    return sse[xmm][127][0];
  }

  if(o.type() == Type::YMM) {
    auto& ymm = reinterpret_cast<const Ymm&>(o);
    return sse[ymm];
  }

  if(o.is_immediate()) {
    auto& imm = reinterpret_cast<const Imm&>(o);
    return SymBitVector::constant(o.size(), imm);
  }
}
