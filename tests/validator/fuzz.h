// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#include <immintrin.h>
#include <set>
#include <sys/time.h>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/target/cpu_info.h"

class ValidatorFuzzTest : public ValidatorTest { };

/** This test is vicious.  It picks random instructions, random states, runs
 * the validator on it, runs the sandbox on it, and compares the results.
 * While it's for testing the validator handlers, it implicitly also tests a
 * ton of other functionality. */
TEST_F(ValidatorFuzzTest, RandomInstructionRandomState) {

  struct timeval tv;
  gettimeofday(&tv, NULL);
  uint64_t seed = (uint64_t)tv.tv_usec;

  // Generate a random seed
  std::cout << "[----------] * Seed " << seed << std::endl;

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT");
  if(iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if(iterations == 0)
    iterations == 100;

  const size_t min_success = iterations/4;
  size_t success = 0;  //counts number of iterations tested

  // FIgure out the flags to use.
  std::stringstream flags;
#ifdef __AVX2__
  flags << "{ popcnt sse sse2 ssse3 sse4_1 sse4_2 avx avx2 }";
#elif __AVX__
  flags << "{ popcnt sse sse2 ssse3 sse4_1 sse4_2 avx2 }";
#else
  flags << "{ popcnt sse sse2 ssse3 sse4_1 sse4_2 }";
#endif
  x64asm::FlagSet flag_set = x64asm::FlagSet::empty();

  flags >> flag_set;

  flag_set &= stoke::CpuInfo::get_flags();

  // Initialize handler, solver, transforms, stategen, etc.
  stoke::ComboHandler ch;
  stoke::Z3Solver z3;
  stoke::Transforms t;

  std::set<x64asm::Opcode> blacklist;
  blacklist.insert(x64asm::ENTER_IMM8_IMM16);
  blacklist.insert(x64asm::ENTER_ONE_IMM16);
  blacklist.insert(x64asm::ENTER_ZERO_IMM16);

  // this code is used to provide memory references... big hack.
  std::stringstream sample;
  sample << ".sample:" << std::endl;
  sample << "movq (%rax), %r13" << std::endl;
  sample << "movq 0x16(%r8), %r13" << std::endl;
  sample << "movq 0x64(%rdx), %r13" << std::endl;
  sample << "movq -0x64(%rax, %rcx, 4), %r13" << std::endl;
  sample << "movq 0x64(%rsp, %rdx, 8), %r13" << std::endl;
  sample << "movl (%rax), %r13d" << std::endl;
  sample << "movl -0x16(%r8), %r13d" << std::endl;
  sample << "movl 0x64(%rdx), %r13d" << std::endl;
  sample << "movl 0x64(%rax, %rcx, 4), %r13d" << std::endl;
  sample << "movl 0x64(%rsp, %rdx, 8), %r13d" << std::endl;
  sample << "movw (%rax), %r13w" << std::endl;
  sample << "movw 0x16(%r8), %r13w" << std::endl;
  sample << "movw 0x64(%rdx), %r13w" << std::endl;
  sample << "movw 0x64(%rax, %rcx, 4), %r13w" << std::endl;
  sample << "movw -0x64(%rsp, %rdx, 8), %r13w" << std::endl;
  sample << "movb (%rax), %r13b" << std::endl;
  sample << "movb 0x16(%r8), %r13b" << std::endl;
  sample << "movb 0x64(%rdx), %r13b" << std::endl;
  sample << "movb 0x64(%rax, %rcx, 4), %r13b" << std::endl;
  sample << "movb 0x64(%rsp, %rdx, 8), %r13b" << std::endl;

  x64asm::Code target;
  sample >> target;

  t.set_opcode_pool(flag_set, 0, true, false, x64asm::RegSet::empty(), blacklist, {})
  .set_operand_pool(target, x64asm::RegSet::empty())
  .set_seed(seed);

  t.insert_immediate(x64asm::Imm64(0x00));
  t.insert_immediate(x64asm::Imm64(0x01));
  t.insert_immediate(x64asm::Imm64(0x64));
  t.insert_immediate(x64asm::Imm64(0x7f));
  t.insert_immediate(x64asm::Imm64(0x80));
  t.insert_immediate(x64asm::Imm64(0xc0));
  t.insert_immediate(x64asm::Imm64(0xff));
  t.insert_immediate(x64asm::Imm64(0x7fff));
  t.insert_immediate(x64asm::Imm64(0x8000));
  t.insert_immediate(x64asm::Imm64(0xc0de));
  t.insert_immediate(x64asm::Imm64(0xffff));
  t.insert_immediate(x64asm::Imm64(0x7fffffff));
  t.insert_immediate(x64asm::Imm64(0x80000000));
  t.insert_immediate(x64asm::Imm64(0xc0decafe));
  t.insert_immediate(x64asm::Imm64(0xffffffff));
  t.insert_immediate(x64asm::Imm64(0x7fffffffffffffff));
  t.insert_immediate(x64asm::Imm64(0x8000000000000000));
  t.insert_immediate(x64asm::Imm64(0xc0decafec0decafe));
  t.insert_immediate(x64asm::Imm64(0xffffffffffffffff));

  x64asm::RegSet supported_regs = (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
                                  x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
                                  x64asm::eflags_zf + x64asm::eflags_sf;

  stoke::Sandbox sb;
  sb.set_abi_check(false)
  .set_max_jumps(1);

  stoke::StateGen sg(&sb);
  sg.set_max_memory(1024)
  .set_max_attempts(40);

  x64asm::Label label("silly");

  x64asm::Code pre_cfg_code;
  pre_cfg_code.push_back(x64asm::Instruction(x64asm::LABEL_DEFN, {label}));
  pre_cfg_code.push_back(x64asm::Instruction(x64asm::Opcode::LAHF));
  pre_cfg_code.push_back(x64asm::Instruction(x64asm::Opcode::RET));
  stoke::Cfg pre_cfg(pre_cfg_code, x64asm::RegSet::universe(), x64asm::RegSet::empty());

  x64asm::Code cfg_code;
  cfg_code.push_back(x64asm::Instruction(x64asm::LABEL_DEFN, {label}));
  cfg_code.push_back(x64asm::Instruction(x64asm::Opcode::LAHF));
  cfg_code.push_back(x64asm::Instruction(x64asm::Opcode::RET));

  for(size_t i = 0; i < iterations; ++i) {


    // Build an instruction and CFG at random
    bool found = false;
    for(size_t j = 0; j < 20; ++j) {
      if (t.instruction_move(pre_cfg)) {
        found = true;
        break;
      }
    }
    if(!found)
      continue;

    const auto ins = pre_cfg.get_code()[1];
    x64asm::RegSet liveouts = (ins.must_write_set() - ins.maybe_undef_set()) & supported_regs;
    cfg_code[1] = ins;
    stoke::Cfg cfg(cfg_code, ins.maybe_read_set(), liveouts);

    std::cout << "[----------] * " << ins << std::endl;

    // Make sure we support this instruction
    if(ch.get_support(ins) == stoke::Handler::NONE) {
      std::cout << "[----------]   - No validator support" << std::endl;
      continue;
    }

    // Build a state at random, if possible
    stoke::CpuState cs;
    if(!sg.get(cs, cfg)) {
      std::cout << "[----------]   - Could not generate state: " << sg.get_error() << std::endl;
      continue;
    }

    // Do the test
    // If we did the comparison, then we performed the test right
    target_.clear();
    target_.str("");
    target_ << ".target:" << std::endl;
    target_ << ins << std::endl;
    target_ << "retq" << std::endl;

    set_def_ins(cfg.def_ins());
    set_live_outs(cfg.live_outs());

    if(check_circuit(cs))
      success++;
  }

  // Make sure we supported enough of the instructions
  EXPECT_GE(success, min_success);

}

