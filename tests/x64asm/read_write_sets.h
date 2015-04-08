// Copyright 2013-2015 Stanford University
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

namespace stoke {

bool check(uint64_t a, uint64_t b, const std::string& msg, std::ostream& os) {
  if (a == b) {
    return false;
  }
  os << msg << std::endl;
  os << "  In state 1: 0x" << std::hex << a << std::endl;
  os << "  In state 2: 0x" << std::hex << b << std::endl;
  return true;
}

void report(bool failed, const x64asm::Instruction& instr,
            const stoke::CpuState& a, const stoke::CpuState& b,
            const stoke::CpuState& fa, const stoke::CpuState& fb,
            const std::string& msg) {
  if (failed) {
    std::cout << std::endl << "SpreadsheetReadWriteSetFuzzTest Failed!" << std::endl << std::endl;
    std::cout << "Instruction: " << instr << std::endl;
    std::cout << "  Maybe read set: " << instr.maybe_read_set() << std::endl;
    std::cout << "  Must write set: " << instr.must_write_set() << std::endl << std::endl;
    std::cout << msg << std::endl;
    std::cout << "State 1:" << std::endl << std::endl;
    std::cout << a << std::endl << std::endl;
    std::cout << "State 2:" << std::endl << std::endl;
    std::cout << b << std::endl << std::endl;
    std::cout << "Final State 1:" << std::endl << std::endl;
    std::cout << fa << std::endl << std::endl;
    std::cout << "Final State 2:" << std::endl << std::endl;
    std::cout << fb << std::endl << std::endl;
    ADD_FAILURE();
  }
}

/** Returns the correct index to use when looking up a general purpose register in Regs. */
size_t gp_reg_index(x64asm::R r) {
  switch (r.type()) {
  case x64asm::Type::RH:
    return r-4;
  default:
    return r;
  }
}

/** This test generates random instructions, and then performs the following
test:  It generates two random states, that agree in all the registers that
the instruction reads (but are both random otherwise), and then executes
the instruction.  The two resulting states are then checked to agree on the
values the instruction writes.
For example, this uncovers errors in the must/maybe read/write/undef sets. */
TEST(X64AsmTest, SpreadsheetReadWriteSetFuzzTest) {
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
    iterations = 100;

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

  flag_set &= CpuInfo::get_flags();

  Transforms t;

  std::set<x64asm::Opcode> blacklist;
  blacklist.insert(x64asm::ENTER_IMM8_IMM16);
  blacklist.insert(x64asm::ENTER_ONE_IMM16);
  blacklist.insert(x64asm::ENTER_ZERO_IMM16);

  // temporarily blacklist these, until #552 is fixed
  blacklist.insert(x64asm::VGATHERDPD_XMM_M32_XMM);
  blacklist.insert(x64asm::VGATHERDPD_YMM_M32_YMM);
  blacklist.insert(x64asm::VGATHERDPS_XMM_M32_XMM);
  blacklist.insert(x64asm::VGATHERDPS_YMM_M32_YMM);
  blacklist.insert(x64asm::VGATHERQPD_XMM_M64_XMM);
  blacklist.insert(x64asm::VGATHERQPD_YMM_M64_YMM);
  blacklist.insert(x64asm::VGATHERQPS_XMM_M64_XMM);
  blacklist.insert(x64asm::VPGATHERDD_XMM_M32_XMM);
  blacklist.insert(x64asm::VPGATHERDD_YMM_M32_YMM);
  blacklist.insert(x64asm::VPGATHERDQ_XMM_M32_XMM);
  blacklist.insert(x64asm::VPGATHERDQ_YMM_M32_YMM);
  blacklist.insert(x64asm::VPGATHERQD_XMM_M64_XMM);
  blacklist.insert(x64asm::VPGATHERQQ_XMM_M64_XMM);
  blacklist.insert(x64asm::VPGATHERQQ_YMM_M64_YMM);

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

  x64asm::Code code;
  sample >> code;

  TUnit fxn(code);
  Cfg target(fxn);

  t.set_opcode_pool(target, flag_set, 0, x64asm::RegSet::empty(), blacklist, {})
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
                                  x64asm::eflags_zf + x64asm::eflags_sf + x64asm::eflags_af;

  Sandbox sb;
  sb.set_abi_check(false)
  .set_max_jumps(1);

  StateGen sg(&sb);
  sg.set_max_memory(1024)
  .set_max_attempts(40);

  x64asm::Label label("silly");

  x64asm::Code pre_cfg_code;
  pre_cfg_code.push_back(x64asm::Instruction(x64asm::LABEL_DEFN, {label}));
  pre_cfg_code.push_back(x64asm::Instruction(x64asm::Opcode::LAHF));
  pre_cfg_code.push_back(x64asm::Instruction(x64asm::Opcode::RET));
  Cfg pre_cfg(pre_cfg_code, x64asm::RegSet::universe(), x64asm::RegSet::empty());

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
    x64asm::RegSet reads = ins.maybe_read_set();
    cfg_code[1] = ins;
    Cfg cfg(cfg_code, reads, liveouts);

    std::cout << "[----------] * " << ins << std::endl;

    // check that this instruction only reads supported registers
    if ((reads & supported_regs) != reads) {
      std::cout << "[----------]   - Instruction reads unsupported registers: " << (reads - supported_regs) << std::endl;
      continue;
    }

    // Build two states at random, if possible
    CpuState cs1, cs2;
    if(!sg.get(cs1, cfg) || !sg.get(cs2, cfg)) {
      std::cout << "[----------]   - Could not generate state: " << sg.get_error() << std::endl;
      continue;
    }
    // cs1 and cs2 should agree on memory
    cs2.stack = cs1.stack;
    cs2.heap = cs1.heap;
    cs2.data = cs1.data;

    // cs1 and cs2 should agree on all registers that the instruction might read
    for(auto it = reads.gp_begin(); it != reads.gp_end(); ++it) {
      x64asm::R r = *it;
      cs2.gp[gp_reg_index(r)] = cs1.gp[gp_reg_index(r)];
    }
    for(auto it = reads.sse_begin(); it != reads.sse_end(); ++it) {
      cs2.sse[*it] = cs1.sse[*it];
    }
    for(size_t i = 0; i < x64asm::eflags.size(); i++) {
      auto op = x64asm::eflags[i];
      if (reads.contains(op)) {
        cs2.rf.set(op.index(), cs1.rf.is_set(op.index()));
      }
    }

    // Run the sandbox
    Sandbox sb;
    sb.set_abi_check(false)
    .insert_input(cs1)
    .insert_input(cs2);

    sb.run(cfg);

    CpuState final1 = *sb.get_result(0);
    CpuState final2 = *sb.get_result(1);

    // test that the two states match on live_out
    bool failed = false;
    std::stringstream os;
    for(auto it = liveouts.gp_begin(); it != liveouts.gp_end(); ++it) {
      x64asm::R r = *it;
      std::stringstream ss;
      ss << "The " << r.size() << " bits of " << r << " differ.";
      failed |= check(final1[r], final2[r], ss.str(), os);
    }
    for(auto it = liveouts.sse_begin(); it != liveouts.sse_end(); ++it) {
      uint16_t bitwidth = (*it).size();
      uint16_t quads = bitwidth/64;

      for(size_t i = 0; i < quads; ++i) {
        uint64_t actual_v = final1.sse[*it].get_fixed_quad(i);
        uint64_t expect_v = final2.sse[*it].get_fixed_quad(i);
        std::stringstream ss;
        ss << "Bits " << (i*64) <<  ".." << ((i+1)*64) << " of " << *it << " differ.";
        failed |= check(expect_v, actual_v, ss.str(), os);
      }
    }
    for(size_t i = 0; i < x64asm::eflags.size(); i++) {
      auto op = x64asm::eflags[i];

      if (liveouts.contains(op)) {
        uint64_t actual_flag = final1.rf.is_set(op.index());
        uint64_t expected_flag = final2.rf.is_set(op.index());

        std::stringstream ss;
        ss << "Value of flag " << op << " differs.";
        failed |= check(expected_flag, actual_flag, ss.str(), os);
      }
    }
    report(failed, ins, cs1, cs2, final1, final2, os.str());
#undef EXPECT_EQ_HELPER
#undef EXPECT_EQ_HEX

    success++;
  }

  // Make sure we supported enough of the instructions
  EXPECT_GE(success, min_success);

}

} //namespace stoke

