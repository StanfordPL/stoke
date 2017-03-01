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


#include "src/ext/x64asm/include/x64asm.h"
#include "src/target/cpu_info.h"
#include "src/transform/pools.h"

#include "tests/fuzzer.h"

namespace stoke {

class ValidatorFuzzTest : public StraightLineValidatorTest {

public:

  ValidatorFuzzTest() : sg_(&sb_) {
    sb_.set_abi_check(false)
    .set_max_jumps(1);

    sg_.set_max_memory(1024)
    .set_max_attempts(40);
  }

  /** Checks a CFG against an input state. */
  void callback(const Cfg& cfg) {

    // Build a state at random, if possible
    CpuState cs;
    if (!sg_.get(cs, cfg)) {
      fuzz_print() << "Could not generate state: " << sg_.get_error() << std::endl;
      return;
    }

    // Do the test
    // If we did the comparison, then we performed the test right
    auto ins = cfg.get_code()[1];
    target_.clear();
    target_.str("");
    target_ << ".target:" << std::endl;
    target_ << ins << " # OPC=" << std::dec << ins.get_opcode() << std::endl;
    target_ << "retq" << std::endl;

    x64asm::RegSet supported_regs =
      (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
      x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
      x64asm::eflags_zf + x64asm::eflags_sf;
    x64asm::RegSet liveouts = supported_regs;
    x64asm::RegSet reads = ins.maybe_read_set();
    set_def_ins(reads);
    set_live_outs(liveouts);

    bool do_simplify = rand() % 2;
    set_simplify(do_simplify);

    if (check_circuit(cs))
      success_count_++;
    else
      fuzz_print() << "Check circuit failed (" << (do_simplify ? "" : "not ") << "simplified)." << std::endl;
  }

protected:

  size_t success_count_ = 0;

  ComboHandler ch_;
  Z3Solver z3_;
  Sandbox sb_;
  StateGen sg_;
};

void validator_fuzz_callback(const Cfg& cfg, void* callback_info) {
  static_cast<ValidatorFuzzTest*>(callback_info)->callback(cfg);
}

/** This test is for xchg. */
TEST_F(ValidatorFuzzTest, XchgInstructionsRandomState) {

  // Parameters for the test
  unsigned long iterations = 20;
  success_count_ = 0;

  // Setup transforms pool
  Validator v(z3_, ch_);
  TransformPools tp = default_fuzzer_pool();
  tp.set_validator(&v);

  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto op = (Opcode)i;

    if (op == XCHG_AX_R16) continue;
    if (op == XCHG_EAX_R32) continue;
    if (op == XCHG_M16_R16) continue;
    if (op == XCHG_M32_R32) continue;
    if (op == XCHG_M64_R64) continue;
    if (op == XCHG_M8_R8) continue;
    if (op == XCHG_M8_RH) continue;
    if (op == XCHG_R16_AX) continue;
    if (op == XCHG_R16_M16) continue;
    if (op == XCHG_R16_R16) continue;
    if (op == XCHG_R16_R16_1) continue;
    if (op == XCHG_R32_EAX) continue;
    if (op == XCHG_R32_M32) continue;
    if (op == XCHG_R32_R32) continue;
    if (op == XCHG_R32_R32_1) continue;
    if (op == XCHG_R64_M64) continue;
    if (op == XCHG_R64_R64) continue;
    if (op == XCHG_R64_R64_1) continue;
    if (op == XCHG_R64_RAX) continue;
    if (op == XCHG_R8_M8) continue;
    if (op == XCHG_R8_R8) continue;
    if (op == XCHG_R8_R8_1) continue;
    if (op == XCHG_R8_RH) continue;
    if (op == XCHG_R8_RH_1) continue;
    if (op == XCHG_RAX_R64) continue;
    if (op == XCHG_RH_M8) continue;
    if (op == XCHG_RH_R8) continue;
    if (op == XCHG_RH_R8_1) continue;
    if (op == XCHG_RH_RH) continue;
    if (op == XCHG_RH_RH_1) continue;

    if (op == XADD_M16_R16) continue;
    if (op == XADD_M32_R32) continue;
    if (op == XADD_M64_R64) continue;
    if (op == XADD_M8_R8) continue;
    if (op == XADD_M8_RH) continue;
    if (op == XADD_R16_R16) continue;
    if (op == XADD_R32_R32) continue;
    if (op == XADD_R64_R64) continue;
    if (op == XADD_R8_R8) continue;
    if (op == XADD_R8_RH) continue;
    if (op == XADD_RH_R8) continue;
    if (op == XADD_RH_RH) continue;

    tp.remove_opcode((Opcode)i);
  }
  tp.set_memory_write(true);
  tp.set_memory_read(true);

