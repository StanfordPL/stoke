// Copyright 2014 eric schkufza
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/sandbox/cpu_io.h"

using namespace std;
using namespace x64asm;

namespace stoke {

Function CpuIo::write(CpuState& cs, const RegSet& mask) {
  Assembler assm;
  Function fxn;

  assm.start(fxn);

  // Backup rax if it won't ultimately be overwritten
  if (!mask.contains(rax)) {
    assm.push(rax);
  }

  // Write sse registers
  for (const auto& s : xmms) {
    if (mask.contains(s)) {
      assm.mov((R64)rax, Imm64 {cs.sse[s].data()});
      assm.vmovdqu(ymms[s], M256 {rax});
    }
  }

  // Write gp registers
  for (const auto& r : r64s) {
    if (mask.contains(r)) {
      assm.mov(r, Imm64 {cs.gp[r].data()});
      assm.mov(r, M64 {r});
    }
  }

	// Write rflags 
	// @todo Need to check whether any rflags appear in the mask before we do this
	assm.mov((R64)rax, Imm64(cs.rf.data()));
	assm.mov(rax, M64(rax));
	assm.push(rax);
	assm.popfq();

  // Restore rax if it wasn't written over
  if (!mask.contains(rax)) {
    assm.pop(rax);
  }

  assm.ret();
  assm.finish();

  return fxn;
}

Function CpuIo::read(CpuState& cs, const RegSet& mask, const map<R64, uint64_t*>& alts) {
  Assembler assm;
  Function fxn;

  assm.start(fxn);

  // Backup scratch registers no matter what
  assm.push(rax);
	assm.push(rbx);

  // Read gp registers,
  for (const auto& r : r64s) {
    if (mask.contains(r)) {
      const auto itr = alts.find(r);
      if (itr != alts.end()) {
        assm.mov(rax, Moffs64 {itr->second});
      } else {
        assm.mov(rax, r);
      }
      assm.mov(Moffs64 {cs.gp[r].data()}, rax);
    }
  }

  // Read sse registers
  for (const auto& s : xmms) {
    if (mask.contains(s)) {
      assm.mov((R64)rax, Imm64 {cs.sse[s].data()});
      assm.vmovdqu(M256 {rax}, ymms[s]);
    }
  }

	// Read rflags
	// @todo Need to check whether any rflags appear in the mask before we do this
	assm.pushfq();
	assm.mov((R64)rax, Imm64(cs.rf.data()));
	assm.mov((R64)rbx, M64(rsp));
	assm.mov(M64(rax), rbx);
 	assm.popfq();

  // Restore scratch regs
	assm.pop(rbx);
  assm.pop(rax);

  assm.ret();
  assm.finish();

  return fxn;
}

} // namespace stoke
