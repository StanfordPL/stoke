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


#include <iostream>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <time.h>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/stategen/stategen.h"
#include "src/cfg/cfg.h"

namespace stoke {

class StateGenParamTest : public ::testing::TestWithParam<int> {

  void SetUp() {

    std::ifstream ifs;
    std::string filename = "tests/fixtures/stategen/" + std::to_string(GetParam()) + ".s";
    ifs.open(filename, std::ifstream::in);

    std::stringstream ss;
    ss << ifs.rdbuf();
    ss >> code_;

    ifs.close();

    time(&seed_);
    srand((unsigned int)seed_);
  }

protected:
  x64asm::Code code_;
  time_t seed_;

};


TEST_P(StateGenParamTest, StateGenWorks) {

  Cfg cfg_t(code_, x64asm::RegSet::universe(), x64asm::RegSet::empty());

  Sandbox sg_sb;
  sg_sb.set_max_jumps(10)
  .set_abi_check(false);

  StateGen sg(&sg_sb);
  sg.set_max_attempts(40)
  .set_max_memory(1024);

  CpuState tc;
  EXPECT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed_;
  EXPECT_EQ("", sg.get_error());

  // Check that the testcase works in the Sandbox
  Sandbox sb;
  sb.set_max_jumps(2)
  .set_abi_check(false);
  sb.insert_input(tc);
  sb.run(Cfg(TUnit(code_)));
  ASSERT_EQ(ErrorCode::NORMAL, sb.result_begin()->code);

}


TEST(StateGenTest, Issue44) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);

  // Build example
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movq $0x4eb4b0, (%rdi)" << std::endl;
  ss << "movq $0x0, 0x10(%rdi) " << std::endl;
  ss << "movq $0x0, 0x18(%rdi) " << std::endl;
  ss << "movl $0x0, 0x8(%rdi)  " << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());

  Sandbox sg_sb;
  sg_sb.set_max_jumps(10)
  .set_abi_check(false);

  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000);

  CpuState tc;
  ASSERT_FALSE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed;

}


TEST(StateGenTest, Issue44WithRetQ) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);

  // Build example
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movq $0x4eb4b0, (%rdi)" << std::endl;
  ss << "movq $0x0, 0x10(%rdi) " << std::endl;
  ss << "movq $0x0, 0x18(%rdi) " << std::endl;
  ss << "movl $0x0, 0x8(%rdi)  " << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(10)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000);

  CpuState tc;
  ASSERT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed;

  // Check that the testcase works in the Sandbox
  Sandbox sb;
  sb.set_max_jumps(2)
  .set_abi_check(false);
  sb.insert_input(tc);
  sb.run(Cfg(TUnit(c)));
  ASSERT_EQ(ErrorCode::NORMAL, sb.result_begin()->code);

}


TEST(StateGenTest, Issue51) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movb %cl, -0x1(%rdx)" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(20)
  .set_max_memory(1000);

  CpuState tc;
  ASSERT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed << std::endl
                                 << "Reason: " << sg.get_error() << std::endl;

  // Check that the testcase works in the Sandbox
  Sandbox sb;
  sb.set_max_jumps(2)
  .set_abi_check(false);
  sb.insert_input(tc);
  sb.run(Cfg(TUnit(c)));
  ASSERT_EQ(ErrorCode::NORMAL, sb.result_begin()->code);

}

TEST(StateGenTest, Issue232) {

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movq $0x10, %rax" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000);

  CpuState tc;
  EXPECT_FALSE(sg.get(tc, cfg_t));
}

TEST(StateGenTest, MaxValueWorks) {

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movq %rax, %rcx" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000)
  .set_max_value(x64asm::rax, 0x10);

  CpuState tc;
  bool encountered_max = false;
  for(size_t i = 0; i < 200; ++i) {
    EXPECT_TRUE(sg.get(tc, cfg_t));
    uint64_t value = tc.gp[x64asm::rax].get_fixed_quad(0);
    EXPECT_LE(value, (uint64_t)0x10);
    encountered_max |= (value == 0x10);
  }

  // with 200 iterations, there's a 99.99945% chance of no false positive
  // 1 - (16/17)^200
  EXPECT_TRUE(encountered_max);
}

TEST(StateGenTest, BitmaskWorks) {

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movq %rax, %rcx" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000)
  .set_bitmask(x64asm::rax, 0xff00);

  CpuState tc;
  for(size_t i = 0; i < 50; ++i) {
    EXPECT_TRUE(sg.get(tc, cfg_t));
    uint64_t value = tc.gp[x64asm::rax].get_fixed_quad(0);
    EXPECT_EQ(value & 0xff, (uint64_t)0x0);
    EXPECT_EQ(value, value & 0xff00);
  }
}

TEST(StateGenTest, MisalignedNotAllowed) {

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movaps 0x1(%rax), %xmm1" << std::endl;
  ss << "movaps 0x2(%rax), %xmm2" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000)
  .set_allow_unaligned(false);

  CpuState tc;
  EXPECT_FALSE(sg.get(tc, cfg_t));
}

TEST(StateGenTest, MisalignedAllowed) {

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movaps 0x1(%rax), %xmm1" << std::endl;
  ss << "movaps 0x2(%rax), %xmm2" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000)
  .set_allow_unaligned(true);

  CpuState tc;
  EXPECT_TRUE(sg.get(tc, cfg_t)) << sg.get_error();
}

TEST(StateGenTest, EasyToAvoidMisalign) {

  // Build example
  std::stringstream ss;

  ss << ".foo:" << std::endl;
  ss << "movaps 0x7(%rax), %xmm1" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  StateGen sg(&sg_sb);
  sg.set_max_attempts(16)
  .set_max_memory(1000)
  .set_allow_unaligned(false);

  CpuState tc;
  EXPECT_TRUE(sg.get(tc, cfg_t));
}

INSTANTIATE_TEST_CASE_P(
  StategenFixtures,
  StateGenParamTest,
  ::testing::Range(1, 9)
);

} //namespace stoke
