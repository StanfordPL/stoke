
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

INSTANTIATE_TEST_CASE_P(
  StategenFixtures,
  StateGenParamTest,
  ::testing::Range(1,9)
);
