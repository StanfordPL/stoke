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
#include "src/cost/preserve_control.h"
#include "src/ext/cpputil/include/bits/bit_manip.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"

namespace stoke {

class PreserveControlCostTest : public ::testing::Test {

public:
  PreserveControlCostTest() : fxn_(PreserveControlCost(&sb_)) {}

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

  Sandbox sb_;
  PreserveControlCost fxn_;

private:


};

TEST_F(PreserveControlCostTest, IdenticalNoControl) {

  // Add 10 testcases
  add_testcases(10);

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

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(0ul, cost.second);
}

TEST_F(PreserveControlCostTest, WrongLabelNoControl) {

  // Add 10 testcases
  add_testcases(10);

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
  ss << ".bar:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(1ul, cost.second);
} 

TEST_F(PreserveControlCostTest, ExtraLabelNoControl) {

  // Add 10 testcases
  add_testcases(10);

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
  ss << ".bar:" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(1ul, cost.second);
}

TEST_F(PreserveControlCostTest, LoopSameNumberOfTimes) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movl $0x5, %eax" << std::endl;
  ss << ".top:" << std::endl;
  ss << "subl $0x1, %eax" << std::endl;
  ss << "jnz .top" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movl $0x5, %eax" << std::endl;
  ss << ".top:" << std::endl;
  ss << "subl $0x1, %eax" << std::endl;
  ss << "jnz .top" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(0ul, cost.second);
}

TEST_F(PreserveControlCostTest, LoopDifferentNumberOfTimes) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movl $0x5, %eax" << std::endl;
  ss << ".top:" << std::endl;
  ss << "subl $0x1, %eax" << std::endl;
  ss << "jnz .top" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movl $0x4, %eax" << std::endl;
  ss << ".top:" << std::endl;
  ss << "subl $0x1, %eax" << std::endl;
  ss << "jnz .top" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(1ul, cost.second);
}

TEST_F(PreserveControlCostTest, LoopDifferentNumberOfTimesAlt) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movl $0x5, %eax" << std::endl;
  ss << ".top:" << std::endl;
  ss << "subl $0x1, %eax" << std::endl;
  ss << "jnz .top" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << ".foo:" << std::endl;
  ss << "movl $0x6, %eax" << std::endl;
  ss << ".top:" << std::endl;
  ss << "subl $0x1, %eax" << std::endl;
  ss << "jnz .top" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t);
  auto cost = fxn_(cfg_r);

  EXPECT_EQ(1ul, cost.second);
}

} //namespace
