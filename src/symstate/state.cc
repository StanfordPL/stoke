
#include "src/symstate/state.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace stoke;
using namespace x64asm;

void SymState::build_from_cpustate(const CpuState& cs) {

  for(size_t i = 0; i < cs.gp.size(); ++i) {
    gp[i] = SymBitVectorConstant(64, cs.gp[i].get_fixed_quad(0));    
  }

  for(size_t i = 0; i < cs.sse.size(); ++i) {
    sse[i] =
      SymBitVectorConstant(64, cs.sse[i].get_fixed_quad(3)) || 
      SymBitVectorConstant(64, cs.sse[i].get_fixed_quad(2)) || 
      SymBitVectorConstant(64, cs.sse[i].get_fixed_quad(1)) || 
      SymBitVectorConstant(64, cs.sse[i].get_fixed_quad(0));
  }

}
