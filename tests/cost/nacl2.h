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


#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/cost/nacl2.h"

namespace stoke {

class NaCl2CostTest : public ::testing::Test {

protected:

  NaCl2Cost<false> fxn;
  uint64_t bad_penalty;
  uint64_t reg_penalty;

private:
  void SetUp() {
    bad_penalty = 7;
    reg_penalty = 11;
    fxn.set_bad_instruction_penalty(bad_penalty);
    fxn.set_restricted_register_penalty(reg_penalty);
  }
};

TEST_F(NaCl2CostTest, ModifySpPenalty) {

  std::stringstream ss;
  ss << "movw $0x10, %sp" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  EXPECT_EQ(bad_penalty, fxn(cfg).second);

}

TEST_F(NaCl2CostTest, ModifyRspPenalty) {

  std::stringstream ss;
  ss << "movq $0x10, %rsp" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  EXPECT_EQ(bad_penalty, fxn(cfg).second);

}

TEST_F(NaCl2CostTest, AcrossBoundariesTooManyNops) {

  std::stringstream ss;
  for(size_t i = 0; i < 29; ++i) {
    ss << "nop" << std::endl;
  }
  ss << "movl $0x10, %eax  #SIZE=5" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  // to fix this, we would need to remove 2 nop bytes
  EXPECT_EQ(2ul, fxn(cfg).second);

}

TEST_F(NaCl2CostTest, AcrossBoundariesTooFewNops) {

  std::stringstream ss;
  for(size_t i = 0; i < 31; ++i) {
    ss << "nop" << std::endl;
  }
  ss << "movl $0x10, %eax  #SIZE=5" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  // to fix this, we would need to add 1 nop bytes
  EXPECT_EQ(1ul, fxn(cfg).second);
}

TEST_F(NaCl2CostTest, MisalignedJumpTarget) {

  std::stringstream ss;
  ss << "nop" << std::endl;
  ss << ".target:" << std::endl;
  ss << "jmpq .target" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  // to fix this, we would need to remove 1 nop bytes
  EXPECT_EQ(1ul, fxn(cfg).second);
}

TEST_F(NaCl2CostTest, RestrictedRegisterOk) {

  std::stringstream ss;
  ss << ".target:" << std::endl;
  ss << "movl $0x10, %eax" << std::endl;
  ss << "movq (%r15, %rax, 1), %rdx" << std::endl;
  ss << "jmpq .target" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  // to fix this, we would need to remove 1 nop bytes
  EXPECT_EQ(0ul, fxn(cfg).second);
}

TEST_F(NaCl2CostTest, RestrictedRegisterBad) {

  std::stringstream ss;
  ss << ".target:" << std::endl;
  ss << "movl $0x10, %eax" << std::endl;
  ss << "movq (%r15, %rcx, 1), %rdx" << std::endl;
  ss << "jmpq .target" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  // to fix this, we would need to remove 1 nop bytes
  EXPECT_EQ(reg_penalty, fxn(cfg).second);
}

TEST_F(NaCl2CostTest, RestrictedRegisterBadBoundary) {

  std::stringstream ss;
  ss << ".target:" << std::endl;
  for(size_t i = 0; i < 27; ++i) {
    ss << "nop" << std::endl;
  }
  ss << "movl $0x10, %eax" << std::endl;
  ss << "movq (%r15, %rax, 1), %rdx" << std::endl;
  ss << "jmpq .target" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);

  // to fix this, we would need to remove 1 nop bytes
  EXPECT_EQ(reg_penalty, fxn(cfg).second);
}


TEST_F(NaCl2CostTest, Benchmark) {

  std::stringstream ss;
  ss << ".target:" << std::endl;
  ss << "andl $0x1, %eax" << std::endl;
  ss << "movq (%r15, %rax, 1), %rdx" << std::endl;
  ss << "cmpl %eax, %ecx" << std::endl;
  ss << "je .target" << std::endl;
  for(size_t i = 0; i < 10; ++i)
    ss << "nop" << std::endl;
  ss << "jmpq .target" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code code;
  ss >> code;

  auto cfg = Cfg(code);
  ASSERT_EQ(0ul, fxn(cfg).second);


  Cost sum = 0;
  for(size_t i = 0; i < 30000; ++i) {
    sum += fxn(cfg).second;
  }

  EXPECT_EQ(0ul, sum);

}

} //namepsace stoke

