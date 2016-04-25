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
    x64asm::RegSet liveouts = (ins.must_write_set() - ins.maybe_undef_set()) & supported_regs;
    x64asm::RegSet reads = ins.maybe_read_set();
    set_def_ins(reads);
    set_live_outs(liveouts);

    if (check_circuit(cs))
      success_count_++;
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

  tp.recompute_pools();

  uint64_t seed = fuzz(tp, iterations, &validator_fuzz_callback, (void*)this);

  sg_.set_seed(seed);


  // Make sure we supported enough of the instructions
  EXPECT_GE(success_count_, min_success);

}

} //namespace stoke

