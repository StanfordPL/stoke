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

#ifndef STOKE_TEST_FUZZER_H
#define STOKE_TEST_FUZZER_H

#include "src/transform/instruction.h"
#include "src/target/cpu_info.h"

namespace stoke {

std::ostream& fuzz_print(size_t i = 2) {
  switch(i) {
  case 0:
    std::cout << "[----------] ";
    break;
  case 1:
    std::cout << "[----------] * ";
    break;
  case 2:
    std::cout << "[----------]   - ";
    break;
  }
  return std::cout;
}

TransformPools default_fuzzer_pool() {
  TransformPools tp;

  std::vector<uint64_t> extra_imms = {
    0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8,
    0x40, 0x64, 0x7f, 0x80, 0xc0, 0xff, 0xcc, 0x44,
    0x22, 0x88, 0x10, 0x20, 0x30, 0x50, 0x60, 0x70,
    0xc0, 0xd0, 0xe0, 0xf0, 0xfe, 0xfd, 0xfc,
    0x7fff, 0x8000, 0xc0de, 0xffff,
    0x7fffffff, 0x80000000, 0xc0decafe, 0xffffffff,
    0x80808080, 0x04040404, 0x10101010, 0x01010101,
    0x7fffffffffffffff, 0x8000000000000000,
    0xc0decafec0decafe, 0xffffffffffffffff,
    0x8080808080808080, 0x1010101010101010,
    0x0404040404040404, 0x2222222222222222
  };
  for(auto imm : extra_imms)
    tp.insert_immediate(x64asm::Imm64(imm));

  tp.set_flags(CpuInfo::get_flags());

  // add memory references
  std::vector<std::string> memory;
  memory.push_back("(%rax)");
  memory.push_back("0x16(%r8)");
  memory.push_back("0x64(%rdx)");
  memory.push_back("-0x64(%rax,%rcx,4)");
  memory.push_back("0x64(%rsp,%rdx,8)");
  memory.push_back("-0x10(,%rdx,2)");
  memory.push_back("(%rdi,%rcx)");
  memory.push_back("(%r11d, %ebx)");
  memory.push_back("(%r11d, %ebx, 4)");
  memory.push_back("(%r11d)");
  memory.push_back("0x5(%r11d, %ebx)");
  memory.push_back("-0x7(%r11d, %ebx, 4)");
  memory.push_back("0x30(%r11d)");

  for(auto mem_str : memory) {
    std::stringstream ss;
    ss.str(mem_str);
    x64asm::M8 m8(x64asm::rax);
    ss >> m8;
    tp.insert_mem(m8);
  }

  tp.set_memory_read(true);
  tp.set_memory_write(true);
  tp.recompute_pools();

  return tp;
}

/** Generates an instruction and invokes the callback on it. */
void fuzz(TransformPools& pools, size_t iterations, void (*callback)(const Cfg& cfg, void* info), void* callback_info, size_t instr_count = 1, uint64_t seed = 0) {

  // Step 1: get the seed
  if(!seed) {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    seed = tv.tv_usec;
    fuzz_print(0) << "Seed is " << seed << std::endl;
  }

  // Step 2: Setup initial state
  x64asm::Code code;
  for(size_t i = 0; i < instr_count; ++i)
    code.push_back(x64asm::Instruction(x64asm::NOP));
  code.push_back(x64asm::Instruction(x64asm::RET));
  TUnit fxn(code);
  Cfg target(fxn, x64asm::RegSet::universe(), x64asm::RegSet::empty());

  InstructionTransform transform(pools);
  TransformInfo ti;

  // Step 3: Fuzz
  for(size_t i = 0; i < iterations; ++i) {

    // (A) mutate
    bool found = false;
    for(size_t j = 0; j < 20; ++j) {

      ti = transform(target);
      if(ti.success) {
        found = true;
        break;
      }
    }
    if(!found) {
      fuzz_print(1) << "Couldn't apply transform." << std::endl;
      continue;
    }

    // (B) Print
    if(instr_count == 1) {
      auto ins = target.get_code()[1];
      fuzz_print(1) << ins << " # OPC=" << std::dec << ins.get_opcode() << std::endl;
    }

    // (C) callback
    callback(target, callback_info);

  }

}

} //namespace stoke

#endif
