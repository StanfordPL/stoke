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

struct SpreadsheetReadWriteSetFuzzCallbackInfo {
  // Berkeley deserves eternal punishment for the name of this struct.
  size_t success_count;
};

void spreadsheet_read_write_set_fuzz_callback(const Cfg& pre_cfg, void* callback_data) {
  auto data = (SpreadsheetReadWriteSetFuzzCallbackInfo*)callback_data;

  Sandbox sb;
  sb.set_abi_check(false)
  .set_max_jumps(1);

  StateGen sg(&sb);
  sg.set_max_memory(1024)
  .set_max_attempts(40);


  static const x64asm::RegSet supported_regs =
    (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
    x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
    x64asm::eflags_zf + x64asm::eflags_sf + x64asm::eflags_af;

  const auto ins = pre_cfg.get_code()[1];
  x64asm::RegSet liveouts = (ins.must_write_set() - ins.maybe_undef_set()) & supported_regs;
  x64asm::RegSet reads = ins.maybe_read_set();

  x64asm::Code cfg_code;
  cfg_code.push_back(x64asm::Instruction(x64asm::LABEL_DEFN, { x64asm::Label(".foo") }));
  cfg_code.push_back(ins);
  cfg_code.push_back(x64asm::Instruction(x64asm::RET));
  Cfg cfg(cfg_code, reads, liveouts);

  // check that this instruction only reads supported registers
  if ((reads & supported_regs) != reads) {
    fuzz_print() << "Instruction reads unsupported registers: " << (reads - supported_regs) << std::endl;
    return;
  }

  // Build two states at random, if possible
  CpuState cs1, cs2;
  if(!sg.get(cs1, cfg) || !sg.get(cs2, cfg)) {
    fuzz_print() << "Could not generate state: " << sg.get_error() << std::endl;
    return;
  }

  // cs1 and cs2 should agree on memory
  cs2.stack = cs1.stack;
  cs2.heap = cs1.heap;
  cs2.data = cs1.data;

  // cs1 and cs2 should agree on all registers that the instruction might read
  for(auto it = reads.gp_begin(); it != reads.gp_end(); ++it) {
    x64asm::R r = *it;
    cs2.update(r, cs1[r]);
  }
  for(auto it = reads.sse_begin(); it != reads.sse_end(); ++it) {
    uint16_t bitwidth = (*it).size();
    uint16_t quads = bitwidth/64;

    for(size_t i = 0; i < quads; ++i) {
      cs2.sse[*it].get_fixed_quad(i) = cs1.sse[*it].get_fixed_quad(i);
    }
  }
  for(size_t i = 0; i < x64asm::eflags.size(); i++) {
    auto op = x64asm::eflags[i];
    if (reads.contains(op)) {
      cs2.rf.set(op.index(), cs1.rf.is_set(op.index()));
    }
  }

  // Run the sandbox
  Sandbox sb2;
  sb2.set_abi_check(false)
  .insert_input(cs1)
  .insert_input(cs2);

  sb2.run(cfg);

  CpuState final1 = *sb2.get_result(0);
  CpuState final2 = *sb2.get_result(1);

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
      failed |= check(actual_v, expect_v, ss.str(), os);
    }
  }
  for(size_t i = 0; i < x64asm::eflags.size(); i++) {
    auto op = x64asm::eflags[i];

    if (liveouts.contains(op)) {
      uint64_t actual_flag = final1.rf.is_set(op.index());
      uint64_t expected_flag = final2.rf.is_set(op.index());

      std::stringstream ss;
      ss << "Value of flag " << op << " differs.";
      failed |= check(actual_flag, expected_flag, ss.str(), os);
    }
  }
  report(failed, ins, cs1, cs2, final1, final2, os.str());
  if(!failed) {
    data->success_count++;
  }

}

TEST(X64AsmTest, SpreadsheetReadWriteSetFuzzTest) {

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT");
  if(iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if(iterations == 0)
    iterations = 100;

  const size_t min_success = iterations/4;

  // Figure out the flags to use.
  TransformPools tps = default_fuzzer_pool();

  tps.remove_opcode(x64asm::ENTER_IMM8_IMM16);
  tps.remove_opcode(x64asm::ENTER_ONE_IMM16);
  tps.remove_opcode(x64asm::ENTER_ZERO_IMM16);

  // temporarily blacklist these, until #552 is fixed
  tps.remove_opcode(x64asm::VGATHERDPD_XMM_M32_XMM);
  tps.remove_opcode(x64asm::VGATHERDPD_YMM_M32_YMM);
  tps.remove_opcode(x64asm::VGATHERDPS_XMM_M32_XMM);
  tps.remove_opcode(x64asm::VGATHERDPS_YMM_M32_YMM);
  tps.remove_opcode(x64asm::VGATHERQPD_XMM_M64_XMM);
  tps.remove_opcode(x64asm::VGATHERQPD_YMM_M64_YMM);
  tps.remove_opcode(x64asm::VGATHERQPS_XMM_M64_XMM);
  tps.remove_opcode(x64asm::VGATHERQPS_XMM_M64_XMM_1);
  tps.remove_opcode(x64asm::VPGATHERDD_XMM_M32_XMM);
  tps.remove_opcode(x64asm::VPGATHERDD_YMM_M32_YMM);
  tps.remove_opcode(x64asm::VPGATHERDQ_XMM_M32_XMM);
  tps.remove_opcode(x64asm::VPGATHERDQ_YMM_M32_YMM);
  tps.remove_opcode(x64asm::VPGATHERQD_XMM_M64_XMM);
  tps.remove_opcode(x64asm::VPGATHERQD_XMM_M64_XMM_1);
  tps.remove_opcode(x64asm::VPGATHERQQ_XMM_M64_XMM);
  tps.remove_opcode(x64asm::VPGATHERQQ_YMM_M64_YMM);
  tps.recompute_pools();


  auto data = SpreadsheetReadWriteSetFuzzCallbackInfo();
  data.success_count = 0;

  fuzz(tps, iterations, &spreadsheet_read_write_set_fuzz_callback, &data);

  // Make sure we supported enough of the instructions
  EXPECT_GE(data.success_count, min_success);

}

} //namespace stoke

