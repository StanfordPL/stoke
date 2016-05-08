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

    if (check_circuit(cs))
      success_count_++;
    else
      fuzz_print() << "Check circuit failed." << std::endl;
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
    tp.remove_opcode((Opcode)i);
  }

  tp.insert_opcode(XCHG_AX_R16);
  tp.insert_opcode(XCHG_EAX_R32);
  tp.insert_opcode(XCHG_M16_R16);
  tp.insert_opcode(XCHG_M32_R32);
  tp.insert_opcode(XCHG_M64_R64);
  tp.insert_opcode(XCHG_M8_R8);
  tp.insert_opcode(XCHG_M8_RH);
  tp.insert_opcode(XCHG_R16_AX);
  tp.insert_opcode(XCHG_R16_M16);
  tp.insert_opcode(XCHG_R16_R16);
  tp.insert_opcode(XCHG_R16_R16_1);
  tp.insert_opcode(XCHG_R32_EAX);
  tp.insert_opcode(XCHG_R32_M32);
  tp.insert_opcode(XCHG_R32_R32);
  tp.insert_opcode(XCHG_R32_R32_1);
  tp.insert_opcode(XCHG_R64_M64);
  tp.insert_opcode(XCHG_R64_R64);
  tp.insert_opcode(XCHG_R64_R64_1);
  tp.insert_opcode(XCHG_R64_RAX);
  tp.insert_opcode(XCHG_R8_M8);
  tp.insert_opcode(XCHG_R8_R8);
  tp.insert_opcode(XCHG_R8_R8_1);
  tp.insert_opcode(XCHG_R8_RH);
  tp.insert_opcode(XCHG_R8_RH_1);
  tp.insert_opcode(XCHG_RAX_R64);
  tp.insert_opcode(XCHG_RH_M8);
  tp.insert_opcode(XCHG_RH_R8);
  tp.insert_opcode(XCHG_RH_R8_1);
  tp.insert_opcode(XCHG_RH_RH);
  tp.insert_opcode(XCHG_RH_RH_1);

  tp.insert_opcode(XADD_M16_R16);
  tp.insert_opcode(XADD_M32_R32);
  tp.insert_opcode(XADD_M64_R64);
  tp.insert_opcode(XADD_M8_R8);
  tp.insert_opcode(XADD_M8_RH);
  tp.insert_opcode(XADD_R16_R16);
  tp.insert_opcode(XADD_R32_R32);
  tp.insert_opcode(XADD_R64_R64);
  tp.insert_opcode(XADD_R8_R8);
  tp.insert_opcode(XADD_R8_RH);
  tp.insert_opcode(XADD_RH_R8);
  tp.insert_opcode(XADD_RH_RH);

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
    tp.remove_opcode((Opcode)i);
  }

  tp.insert_opcode(SHL_M16_CL); // SHL m16, CL
  tp.insert_opcode(SHL_M16_IMM8); // SHL m16, imm8
  tp.insert_opcode(SHL_M16_ONE); // SHL m16, 1
  tp.insert_opcode(SHL_M32_CL); // SHL m32, CL
  tp.insert_opcode(SHL_M32_IMM8); // SHL m32, imm8
  tp.insert_opcode(SHL_M32_ONE); // SHL m32, 1
  tp.insert_opcode(SHL_M64_CL); // SHL m64, CL
  tp.insert_opcode(SHL_M64_IMM8); // SHL m64, imm8
  tp.insert_opcode(SHL_M64_ONE); // SHL m64, 1
  tp.insert_opcode(SHL_M8_CL); // SHL m8, CL
  tp.insert_opcode(SHL_M8_IMM8); // SHL m8, imm8
  tp.insert_opcode(SHL_M8_ONE); // SHL m8, 1
  tp.insert_opcode(SHL_R16_CL); // SHL r16, CL
  tp.insert_opcode(SHL_R16_IMM8); // SHL r16, imm8
  tp.insert_opcode(SHL_R16_ONE); // SHL r16, 1
  tp.insert_opcode(SHL_R32_CL); // SHL r32, CL
  tp.insert_opcode(SHL_R32_IMM8); // SHL r32, imm8
  tp.insert_opcode(SHL_R32_ONE); // SHL r32, 1
  tp.insert_opcode(SHL_R64_CL); // SHL r64, CL
  tp.insert_opcode(SHL_R64_IMM8); // SHL r64, imm8
  tp.insert_opcode(SHL_R64_ONE); // SHL r64, 1
  tp.insert_opcode(SHL_R8_CL); // SHL r8, CL
  tp.insert_opcode(SHL_R8_IMM8); // SHL r8, imm8
  tp.insert_opcode(SHL_R8_ONE); // SHL r8, 1
  tp.insert_opcode(SHL_RH_CL); // SHL rh, CL
  tp.insert_opcode(SHL_RH_IMM8); // SHL rh, imm8
  tp.insert_opcode(SHL_RH_ONE); // SHL rh, 1
  tp.insert_opcode(SHLD_M16_R16_CL); // SHLD m16, r16, CL
  tp.insert_opcode(SHLD_M16_R16_IMM8); // SHLD m16, r16, imm8
  tp.insert_opcode(SHLD_M32_R32_CL); // SHLD m32, r32, CL
  tp.insert_opcode(SHLD_M32_R32_IMM8); // SHLD m32, r32, imm8
  tp.insert_opcode(SHLD_M64_R64_CL); // SHLD m64, r64, CL
  tp.insert_opcode(SHLD_M64_R64_IMM8); // SHLD m64, r64, imm8
  tp.insert_opcode(SHLD_R16_R16_CL); // SHLD r16, r16, CL
  tp.insert_opcode(SHLD_R16_R16_IMM8); // SHLD r16, r16, imm8
  tp.insert_opcode(SHLD_R32_R32_CL); // SHLD r32, r32, CL
  tp.insert_opcode(SHLD_R32_R32_IMM8); // SHLD r32, r32, imm8
  tp.insert_opcode(SHLD_R64_R64_CL); // SHLD r64, r64, CL
  tp.insert_opcode(SHLD_R64_R64_IMM8); // SHLD r64, r64, imm8
  tp.insert_opcode(SHLX_R32_M32_R32); // SHLX r32, m32, r32
  tp.insert_opcode(SHLX_R32_R32_R32); // SHLX r32, r32, r32
  tp.insert_opcode(SHLX_R64_M64_R64); // SHLX r64, m64, r64
  tp.insert_opcode(SHLX_R64_R64_R64); // SHLX r64, r64, r64
  tp.insert_opcode(SHR_M16_CL); // SHR m16, CL
  tp.insert_opcode(SHR_M16_IMM8); // SHR m16, imm8
  tp.insert_opcode(SHR_M16_ONE); // SHR m16, 1
  tp.insert_opcode(SHR_M32_CL); // SHR m32, CL
  tp.insert_opcode(SHR_M32_IMM8); // SHR m32, imm8
  tp.insert_opcode(SHR_M32_ONE); // SHR m32, 1
  tp.insert_opcode(SHR_M64_CL); // SHR m64, CL
  tp.insert_opcode(SHR_M64_IMM8); // SHR m64, imm8
  tp.insert_opcode(SHR_M64_ONE); // SHR m64, 1
  tp.insert_opcode(SHR_M8_CL); // SHR m8, CL
  tp.insert_opcode(SHR_M8_IMM8); // SHR m8, imm8
  tp.insert_opcode(SHR_M8_ONE); // SHR m8, 1
  tp.insert_opcode(SHR_R16_CL); // SHR r16, CL
  tp.insert_opcode(SHR_R16_IMM8); // SHR r16, imm8
  tp.insert_opcode(SHR_R16_ONE); // SHR r16, 1
  tp.insert_opcode(SHR_R32_CL); // SHR r32, CL
  tp.insert_opcode(SHR_R32_IMM8); // SHR r32, imm8
  tp.insert_opcode(SHR_R32_ONE); // SHR r32, 1
  tp.insert_opcode(SHR_R64_CL); // SHR r64, CL
  tp.insert_opcode(SHR_R64_IMM8); // SHR r64, imm8
  tp.insert_opcode(SHR_R64_ONE); // SHR r64, 1
  tp.insert_opcode(SHR_R8_CL); // SHR r8, CL
  tp.insert_opcode(SHR_R8_IMM8); // SHR r8, imm8
  tp.insert_opcode(SHR_R8_ONE); // SHR r8, 1
  tp.insert_opcode(SHR_RH_CL); // SHR rh, CL
  tp.insert_opcode(SHR_RH_IMM8); // SHR rh, imm8
  tp.insert_opcode(SHR_RH_ONE); // SHR rh, 1
  tp.insert_opcode(SHRD_M16_R16_CL); // SHRD m16, r16, CL
  tp.insert_opcode(SHRD_M16_R16_IMM8); // SHRD m16, r16, imm8
  tp.insert_opcode(SHRD_M32_R32_CL); // SHRD m32, r32, CL
  tp.insert_opcode(SHRD_M32_R32_IMM8); // SHRD m32, r32, imm8
  tp.insert_opcode(SHRD_M64_R64_CL); // SHRD m64, r64, CL
  tp.insert_opcode(SHRD_M64_R64_IMM8); // SHRD m64, r64, imm8
  tp.insert_opcode(SHRD_R16_R16_CL); // SHRD r16, r16, CL
  tp.insert_opcode(SHRD_R16_R16_IMM8); // SHRD r16, r16, imm8
  tp.insert_opcode(SHRD_R32_R32_CL); // SHRD r32, r32, CL
  tp.insert_opcode(SHRD_R32_R32_IMM8); // SHRD r32, r32, imm8
  tp.insert_opcode(SHRD_R64_R64_CL); // SHRD r64, r64, CL
  tp.insert_opcode(SHRD_R64_R64_IMM8); // SHRD r64, r64, imm8
  tp.insert_opcode(SHRX_R32_M32_R32); // SHRX r32, m32, r32
  tp.insert_opcode(SHRX_R32_R32_R32); // SHRX r32, r32, r32
  tp.insert_opcode(SHRX_R64_M64_R64); // SHRX r64, m64, r64
  tp.insert_opcode(SHRX_R64_R64_R64); // SHRX r64, r64, r64
  tp.insert_opcode(SAL_M16_CL); // SAL m16, CL
  tp.insert_opcode(SAL_M16_IMM8); // SAL m16, imm8
  tp.insert_opcode(SAL_M16_ONE); // SAL m16, 1
  tp.insert_opcode(SAL_M32_CL); // SAL m32, CL
  tp.insert_opcode(SAL_M32_IMM8); // SAL m32, imm8
  tp.insert_opcode(SAL_M32_ONE); // SAL m32, 1
  tp.insert_opcode(SAL_M64_CL); // SAL m64, CL
  tp.insert_opcode(SAL_M64_IMM8); // SAL m64, imm8
  tp.insert_opcode(SAL_M64_ONE); // SAL m64, 1
  tp.insert_opcode(SAL_M8_CL); // SAL m8, CL
  tp.insert_opcode(SAL_M8_IMM8); // SAL m8, imm8
  tp.insert_opcode(SAL_M8_ONE); // SAL m8, 1
  tp.insert_opcode(SAL_R16_CL); // SAL r16, CL
  tp.insert_opcode(SAL_R16_IMM8); // SAL r16, imm8
  tp.insert_opcode(SAL_R16_ONE); // SAL r16, 1
  tp.insert_opcode(SAL_R32_CL); // SAL r32, CL
  tp.insert_opcode(SAL_R32_IMM8); // SAL r32, imm8
  tp.insert_opcode(SAL_R32_ONE); // SAL r32, 1
  tp.insert_opcode(SAL_R64_CL); // SAL r64, CL
  tp.insert_opcode(SAL_R64_IMM8); // SAL r64, imm8
  tp.insert_opcode(SAL_R64_ONE); // SAL r64, 1
  tp.insert_opcode(SAL_R8_CL); // SAL r8, CL
  tp.insert_opcode(SAL_R8_IMM8); // SAL r8, imm8
  tp.insert_opcode(SAL_R8_ONE); // SAL r8, 1
  tp.insert_opcode(SAL_RH_CL); // SAL rh, CL
  tp.insert_opcode(SAL_RH_IMM8); // SAL rh, imm8
  tp.insert_opcode(SAL_RH_ONE); // SAL rh, 1
  tp.insert_opcode(SAR_M16_CL); // SAR m16, CL
  tp.insert_opcode(SAR_M16_IMM8); // SAR m16, imm8
  tp.insert_opcode(SAR_M16_ONE); // SAR m16, 1
  tp.insert_opcode(SAR_M32_CL); // SAR m32, CL
  tp.insert_opcode(SAR_M32_IMM8); // SAR m32, imm8
  tp.insert_opcode(SAR_M32_ONE); // SAR m32, 1
  tp.insert_opcode(SAR_M64_CL); // SAR m64, CL
  tp.insert_opcode(SAR_M64_IMM8); // SAR m64, imm8
  tp.insert_opcode(SAR_M64_ONE); // SAR m64, 1
  tp.insert_opcode(SAR_M8_CL); // SAR m8, CL
  tp.insert_opcode(SAR_M8_IMM8); // SAR m8, imm8
  tp.insert_opcode(SAR_M8_ONE); // SAR m8, 1
  tp.insert_opcode(SAR_R16_CL); // SAR r16, CL
  tp.insert_opcode(SAR_R16_IMM8); // SAR r16, imm8
  tp.insert_opcode(SAR_R16_ONE); // SAR r16, 1
  tp.insert_opcode(SAR_R32_CL); // SAR r32, CL
  tp.insert_opcode(SAR_R32_IMM8); // SAR r32, imm8
  tp.insert_opcode(SAR_R32_ONE); // SAR r32, 1
  tp.insert_opcode(SAR_R64_CL); // SAR r64, CL
  tp.insert_opcode(SAR_R64_IMM8); // SAR r64, imm8
  tp.insert_opcode(SAR_R64_ONE); // SAR r64, 1
  tp.insert_opcode(SAR_R8_CL); // SAR r8, CL
  tp.insert_opcode(SAR_R8_IMM8); // SAR r8, imm8
  tp.insert_opcode(SAR_R8_ONE); // SAR r8, 1
  tp.insert_opcode(SAR_RH_CL); // SAR rh, CL
  tp.insert_opcode(SAR_RH_IMM8); // SAR rh, imm8
  tp.insert_opcode(SAR_RH_ONE); // SAR rh, 1
  tp.insert_opcode(SARX_R32_M32_R32); // SARX r32, m32, r32
  tp.insert_opcode(SARX_R32_R32_R32); // SARX r32, r32, r32
  tp.insert_opcode(SARX_R64_M64_R64); // SARX r64, m64, r64
  tp.insert_opcode(SARX_R64_R64_R64); // SARX r64, r64, r64
  tp.insert_opcode(RCL_M16_CL); // RCL m16, CL
  tp.insert_opcode(RCL_M16_IMM8); // RCL m16, imm8
  tp.insert_opcode(RCL_M16_ONE); // RCL m16, 1
  tp.insert_opcode(RCL_M32_CL); // RCL m32, CL
  tp.insert_opcode(RCL_M32_IMM8); // RCL m32, imm8
  tp.insert_opcode(RCL_M32_ONE); // RCL m32, 1
  tp.insert_opcode(RCL_M64_CL); // RCL m64, CL
  tp.insert_opcode(RCL_M64_IMM8); // RCL m64, imm8
  tp.insert_opcode(RCL_M64_ONE); // RCL m64, 1
  tp.insert_opcode(RCL_M8_CL); // RCL m8, CL
  tp.insert_opcode(RCL_M8_IMM8); // RCL m8, imm8
  tp.insert_opcode(RCL_M8_ONE); // RCL m8, 1
  tp.insert_opcode(RCL_R16_CL); // RCL r16, CL
  tp.insert_opcode(RCL_R16_IMM8); // RCL r16, imm8
  tp.insert_opcode(RCL_R16_ONE); // RCL r16, 1
  tp.insert_opcode(RCL_R32_CL); // RCL r32, CL
  tp.insert_opcode(RCL_R32_IMM8); // RCL r32, imm8
  tp.insert_opcode(RCL_R32_ONE); // RCL r32, 1
  tp.insert_opcode(RCL_R64_CL); // RCL r64, CL
  tp.insert_opcode(RCL_R64_IMM8); // RCL r64, imm8
  tp.insert_opcode(RCL_R64_ONE); // RCL r64, 1
  tp.insert_opcode(RCL_R8_CL); // RCL r8, CL
  tp.insert_opcode(RCL_R8_IMM8); // RCL r8, imm8
  tp.insert_opcode(RCL_R8_ONE); // RCL r8, 1
  tp.insert_opcode(RCL_RH_CL); // RCL rh, CL
  tp.insert_opcode(RCL_RH_IMM8); // RCL rh, imm8
  tp.insert_opcode(RCL_RH_ONE); // RCL rh, 1
  tp.insert_opcode(RCR_M16_CL); // RCR m16, CL
  tp.insert_opcode(RCR_M16_IMM8); // RCR m16, imm8
  tp.insert_opcode(RCR_M16_ONE); // RCR m16, 1
  tp.insert_opcode(RCR_M32_CL); // RCR m32, CL
  tp.insert_opcode(RCR_M32_IMM8); // RCR m32, imm8
  tp.insert_opcode(RCR_M32_ONE); // RCR m32, 1
  tp.insert_opcode(RCR_M64_CL); // RCR m64, CL
  tp.insert_opcode(RCR_M64_IMM8); // RCR m64, imm8
  tp.insert_opcode(RCR_M64_ONE); // RCR m64, 1
  tp.insert_opcode(RCR_M8_CL); // RCR m8, CL
  tp.insert_opcode(RCR_M8_IMM8); // RCR m8, imm8
  tp.insert_opcode(RCR_M8_ONE); // RCR m8, 1
  tp.insert_opcode(RCR_R16_CL); // RCR r16, CL
  tp.insert_opcode(RCR_R16_IMM8); // RCR r16, imm8
  tp.insert_opcode(RCR_R16_ONE); // RCR r16, 1
  tp.insert_opcode(RCR_R32_CL); // RCR r32, CL
  tp.insert_opcode(RCR_R32_IMM8); // RCR r32, imm8
  tp.insert_opcode(RCR_R32_ONE); // RCR r32, 1
  tp.insert_opcode(RCR_R64_CL); // RCR r64, CL
  tp.insert_opcode(RCR_R64_IMM8); // RCR r64, imm8
  tp.insert_opcode(RCR_R64_ONE); // RCR r64, 1
  tp.insert_opcode(RCR_R8_CL); // RCR r8, CL
  tp.insert_opcode(RCR_R8_IMM8); // RCR r8, imm8
  tp.insert_opcode(RCR_R8_ONE); // RCR r8, 1
  tp.insert_opcode(RCR_RH_CL); // RCR rh, CL
  tp.insert_opcode(RCR_RH_IMM8); // RCR rh, imm8
  tp.insert_opcode(RCR_RH_ONE); // RCR rh, 1
  tp.insert_opcode(ROL_M16_CL); // ROL m16, CL
  tp.insert_opcode(ROL_M16_IMM8); // ROL m16, imm8
  tp.insert_opcode(ROL_M16_ONE); // ROL m16, 1
  tp.insert_opcode(ROL_M32_CL); // ROL m32, CL
  tp.insert_opcode(ROL_M32_IMM8); // ROL m32, imm8
  tp.insert_opcode(ROL_M32_ONE); // ROL m32, 1
  tp.insert_opcode(ROL_M64_CL); // ROL m64, CL
  tp.insert_opcode(ROL_M64_IMM8); // ROL m64, imm8
  tp.insert_opcode(ROL_M64_ONE); // ROL m64, 1
  tp.insert_opcode(ROL_M8_CL); // ROL m8, CL
  tp.insert_opcode(ROL_M8_IMM8); // ROL m8, imm8
  tp.insert_opcode(ROL_M8_ONE); // ROL m8, 1
  tp.insert_opcode(ROL_R16_CL); // ROL r16, CL
  tp.insert_opcode(ROL_R16_IMM8); // ROL r16, imm8
  tp.insert_opcode(ROL_R16_ONE); // ROL r16, 1
  tp.insert_opcode(ROL_R32_CL); // ROL r32, CL
  tp.insert_opcode(ROL_R32_IMM8); // ROL r32, imm8
  tp.insert_opcode(ROL_R32_ONE); // ROL r32, 1
  tp.insert_opcode(ROL_R64_CL); // ROL r64, CL
  tp.insert_opcode(ROL_R64_IMM8); // ROL r64, imm8
  tp.insert_opcode(ROL_R64_ONE); // ROL r64, 1
  tp.insert_opcode(ROL_R8_CL); // ROL r8, CL
  tp.insert_opcode(ROL_R8_IMM8); // ROL r8, imm8
  tp.insert_opcode(ROL_R8_ONE); // ROL r8, 1
  tp.insert_opcode(ROL_RH_CL); // ROL rh, CL
  tp.insert_opcode(ROL_RH_IMM8); // ROL rh, imm8
  tp.insert_opcode(ROL_RH_ONE); // ROL rh, 1
  tp.insert_opcode(ROR_M16_CL); // ROR m16, CL
  tp.insert_opcode(ROR_M16_IMM8); // ROR m16, imm8
  tp.insert_opcode(ROR_M16_ONE); // ROR m16, 1
  tp.insert_opcode(ROR_M32_CL); // ROR m32, CL
  tp.insert_opcode(ROR_M32_IMM8); // ROR m32, imm8
  tp.insert_opcode(ROR_M32_ONE); // ROR m32, 1
  tp.insert_opcode(ROR_M64_CL); // ROR m64, CL
  tp.insert_opcode(ROR_M64_IMM8); // ROR m64, imm8
  tp.insert_opcode(ROR_M64_ONE); // ROR m64, 1
  tp.insert_opcode(ROR_M8_CL); // ROR m8, CL
  tp.insert_opcode(ROR_M8_IMM8); // ROR m8, imm8
  tp.insert_opcode(ROR_M8_ONE); // ROR m8, 1
  tp.insert_opcode(ROR_R16_CL); // ROR r16, CL
  tp.insert_opcode(ROR_R16_IMM8); // ROR r16, imm8
  tp.insert_opcode(ROR_R16_ONE); // ROR r16, 1
  tp.insert_opcode(ROR_R32_CL); // ROR r32, CL
  tp.insert_opcode(ROR_R32_IMM8); // ROR r32, imm8
  tp.insert_opcode(ROR_R32_ONE); // ROR r32, 1
  tp.insert_opcode(ROR_R64_CL); // ROR r64, CL
  tp.insert_opcode(ROR_R64_IMM8); // ROR r64, imm8
  tp.insert_opcode(ROR_R64_ONE); // ROR r64, 1
  tp.insert_opcode(ROR_R8_CL); // ROR r8, CL
  tp.insert_opcode(ROR_R8_IMM8); // ROR r8, imm8
  tp.insert_opcode(ROR_R8_ONE); // ROR r8, 1
  tp.insert_opcode(ROR_RH_CL); // ROR rh, CL
  tp.insert_opcode(ROR_RH_IMM8); // ROR rh, imm8
  tp.insert_opcode(ROR_RH_ONE); // ROR rh, 1
  tp.insert_opcode(RORX_R32_M32_IMM8); // RORX r32, m32, imm8
  tp.insert_opcode(RORX_R32_R32_IMM8); // RORX r32, r32, imm8
  tp.insert_opcode(RORX_R64_M64_IMM8); // RORX r64, m64, imm8
  tp.insert_opcode(RORX_R64_R64_IMM8); // RORX r64, r64, imm8


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

