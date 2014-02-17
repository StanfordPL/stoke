#include "src/sandbox/cpu_io.h"

using namespace std;
using namespace x64asm;

namespace stoke {

Function CpuIo::write(CpuState& cs, const RegSet& mask) {
  Assembler assm;
	Function fxn;

	assm.start(fxn);

  // Backup rax if it won't ultimately be overwritten
	if ( !mask.contains(rax) )
    assm.push(rax);

	// Write sse registers
	for ( const auto& s : xmms ) {
		if ( mask.contains(s) ) {
			assm.mov((R64)rax, Imm64{cs.sse[s].data()});
			assm.vmovdqu(ymms[s], M256{rax});
		}
	}

	// Write gp registers
	for ( const auto& r : r64s ) {
		if ( mask.contains(r) ) {
			assm.mov(r, Imm64{cs.gp[r].data()});
			assm.mov(r, M64{r});
		}
	}

  // Restore rax if it wasn't written over
	if ( !mask.contains(rax) ) 
    assm.pop(rax);

	assm.ret();
	assm.finish();

	return fxn;
}

Function CpuIo::read(CpuState& cs, const RegSet& mask, const map<R64, uint64_t*>& alts) {
  Assembler assm;
	Function fxn;

	assm.start(fxn);

	// Backup rax no matter what
  assm.push(rax);

	// Read gp registers,  
	for ( const auto& r : r64s ) {
		if ( mask.contains(r) ) {
			const auto itr = alts.find(r);
			if ( itr != alts.end() ) {
				assm.mov(rax, Moffs64{itr->second});
			} else {
				assm.mov(rax, r);
			}
			assm.mov(Moffs64{cs.gp[r].data()}, rax);
		}
	}

  // Read sse registers
	for ( const auto& s : xmms ) {
		if ( mask.contains(s) ) {
			assm.mov((R64)rax, Imm64{cs.sse[s].data()});
			assm.vmovdqu(M256{rax}, ymms[s]);
		}
	}

  // Restore rax
  assm.pop(rax);

	assm.ret();
	assm.finish();

	return fxn;
}

} // namespace stoke
