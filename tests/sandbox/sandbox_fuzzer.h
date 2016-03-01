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


#include <immintrin.h>
#include <set>
#include <sys/time.h>

#include "tests/fuzzer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

void sandbox_fuzz_callback(const Cfg& cfg, void* callback_data) {
  // Run the sandbox
  CpuState cs;
  Sandbox sb;
  sb.set_abi_check(false)
  .insert_input(cs);

  sb.run(cfg);
  CpuState final = *sb.get_result(0);

  // should have "normal" error code, not a custom one
  ASSERT_TRUE((int)final.code < 256);
}

TEST(Sandbox, SandboxFuzzer) {

  // Parameters for the test
  unsigned long iterations = 10;

  // Figure out the flags to use.
  const auto cpu_flags = CpuInfo::get_flags();

  TransformPools tps = default_fuzzer_pool();
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    tps.remove_opcode((x64asm::Opcode)i);
  }

  // fuzz all instructions
  for (size_t k = 0; k < X64ASM_NUM_OPCODES; ++k) {

    auto opc = (x64asm::Opcode)k;

    if (!Sandbox::is_supported(opc)) continue;
    if (!Instruction(opc).enabled(cpu_flags)) continue;

    fuzz_print() << "Starting with OPC = " << opc << std::endl;

    // only allow one opcode
    tps.insert_opcode(opc);
    tps.recompute_pools();

    fuzz(tps, iterations, &sandbox_fuzz_callback, NULL);

    tps.remove_opcode(opc);
  }

}

} //namespace stoke

