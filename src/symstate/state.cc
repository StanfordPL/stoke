
#include "src/symstate/state.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;
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

  set(eflags_cf, SymBool::constant(cs.rf.is_set(eflags_cf.index())));
  set(eflags_pf, SymBool::constant(cs.rf.is_set(eflags_pf.index())));
  set(eflags_af, SymBool::constant(cs.rf.is_set(eflags_af.index())));
  set(eflags_zf, SymBool::constant(cs.rf.is_set(eflags_zf.index())));
  set(eflags_sf, SymBool::constant(cs.rf.is_set(eflags_sf.index())));
  set(eflags_of, SymBool::constant(cs.rf.is_set(eflags_of.index())));

}

void SymState::build_with_suffix(const string& suffix) {

  for(size_t i = 0; i < gp.size(); ++i) {
    stringstream name;
    name << r64s[i] << "_" << suffix;
    gp[i] = SymBitVector::var(64, name.str());
  }

  for(size_t i = 0; i < sse.size(); ++i) {
    stringstream name;
    name << ymms[i] << "_" << suffix;
    sse[i] = SymBitVector::var(256, name.str());
  }

  set(eflags_cf, SymBool::var("cf_" + suffix));
  set(eflags_pf, SymBool::var("pf_" + suffix));
  set(eflags_af, SymBool::var("af_" + suffix));
  set(eflags_zf, SymBool::var("zf_" + suffix));
  set(eflags_sf, SymBool::var("sf_" + suffix));
  set(eflags_of, SymBool::var("of_" + suffix));

}

SymBool SymState::operator[](const Eflags f) const {

  if(f.index() == 0)  //CF
    return rf[0];
  if(f.index() == 2)  //PF
    return rf[1];
  if(f.index() == 4)  //AF
    return rf[2];
  if(f.index() == 6)  //ZF
    return rf[3];
  if(f.index() == 7)  //SF
    return rf[4];
  if(f.index() == 11) //OF
    return rf[5];

  assert(false);
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

void SymState::set(const Eflags f, SymBool b) {

  switch(f.index()) {
    case 0: { //CF
      rf[0] = b;
      return;
    }
    case 2: { //PF
      rf[1] = b;
      return;
    }
    case 4: { //AF
      rf[2] = b;
      return;
    }
    case 6: { //ZF
      rf[3] = b;
      return;
    }
    case 7: { //SF
      rf[4] = b;
      return;
    }
    case 11: { //OF
      rf[5] = b;
      return;
    }
    default:
      assert(false);
      return;
  }

  assert(false);
}

/** Generate constraints expressing equality of two states over a given regset */
std::vector<SymBool> SymState::equality_constraints(const SymState& other, const RegSet& rs) const {

  std::vector<SymBool> constraints;

  for(auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    constraints.push_back((*this)[*gp_it] == other[*gp_it]);
  }
  for(auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    constraints.push_back((*this)[*sse_it] == other[*sse_it]);
  }

  // TODO: this can be simplified with the following changes to x64asm:
  //   - iterate eflags
  if(rs.contains(eflags_cf))
    constraints.push_back((*this)[eflags_cf] == other[eflags_cf]);
  if(rs.contains(eflags_pf))
    constraints.push_back((*this)[eflags_pf] == other[eflags_pf]);
  if(rs.contains(eflags_af))
    constraints.push_back((*this)[eflags_af] == other[eflags_af]);
  if(rs.contains(eflags_zf))
    constraints.push_back((*this)[eflags_zf] == other[eflags_zf]);
  if(rs.contains(eflags_sf))
    constraints.push_back((*this)[eflags_sf] == other[eflags_sf]);
  if(rs.contains(eflags_of))
    constraints.push_back((*this)[eflags_of] == other[eflags_of]);

  return constraints;
}


