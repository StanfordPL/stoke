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

namespace stoke {

std::ostream& fuzz_print(size_t i = 2) {
  switch(i) {
  case 0:
    std::cout << "[----------]   - ";
    break;
  case 1:
    std::cout << "[----------] * ";
    break;
  case 2:
    std::cout << "[----------]";
    break;
  }
  return std::cout;
}

/** Generates an instruction and invokes the callback on it. */
void fuzz(TransformPools& pools, size_t iterations, void (callback*)(const Cfg& cfg), void* callback_info, uint64_t seed = 0) {

  // Step 1: get the seed
  if(!ssed) {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    seed = tv.tv_usec;
    fuzz_print(0) << " SEED=" << seed;
  }

  // Step 2: Setup initial state
  x64asm::Code code;
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
      if(transform.success) {
        found = true;
        break;
      }
    }
    if(!found) {
      continue;
    }

    // (B) Print
    auto ins = cfg.get_code()[1];
    fuzz_print(1) << ins << " # OPC=" << std::dec << ins.get_opcode() << std::endl;

  }

}

} //namespace stoke

#endif
