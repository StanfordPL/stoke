
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

SymBitVector SymState::operator[](const Operand o) const {

  if(o.is_gp_register()) {
    auto& r = reinterpret_cast<const R&>(o);
    if (o.size() != 64)
      return gp[r][o.size() - 1][0];
    else
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

/* Set the operand in the symbolic state to the specified bitvector.
 * Note that the operand o and parameter bv must be the same bitwidth.
 *
 * If the operand is smaller than its parent register, the parent register is
 * preserved on the other bits *unless* (i) we're storing into the lower
 * 32-bits of a 64-bit gp register, or (ii) it's an AVX instruction storing
 * into the lower 128 bits of a ymm register; in both cases the other bits
 * would be zero'd out.
 *
 * The preserve32 param overrides the behavior of zeroing out the upper 32-bits
 * of 64-bit gp registers, and the avx param enables zeroing out the upper 128
 * bits of ymm registers.
 *
 */
void SymState::set(const Operand o, SymBitVector bv, bool avx, bool preserve32) {

  /* Check if we have the 32-bit gp special case, or the XMM special case */
  if (o.is_gp_register() && o.size() == 32 && !preserve32) {
    // 32-bit special case
    auto& r32 = reinterpret_cast<const R32&>(o);
    gp[r32] = SymBitVector::constant(32, 0) || bv;
    return;
  } else if (o.is_gp_register() && o.size() == 64) {
    // 64-bit gp register.  easy.
    auto& r = reinterpret_cast<const R&>(o);
    gp[r] = bv;
    return;
  } else if (o.is_gp_register()) {
    // small gp register
    auto& r = reinterpret_cast<const R&>(o);
    gp[r] = gp[r][63][o.size()] || bv;
    return;
  } else if (avx && o.type() == Type::XMM) {
    // avx special case
    auto& xmm = reinterpret_cast<const Xmm&>(o);
    sse[xmm] = SymBitVector::constant(128, 0) || bv[127][0];
    return;
  } else if (o.type() == Type::XMM) {
    // xmm with ymm preserved
    auto& xmm = reinterpret_cast<const Xmm&>(o);
    sse[xmm] = sse[xmm][255][128] || bv;
    return;
  } else if (o.type() == Type::YMM) {
    // set the ymm register
    auto& ymm = reinterpret_cast<const Ymm&>(o);
    sse[ymm] = bv;
    return;
  }

  assert(false);

}
