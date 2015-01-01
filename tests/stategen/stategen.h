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


#include <iostream>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <time.h>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/stategen/stategen.h"
#include "src/cfg/cfg.h"

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

  stoke::Cfg cfg_t(code_, x64asm::RegSet::universe(), x64asm::RegSet::empty());

  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(10)
  .set_abi_check(false);

  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(40)
  .set_max_memory(1024);

  stoke::CpuState tc;
  EXPECT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed_;
  EXPECT_EQ("", sg.get_error());

  // Check that the testcase works in the Sandbox
  stoke::Sandbox sb;
  sb.set_max_jumps(2)
  .set_abi_check(false);
  sb.insert_input(tc);
  sb.run({code_, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

}


TEST(StateGenTest, Issue44) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);

  // Build example
  std::stringstream ss;
  ss << "movq $0x4eb4b0, (%rdi)" << std::endl;
  ss << "movq $0x0, 0x10(%rdi) " << std::endl;
  ss << "movq $0x0, 0x18(%rdi) " << std::endl;
  ss << "movl $0x0, 0x8(%rdi)  " << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());

  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(10)
  .set_abi_check(false);

  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000);

  stoke::CpuState tc;
  ASSERT_FALSE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed;

}


TEST(StateGenTest, Issue44WithRetQ) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);

  // Build example
  std::stringstream ss;
  ss << "movq $0x4eb4b0, (%rdi)" << std::endl;
  ss << "movq $0x0, 0x10(%rdi) " << std::endl;
  ss << "movq $0x0, 0x18(%rdi) " << std::endl;
  ss << "movl $0x0, 0x8(%rdi)  " << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(10)
  .set_abi_check(false);

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000);

  stoke::CpuState tc;
  ASSERT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed;

  // Check that the testcase works in the Sandbox
  stoke::Sandbox sb;
  sb.set_max_jumps(2)
  .set_abi_check(false);
  sb.insert_input(tc);
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

}


TEST(StateGenTest, Issue51) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);

  // Build example
  std::stringstream ss;

  ss << "movb %cl, -0x1(%rdx)" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(20)
  .set_max_memory(1000);

  stoke::CpuState tc;
  ASSERT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed << std::endl
                                 << "Reason: " << sg.get_error() << std::endl;

  // Check that the testcase works in the Sandbox
  stoke::Sandbox sb;
  sb.set_max_jumps(2)
  .set_abi_check(false);
  sb.insert_input(tc);
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

}

TEST(StateGenTest, Issue232) {

  // Build example
  std::stringstream ss;

  ss << "movq $0x10, %rax" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000);

  stoke::CpuState tc;
  EXPECT_FALSE(sg.get(tc, cfg_t));
}

TEST(StateGenTest, MisalignedNotAllowed) {

  // Build example
  std::stringstream ss;

  ss << "movaps 0x1(%rax), %xmm1" << std::endl;
  ss << "movaps 0x2(%rax), %xmm2" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000)
  .set_allow_unaligned(false);

  stoke::CpuState tc;
  EXPECT_FALSE(sg.get(tc, cfg_t));
}

TEST(StateGenTest, MisalignedAllowed) {

  // Build example
  std::stringstream ss;

  ss << "movaps 0x1(%rax), %xmm1" << std::endl;
  ss << "movaps 0x2(%rax), %xmm2" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(10)
  .set_max_memory(1000)
  .set_allow_unaligned(true);

  stoke::CpuState tc;
  EXPECT_TRUE(sg.get(tc, cfg_t)) << sg.get_error();
}

TEST(StateGenTest, EasyToAvoidMisalign) {

  // Build example
  std::stringstream ss;

  ss << "movaps 0x7(%rax), %xmm1" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Sandbox sg_sb;
  sg_sb.set_max_jumps(2)
  .set_abi_check(false);

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg(&sg_sb);
  sg.set_max_attempts(2)
  .set_max_memory(1000)
  .set_allow_unaligned(false);

  stoke::CpuState tc;
  EXPECT_TRUE(sg.get(tc, cfg_t));
}

INSTANTIATE_TEST_CASE_P(
  StategenFixtures,
  StateGenParamTest,
  ::testing::Range(1, 9)
);
