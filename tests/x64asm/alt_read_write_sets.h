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

#include "tests/fuzzer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

void spreadsheet_alt_read_write_set_fuzz_callback(const Cfg& pre_cfg, void* callback_data) {
  auto data = (SpreadsheetReadWriteSetFuzzCallbackInfo*)callback_data;

  Sandbox sb;
  sb.set_abi_check(false)
  .set_max_jumps(10);

  StateGen sg(&sb);
  sg.set_max_memory(1024)
  .set_max_attempts(40);

  static const x64asm::RegSet supported_regs =
    (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
    x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
    x64asm::eflags_zf + x64asm::eflags_sf + x64asm::eflags_af;

  const auto ins = pre_cfg.get_code()[1];
  auto instr = ins;
  x64asm::RegSet liveouts = (ins.maybe_write_set() | ins.maybe_undef_set());
  x64asm::RegSet reads = ins.maybe_read_set();

  x64asm::Code cfg_code;
  cfg_code.push_back(x64asm::Instruction(x64asm::LABEL_DEFN, { x64asm::Label(".foo") }));
  cfg_code.push_back(ins);
  cfg_code.push_back(x64asm::Instruction(x64asm::RET));
  Cfg cfg(cfg_code, reads, liveouts);

  // Build one random state, if possible
  CpuState cs1;
  if (!sg.get(cs1, cfg)) {
    fuzz_print() << "Could not generate state: " << sg.get_error() << std::endl;
    return;
  }
  CpuState initial = cs1;

  // Run the sandbox
  Sandbox sb2;
  sb2.set_abi_check(false)
  .insert_input(cs1);

  sb2.run(cfg);

  CpuState final1 = *sb2.get_result(0);

  // zero out live out and def in on both states (so we can compare all registers)
  for (auto it = liveouts.gp_begin(); it != liveouts.gp_end(); ++it) {
    x64asm::R r = *it;
    final1.update(r, 0);
    initial.update(r, 0);
  }
  for (auto it = liveouts.sse_begin(); it != liveouts.sse_end(); ++it) {
    uint16_t bitwidth = (*it).size();
    uint16_t quads = bitwidth/64;

    for (size_t i = 0; i < quads; ++i) {
      final1.sse[*it].get_fixed_quad(i) = 0;
      initial.sse[*it].get_fixed_quad(i) = 0;
    }
  }
  for (size_t i = 0; i < x64asm::eflags.size(); i++) {
    auto op = x64asm::eflags[i];
    if (liveouts.contains(op)) {
      final1.rf.set(op.index(), false);
      initial.rf.set(op.index(), false);
    }
  }

  // test that the two states match everything
  bool failed = false;
  std::stringstream os;
  if (final1.code != stoke::ErrorCode::NORMAL) {
    fuzz_print() << "Error code not normal; cannot check" << std::endl;
    return;
  }
  for (auto it = supported_regs.gp_begin(); it != supported_regs.gp_end(); ++it) {
    x64asm::R r = *it;
    std::stringstream ss;
    ss << "The " << r.size() << " bits of " << r << " differ.";
    failed |= check(final1[r], initial[r], ss.str(), os);
  }
  for (auto it = supported_regs.sse_begin(); it != supported_regs.sse_end(); ++it) {
    uint16_t bitwidth = (*it).size();
    uint16_t quads = bitwidth/64;

    for (size_t i = 0; i < quads; ++i) {
      uint64_t actual_v = final1.sse[*it].get_fixed_quad(i);
      uint64_t expect_v = initial.sse[*it].get_fixed_quad(i);
      std::stringstream ss;
      ss << "Bits " << (i*64) <<  ".." << ((i+1)*64) << " of " << *it << " differ.";
      failed |= check(actual_v, expect_v, ss.str(), os);
    }
  }
  for (size_t i = 0; i < x64asm::eflags.size(); i++) {
    auto op = x64asm::eflags[i];

    if (supported_regs.contains(op)) {
      uint64_t actual_flag = final1.rf.is_set(op.index());
      uint64_t expected_flag = initial.rf.is_set(op.index());

      std::stringstream ss;
      ss << "Value of flag " << op << " differs.";
      failed |= check(actual_flag, expected_flag, ss.str(), os);
    }
  }
  if (failed) {
    std::cout << std::endl << "SpreadsheetAltReadWriteSetFuzzTest Failed!" << std::endl << std::endl;
    std::cout << "Instruction: " << instr << std::endl;
    std::cout << "  Maybe read set:  " << instr.maybe_read_set() << std::endl;
    std::cout << "  Must read set:   " << instr.must_read_set() << std::endl;
    std::cout << "  Maybe write set: " << instr.maybe_write_set() << std::endl;
    std::cout << "  Must write set:  " << instr.must_write_set() << std::endl;
    std::cout << "  Maybe undef set: " << instr.maybe_undef_set() << std::endl;
    std::cout << "  Must undef set:  " << instr.must_undef_set() << std::endl;
    cout << std::endl;
    std::cout << os.str() << std::endl;
    // std::cout << "State 1:" << std::endl << std::endl;
    // std::cout << a << std::endl << std::endl;
    // std::cout << "State 2:" << std::endl << std::endl;
    // std::cout << b << std::endl << std::endl;
    // std::cout << "Final State 1:" << std::endl << std::endl;
    // std::cout << fa << std::endl << std::endl;
    // std::cout << "Final State 2:" << std::endl << std::endl;
    // std::cout << fb << std::endl << std::endl;
    ADD_FAILURE();
  }
  if (!failed) {
    data->success_count++;
  }

}

TEST(X64AsmTest, SpreadsheetAltReadWriteSetFuzzTest) {

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT");
  if (iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if (iterations == 0)
    iterations = 100;

  const size_t min_success = iterations/4;

  // Figure out the flags to use.
  TransformPools tps = default_fuzzer_pool();

  tps.remove_opcode(x64asm::ENTER_IMM8_IMM16);
  tps.remove_opcode(x64asm::ENTER_ONE_IMM16);
  tps.remove_opcode(x64asm::ENTER_ZERO_IMM16);

  // code to use if you want to test a single instruction only
  // for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
  //   tps.remove_opcode((x64asm::Opcode)i);
  // }
  // tps.insert_opcode(x64asm::Opcode::XCHG_R32_R32);

  tps.recompute_pools();

  auto data = SpreadsheetReadWriteSetFuzzCallbackInfo();
  data.success_count = 0;

  fuzz(tps, iterations, &spreadsheet_alt_read_write_set_fuzz_callback, &data);

  // Make sure we supported enough of the instructions
  EXPECT_GE(data.success_count, min_success);

}

} //namespace stoke

