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
#include "src/cost/correctness.h"
#include "src/ext/cpputil/include/bits/bit_manip.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"

namespace stoke {

class CorrectnessCostTest : public ::testing::Test {

public:
  CorrectnessCostTest() : fxn_(CorrectnessCost(&sb_)) {}

protected:

  void add_testcases(int count) {
    for (int i = 0; i < count; ++i) {
      sb_.insert_input(get_state());
    }
  }

  CpuState get_state() {
    CpuState cs;
    StateGen sg(&sb_);
    sg.get(cs);
    return cs;
  }

  Cfg make_cfg(x64asm::Code c, x64asm::RegSet rs = x64asm::RegSet::universe()) {
    return Cfg(c, rs, rs);
  }

  Cost misalign_penalty_;
  Cost signal_penalty_;

  Sandbox sb_;
  CorrectnessCost fxn_;

private:
  void SetUp() {

    misalign_penalty_ = 7;
    signal_penalty_   = 11;

    fxn_.set_penalty(misalign_penalty_, signal_penalty_)
    .set_reduction(Reduction::SUM);

  }


};

TEST_F(CorrectnessCostTest, IncludesEflagsWhenSet) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "cmpq %rax, %rcx" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_FALSE(cost.first);
  EXPECT_GT(cost.second, (uint64_t)0);
}

TEST_F(CorrectnessCostTest, ExcludesEflagsWhenNotSet) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "cmpq %rax, %rcx" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_TRUE(cost.first);
  EXPECT_EQ((uint64_t)0, cost.second);
}

TEST_F(CorrectnessCostTest, ChecksRAX) {

  // Add one testcases
  add_testcases(1);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "incq %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  /* Compute the expected number of bits to change */
  auto tc = *(sb_.get_input(0));
  uint64_t orig = tc.gp[0].get_fixed_quad(0);
  uint64_t expected = cpputil::BitManip<uint64_t>::pop_count(orig ^ (orig+1));
  ASSERT_GE(expected, (uint64_t)1) << "there's a bug in counting the bits that change; must be more than 0";
  ASSERT_LE(expected, (uint64_t)64) << "there's a bug in counting the bits that change; must be less than 64";


  EXPECT_FALSE(cost.first);
  EXPECT_EQ(expected, cost.second);
}

TEST_F(CorrectnessCostTest, DoublewordDistanceCorrect) {

  // Add one testcases
  add_testcases(1);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_distance(Distance::DOUBLEWORD);
  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(0ul, cost.second);
}

TEST_F(CorrectnessCostTest, DoublewordDistanceOne) {

  // Add one testcases
  add_testcases(1);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movq $0x10, %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movq $0xf00, %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_distance(Distance::DOUBLEWORD);
  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(1ul, cost.second);
}

TEST_F(CorrectnessCostTest, DoublewordDistanceOneAlt) {

  // Add one testcases
  add_testcases(1);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movq $0x10, %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movq $0x4000000000000010, %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_distance(Distance::DOUBLEWORD);
  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(1ul, cost.second);
}

TEST_F(CorrectnessCostTest, DoublewordDistanceTwo) {

  // Add one testcases
  add_testcases(1);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movq $0xdeadbeef, %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movq $0x4000000000000010, %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_distance(Distance::DOUBLEWORD);
  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(2ul, cost.second);
}

TEST_F(CorrectnessCostTest, SignalPenalty) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "incq %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "incq %rax" << std::endl;
  ss << "movq (%rax), %rdx" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t, false, false);
  sb_.run(cfg_r);
  auto cost = fxn_(cfg_r);

  EXPECT_FALSE(cost.first);
  EXPECT_EQ(signal_penalty_ * 10, cost.second);

}

} //namespace