  tp.recompute_pools();

  uint64_t seed = fuzz(tp, iterations, &validator_fuzz_callback, (void*)this);

  sg_.set_seed(seed);

  EXPECT_GE(success_count_, iterations*8/10);
}

/** This test is for shifts and rotates.  This is important because there are
lots of corner cases on these instructions that are hard to get right.  They
require thorough testing. */
TEST_F(ValidatorFuzzTest, ShiftInstructionsRandomState) {

  // Parameters for the test
  unsigned long iterations = 20;
  success_count_ = 0;

  // Setup transforms pool
  Validator v(z3_, ch_);
  TransformPools tp = default_fuzzer_pool();
  tp.set_validator(&v);

  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {

    auto op = (Opcode)i;
    if (op == SHL_M16_CL) continue; // SHL m16, CL
    if (op == SHL_M16_IMM8) continue; // SHL m16, imm8
    if (op == SHL_M16_ONE) continue; // SHL m16, 1
    if (op == SHL_M32_CL) continue; // SHL m32, CL
    if (op == SHL_M32_IMM8) continue; // SHL m32, imm8
    if (op == SHL_M32_ONE) continue; // SHL m32, 1
    if (op == SHL_M64_CL) continue; // SHL m64, CL
    if (op == SHL_M64_IMM8) continue; // SHL m64, imm8
    if (op == SHL_M64_ONE) continue; // SHL m64, 1
    if (op == SHL_M8_CL) continue; // SHL m8, CL
    if (op == SHL_M8_IMM8) continue; // SHL m8, imm8
    if (op == SHL_M8_ONE) continue; // SHL m8, 1
    if (op == SHL_R16_CL) continue; // SHL r16, CL
    if (op == SHL_R16_IMM8) continue; // SHL r16, imm8
    if (op == SHL_R16_ONE) continue; // SHL r16, 1
    if (op == SHL_R32_CL) continue; // SHL r32, CL
    if (op == SHL_R32_IMM8) continue; // SHL r32, imm8
    if (op == SHL_R32_ONE) continue; // SHL r32, 1
    if (op == SHL_R64_CL) continue; // SHL r64, CL
    if (op == SHL_R64_IMM8) continue; // SHL r64, imm8
    if (op == SHL_R64_ONE) continue; // SHL r64, 1
    if (op == SHL_R8_CL) continue; // SHL r8, CL
    if (op == SHL_R8_IMM8) continue; // SHL r8, imm8
    if (op == SHL_R8_ONE) continue; // SHL r8, 1
    if (op == SHL_RH_CL) continue; // SHL rh, CL
    if (op == SHL_RH_IMM8) continue; // SHL rh, imm8
    if (op == SHL_RH_ONE) continue; // SHL rh, 1
    if (op == SHLD_M16_R16_CL) continue; // SHLD m16, r16, CL
    if (op == SHLD_M16_R16_IMM8) continue; // SHLD m16, r16, imm8
    if (op == SHLD_M32_R32_CL) continue; // SHLD m32, r32, CL
    if (op == SHLD_M32_R32_IMM8) continue; // SHLD m32, r32, imm8
    if (op == SHLD_M64_R64_CL) continue; // SHLD m64, r64, CL
    if (op == SHLD_M64_R64_IMM8) continue; // SHLD m64, r64, imm8
    if (op == SHLD_R16_R16_CL) continue; // SHLD r16, r16, CL
    if (op == SHLD_R16_R16_IMM8) continue; // SHLD r16, r16, imm8
    if (op == SHLD_R32_R32_CL) continue; // SHLD r32, r32, CL
    if (op == SHLD_R32_R32_IMM8) continue; // SHLD r32, r32, imm8
    if (op == SHLD_R64_R64_CL) continue; // SHLD r64, r64, CL
    if (op == SHLD_R64_R64_IMM8) continue; // SHLD r64, r64, imm8
    if (op == SHLX_R32_M32_R32) continue; // SHLX r32, m32, r32
    if (op == SHLX_R32_R32_R32) continue; // SHLX r32, r32, r32
    if (op == SHLX_R64_M64_R64) continue; // SHLX r64, m64, r64
    if (op == SHLX_R64_R64_R64) continue; // SHLX r64, r64, r64
    if (op == SHR_M16_CL) continue; // SHR m16, CL
    if (op == SHR_M16_IMM8) continue; // SHR m16, imm8
    if (op == SHR_M16_ONE) continue; // SHR m16, 1
    if (op == SHR_M32_CL) continue; // SHR m32, CL
    if (op == SHR_M32_IMM8) continue; // SHR m32, imm8
    if (op == SHR_M32_ONE) continue; // SHR m32, 1
    if (op == SHR_M64_CL) continue; // SHR m64, CL
    if (op == SHR_M64_IMM8) continue; // SHR m64, imm8
    if (op == SHR_M64_ONE) continue; // SHR m64, 1
    if (op == SHR_M8_CL) continue; // SHR m8, CL
    if (op == SHR_M8_IMM8) continue; // SHR m8, imm8
    if (op == SHR_M8_ONE) continue; // SHR m8, 1
    if (op == SHR_R16_CL) continue; // SHR r16, CL
    if (op == SHR_R16_IMM8) continue; // SHR r16, imm8
    if (op == SHR_R16_ONE) continue; // SHR r16, 1
    if (op == SHR_R32_CL) continue; // SHR r32, CL
    if (op == SHR_R32_IMM8) continue; // SHR r32, imm8
    if (op == SHR_R32_ONE) continue; // SHR r32, 1
    if (op == SHR_R64_CL) continue; // SHR r64, CL
    if (op == SHR_R64_IMM8) continue; // SHR r64, imm8
    if (op == SHR_R64_ONE) continue; // SHR r64, 1
    if (op == SHR_R8_CL) continue; // SHR r8, CL
    if (op == SHR_R8_IMM8) continue; // SHR r8, imm8
    if (op == SHR_R8_ONE) continue; // SHR r8, 1
    if (op == SHR_RH_CL) continue; // SHR rh, CL
    if (op == SHR_RH_IMM8) continue; // SHR rh, imm8
    if (op == SHR_RH_ONE) continue; // SHR rh, 1
    if (op == SHRD_M16_R16_CL) continue; // SHRD m16, r16, CL
    if (op == SHRD_M16_R16_IMM8) continue; // SHRD m16, r16, imm8
    if (op == SHRD_M32_R32_CL) continue; // SHRD m32, r32, CL
    if (op == SHRD_M32_R32_IMM8) continue; // SHRD m32, r32, imm8
    if (op == SHRD_M64_R64_CL) continue; // SHRD m64, r64, CL
    if (op == SHRD_M64_R64_IMM8) continue; // SHRD m64, r64, imm8
    if (op == SHRD_R16_R16_CL) continue; // SHRD r16, r16, CL
    if (op == SHRD_R16_R16_IMM8) continue; // SHRD r16, r16, imm8
    if (op == SHRD_R32_R32_CL) continue; // SHRD r32, r32, CL
    if (op == SHRD_R32_R32_IMM8) continue; // SHRD r32, r32, imm8
    if (op == SHRD_R64_R64_CL) continue; // SHRD r64, r64, CL
    if (op == SHRD_R64_R64_IMM8) continue; // SHRD r64, r64, imm8
    if (op == SHRX_R32_M32_R32) continue; // SHRX r32, m32, r32
    if (op == SHRX_R32_R32_R32) continue; // SHRX r32, r32, r32
    if (op == SHRX_R64_M64_R64) continue; // SHRX r64, m64, r64
    if (op == SHRX_R64_R64_R64) continue; // SHRX r64, r64, r64
    if (op == SAL_M16_CL) continue; // SAL m16, CL
    if (op == SAL_M16_IMM8) continue; // SAL m16, imm8
    if (op == SAL_M16_ONE) continue; // SAL m16, 1
    if (op == SAL_M32_CL) continue; // SAL m32, CL
    if (op == SAL_M32_IMM8) continue; // SAL m32, imm8
    if (op == SAL_M32_ONE) continue; // SAL m32, 1
    if (op == SAL_M64_CL) continue; // SAL m64, CL
    if (op == SAL_M64_IMM8) continue; // SAL m64, imm8
    if (op == SAL_M64_ONE) continue; // SAL m64, 1
    if (op == SAL_M8_CL) continue; // SAL m8, CL
    if (op == SAL_M8_IMM8) continue; // SAL m8, imm8
    if (op == SAL_M8_ONE) continue; // SAL m8, 1
    if (op == SAL_R16_CL) continue; // SAL r16, CL
    if (op == SAL_R16_IMM8) continue; // SAL r16, imm8
    if (op == SAL_R16_ONE) continue; // SAL r16, 1
    if (op == SAL_R32_CL) continue; // SAL r32, CL
    if (op == SAL_R32_IMM8) continue; // SAL r32, imm8
    if (op == SAL_R32_ONE) continue; // SAL r32, 1
    if (op == SAL_R64_CL) continue; // SAL r64, CL
    if (op == SAL_R64_IMM8) continue; // SAL r64, imm8
    if (op == SAL_R64_ONE) continue; // SAL r64, 1
    if (op == SAL_R8_CL) continue; // SAL r8, CL
    if (op == SAL_R8_IMM8) continue; // SAL r8, imm8
    if (op == SAL_R8_ONE) continue; // SAL r8, 1
    if (op == SAL_RH_CL) continue; // SAL rh, CL
    if (op == SAL_RH_IMM8) continue; // SAL rh, imm8
    if (op == SAL_RH_ONE) continue; // SAL rh, 1
    if (op == SAR_M16_CL) continue; // SAR m16, CL
    if (op == SAR_M16_IMM8) continue; // SAR m16, imm8
    if (op == SAR_M16_ONE) continue; // SAR m16, 1
    if (op == SAR_M32_CL) continue; // SAR m32, CL
    if (op == SAR_M32_IMM8) continue; // SAR m32, imm8
    if (op == SAR_M32_ONE) continue; // SAR m32, 1
    if (op == SAR_M64_CL) continue; // SAR m64, CL
    if (op == SAR_M64_IMM8) continue; // SAR m64, imm8
    if (op == SAR_M64_ONE) continue; // SAR m64, 1
    if (op == SAR_M8_CL) continue; // SAR m8, CL
    if (op == SAR_M8_IMM8) continue; // SAR m8, imm8
    if (op == SAR_M8_ONE) continue; // SAR m8, 1
    if (op == SAR_R16_CL) continue; // SAR r16, CL
    if (op == SAR_R16_IMM8) continue; // SAR r16, imm8
    if (op == SAR_R16_ONE) continue; // SAR r16, 1
    if (op == SAR_R32_CL) continue; // SAR r32, CL
    if (op == SAR_R32_IMM8) continue; // SAR r32, imm8
    if (op == SAR_R32_ONE) continue; // SAR r32, 1
    if (op == SAR_R64_CL) continue; // SAR r64, CL
    if (op == SAR_R64_IMM8) continue; // SAR r64, imm8
    if (op == SAR_R64_ONE) continue; // SAR r64, 1
    if (op == SAR_R8_CL) continue; // SAR r8, CL
    if (op == SAR_R8_IMM8) continue; // SAR r8, imm8
    if (op == SAR_R8_ONE) continue; // SAR r8, 1
    if (op == SAR_RH_CL) continue; // SAR rh, CL
    if (op == SAR_RH_IMM8) continue; // SAR rh, imm8
    if (op == SAR_RH_ONE) continue; // SAR rh, 1
    if (op == SARX_R32_M32_R32) continue; // SARX r32, m32, r32
    if (op == SARX_R32_R32_R32) continue; // SARX r32, r32, r32
    if (op == SARX_R64_M64_R64) continue; // SARX r64, m64, r64
    if (op == SARX_R64_R64_R64) continue; // SARX r64, r64, r64
    if (op == RCL_M16_CL) continue; // RCL m16, CL
    if (op == RCL_M16_IMM8) continue; // RCL m16, imm8
    if (op == RCL_M16_ONE) continue; // RCL m16, 1
    if (op == RCL_M32_CL) continue; // RCL m32, CL
    if (op == RCL_M32_IMM8) continue; // RCL m32, imm8
    if (op == RCL_M32_ONE) continue; // RCL m32, 1
    if (op == RCL_M64_CL) continue; // RCL m64, CL
    if (op == RCL_M64_IMM8) continue; // RCL m64, imm8
    if (op == RCL_M64_ONE) continue; // RCL m64, 1
    if (op == RCL_M8_CL) continue; // RCL m8, CL
    if (op == RCL_M8_IMM8) continue; // RCL m8, imm8
    if (op == RCL_M8_ONE) continue; // RCL m8, 1
    if (op == RCL_R16_CL) continue; // RCL r16, CL
    if (op == RCL_R16_IMM8) continue; // RCL r16, imm8
    if (op == RCL_R16_ONE) continue; // RCL r16, 1
    if (op == RCL_R32_CL) continue; // RCL r32, CL
    if (op == RCL_R32_IMM8) continue; // RCL r32, imm8
    if (op == RCL_R32_ONE) continue; // RCL r32, 1
    if (op == RCL_R64_CL) continue; // RCL r64, CL
    if (op == RCL_R64_IMM8) continue; // RCL r64, imm8
    if (op == RCL_R64_ONE) continue; // RCL r64, 1
    if (op == RCL_R8_CL) continue; // RCL r8, CL
    if (op == RCL_R8_IMM8) continue; // RCL r8, imm8
    if (op == RCL_R8_ONE) continue; // RCL r8, 1
    if (op == RCL_RH_CL) continue; // RCL rh, CL
    if (op == RCL_RH_IMM8) continue; // RCL rh, imm8
    if (op == RCL_RH_ONE) continue; // RCL rh, 1
    if (op == RCR_M16_CL) continue; // RCR m16, CL
    if (op == RCR_M16_IMM8) continue; // RCR m16, imm8
    if (op == RCR_M16_ONE) continue; // RCR m16, 1
    if (op == RCR_M32_CL) continue; // RCR m32, CL
    if (op == RCR_M32_IMM8) continue; // RCR m32, imm8
    if (op == RCR_M32_ONE) continue; // RCR m32, 1
    if (op == RCR_M64_CL) continue; // RCR m64, CL
    if (op == RCR_M64_IMM8) continue; // RCR m64, imm8
    if (op == RCR_M64_ONE) continue; // RCR m64, 1
    if (op == RCR_M8_CL) continue; // RCR m8, CL
    if (op == RCR_M8_IMM8) continue; // RCR m8, imm8
    if (op == RCR_M8_ONE) continue; // RCR m8, 1
    if (op == RCR_R16_CL) continue; // RCR r16, CL
    if (op == RCR_R16_IMM8) continue; // RCR r16, imm8
    if (op == RCR_R16_ONE) continue; // RCR r16, 1
    if (op == RCR_R32_CL) continue; // RCR r32, CL
    if (op == RCR_R32_IMM8) continue; // RCR r32, imm8
    if (op == RCR_R32_ONE) continue; // RCR r32, 1
    if (op == RCR_R64_CL) continue; // RCR r64, CL
    if (op == RCR_R64_IMM8) continue; // RCR r64, imm8
    if (op == RCR_R64_ONE) continue; // RCR r64, 1
    if (op == RCR_R8_CL) continue; // RCR r8, CL
    if (op == RCR_R8_IMM8) continue; // RCR r8, imm8
    if (op == RCR_R8_ONE) continue; // RCR r8, 1
    if (op == RCR_RH_CL) continue; // RCR rh, CL
    if (op == RCR_RH_IMM8) continue; // RCR rh, imm8
    if (op == RCR_RH_ONE) continue; // RCR rh, 1
    if (op == ROL_M16_CL) continue; // ROL m16, CL
    if (op == ROL_M16_IMM8) continue; // ROL m16, imm8
    if (op == ROL_M16_ONE) continue; // ROL m16, 1
    if (op == ROL_M32_CL) continue; // ROL m32, CL
    if (op == ROL_M32_IMM8) continue; // ROL m32, imm8
    if (op == ROL_M32_ONE) continue; // ROL m32, 1
    if (op == ROL_M64_CL) continue; // ROL m64, CL
    if (op == ROL_M64_IMM8) continue; // ROL m64, imm8
    if (op == ROL_M64_ONE) continue; // ROL m64, 1
    if (op == ROL_M8_CL) continue; // ROL m8, CL
    if (op == ROL_M8_IMM8) continue; // ROL m8, imm8
    if (op == ROL_M8_ONE) continue; // ROL m8, 1
    if (op == ROL_R16_CL) continue; // ROL r16, CL
    if (op == ROL_R16_IMM8) continue; // ROL r16, imm8
    if (op == ROL_R16_ONE) continue; // ROL r16, 1
    if (op == ROL_R32_CL) continue; // ROL r32, CL
    if (op == ROL_R32_IMM8) continue; // ROL r32, imm8
    if (op == ROL_R32_ONE) continue; // ROL r32, 1
    if (op == ROL_R64_CL) continue; // ROL r64, CL
    if (op == ROL_R64_IMM8) continue; // ROL r64, imm8
    if (op == ROL_R64_ONE) continue; // ROL r64, 1
    if (op == ROL_R8_CL) continue; // ROL r8, CL
    if (op == ROL_R8_IMM8) continue; // ROL r8, imm8
    if (op == ROL_R8_ONE) continue; // ROL r8, 1
    if (op == ROL_RH_CL) continue; // ROL rh, CL
    if (op == ROL_RH_IMM8) continue; // ROL rh, imm8
    if (op == ROL_RH_ONE) continue; // ROL rh, 1
    if (op == ROR_M16_CL) continue; // ROR m16, CL
    if (op == ROR_M16_IMM8) continue; // ROR m16, imm8
    if (op == ROR_M16_ONE) continue; // ROR m16, 1
    if (op == ROR_M32_CL) continue; // ROR m32, CL
    if (op == ROR_M32_IMM8) continue; // ROR m32, imm8
    if (op == ROR_M32_ONE) continue; // ROR m32, 1
    if (op == ROR_M64_CL) continue; // ROR m64, CL
    if (op == ROR_M64_IMM8) continue; // ROR m64, imm8
    if (op == ROR_M64_ONE) continue; // ROR m64, 1
    if (op == ROR_M8_CL) continue; // ROR m8, CL
    if (op == ROR_M8_IMM8) continue; // ROR m8, imm8
    if (op == ROR_M8_ONE) continue; // ROR m8, 1
    if (op == ROR_R16_CL) continue; // ROR r16, CL
    if (op == ROR_R16_IMM8) continue; // ROR r16, imm8
    if (op == ROR_R16_ONE) continue; // ROR r16, 1
    if (op == ROR_R32_CL) continue; // ROR r32, CL
    if (op == ROR_R32_IMM8) continue; // ROR r32, imm8
    if (op == ROR_R32_ONE) continue; // ROR r32, 1
    if (op == ROR_R64_CL) continue; // ROR r64, CL
    if (op == ROR_R64_IMM8) continue; // ROR r64, imm8
    if (op == ROR_R64_ONE) continue; // ROR r64, 1
    if (op == ROR_R8_CL) continue; // ROR r8, CL
    if (op == ROR_R8_IMM8) continue; // ROR r8, imm8
    if (op == ROR_R8_ONE) continue; // ROR r8, 1
    if (op == ROR_RH_CL) continue; // ROR rh, CL
    if (op == ROR_RH_IMM8) continue; // ROR rh, imm8
    if (op == ROR_RH_ONE) continue; // ROR rh, 1
    if (op == RORX_R32_M32_IMM8) continue; // RORX r32, m32, imm8
    if (op == RORX_R32_R32_IMM8) continue; // RORX r32, r32, imm8
    if (op == RORX_R64_M64_IMM8) continue; // RORX r64, m64, imm8
    if (op == RORX_R64_R64_IMM8) continue; // RORX r64, r64, imm8

    tp.remove_opcode((Opcode)i);
  }

  tp.set_memory_write(true);
  tp.set_memory_read(true);

  tp.recompute_pools();

  uint64_t seed = fuzz(tp, iterations, &validator_fuzz_callback, (void*)this);

  sg_.set_seed(seed);

  EXPECT_GE(success_count_, iterations*8/10);
}

/** This test is vicious.  It picks random instructions, random states, runs
 * the validator on it, runs the sandbox on it, and compares the results.
 * While it's for testing the validator handlers, it implicitly also tests a
 * ton of other functionality. */
TEST_F(ValidatorFuzzTest, RandomInstructionRandomState) {

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT");
  if (iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if (iterations == 0)
    iterations = 100;

  const size_t min_success = iterations/4;
  success_count_ = 0;

  // Setup transforms pool
  Validator v(z3_, ch_);

  TransformPools tp = default_fuzzer_pool();
  tp.set_validator(&v);
  tp.set_memory_write(true);
  tp.set_memory_read(true);

  // Z3 doesn't like multiplying memory cells
  // See #819
  tp.remove_opcode(IMUL_M16);
  tp.remove_opcode(IMUL_M32);
  tp.remove_opcode(IMUL_M64);
  tp.remove_opcode(IMUL_M8);
  tp.remove_opcode(IMUL_R16_M16);
  tp.remove_opcode(IMUL_R16_M16_IMM16);
  tp.remove_opcode(IMUL_R16_M16_IMM8);
  tp.remove_opcode(IMUL_R32_M32);
  tp.remove_opcode(IMUL_R32_M32_IMM32);
  tp.remove_opcode(IMUL_R32_M32_IMM8);
  tp.remove_opcode(IMUL_R64_M64);
  tp.remove_opcode(IMUL_R64_M64_IMM32);
  tp.remove_opcode(IMUL_R64_M64_IMM8);

  tp.remove_opcode(MUL_M8);
  tp.remove_opcode(MUL_M16);
  tp.remove_opcode(MUL_M32);
  tp.remove_opcode(MUL_M64);

  // code to use if you want to test a single instruction only
  /*
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    tp.remove_opcode((x64asm::Opcode)i);
  }
  tp.insert_opcode(x64asm::Opcode::PALIGNR_XMM_XMM_IMM8);
  tp.insert_opcode(x64asm::Opcode::VPALIGNR_XMM_XMM_XMM_IMM8);
  tp.insert_opcode(x64asm::Opcode::VPALIGNR_YMM_YMM_YMM_IMM8);
  tp.insert_opcode(x64asm::Opcode::PALIGNR_XMM_M128_IMM8);
  tp.insert_opcode(x64asm::Opcode::VPALIGNR_XMM_XMM_M128_IMM8);
  tp.insert_opcode(x64asm::Opcode::VPALIGNR_YMM_YMM_M256_IMM8);
  */



  tp.recompute_pools();

  uint64_t seed = fuzz(tp, iterations, &validator_fuzz_callback, (void*)this);

  sg_.set_seed(seed);

  // Make sure we supported enough of the instructions
  EXPECT_GE(success_count_, min_success);

}

} //namespace stoke

