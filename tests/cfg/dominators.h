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


#ifndef _STOKE_TEST_CFG_DOMINATORS_H
#define _STOKE_TEST_CFG_DOMINATORS_H

#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cfg/dominators.h"

#include "tests/fixture.h"

namespace stoke {

TEST(DominatorTest, NestedLoop) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;            // BB1
  ss << "nop" << std::endl;
  ss << "je .bar" << std::endl;
  ss << "nop" << std::endl;              // BB2
  ss << "addl $0x1, %eax" << std::endl;
  ss << ".bar:" << std::endl;            // BB3
  ss << "subl $0x1, %eax" << std::endl;
  ss << "je .foo" << std::endl;
  ss << "nop" << std::endl;              // BB4
  ss << "jne .bar" << std::endl;
  ss << "nop" << std::endl;              // BB5
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  Cfg cfg(c);
  CfgDominators dominators(cfg);

  std::map<Cfg::id_type, set<Cfg::id_type>> answers;
  answers[0] = { 0 };
  answers[1] = { 0, 1};
  answers[2] = { 0, 1, 2};
  answers[3] = { 0, 1, 3};
  answers[4] = { 0, 1, 3, 4};
  answers[5] = { 0, 1, 3, 4, 5};


  for (size_t i = 0; i < 6; ++i) {
    EXPECT_EQ(answers[i], dominators.get_dominators(i));
  }
}

TEST(DominatorTest, TwoLoops) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;            // BB1
  ss << "nop" << std::endl;
  ss << "je .bar" << std::endl;
  ss << "nop" << std::endl;              // BB2
  ss << "jne .foo" << std::endl;
  ss << "addl $0x1, %eax" << std::endl;  // BB3
  ss << ".bar:" << std::endl;            // BB4
  ss << "subl $0x1, %eax" << std::endl;
  ss << "je .bar" << std::endl;
  ss << "nop" << std::endl;              // BB5
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  Cfg cfg(c);
  CfgDominators dominators(cfg);

  std::map<Cfg::id_type, set<Cfg::id_type>> answers;
  answers[0] = { 0 };
  answers[1] = { 0, 1};
  answers[2] = { 0, 1, 2};
  answers[3] = { 0, 1, 2, 3};
  answers[4] = { 0, 1, 4};
  answers[5] = { 0, 1, 4, 5};


  for (size_t i = 0; i < 6; ++i) {
    EXPECT_EQ(answers[i], dominators.get_dominators(i));
  }

}

/*
TEST(DominatorTest, TwoLoopsWcslen) {

  std::stringstream ss;
  ss << ".wcslen:" << std::endl;        // BB1
  ss << "nop" << std::endl;
  ss << "je .L22" << std::endl;
  ss << ".L10:" << std::endl;           // BB2
  ss << "nop" << std::endl;
  ss << "jne .L10" << std::endl;
  ss << "nop" << std::endl;             // BB3
  ss << "nop" << std::endl;
  ss << "retq" << std::endl;
  ss << "nop" << std::endl;             // BB4
  ss << "nop" << std::endl;
  ss << ".L22:" << std::endl;           // BB5
  ss << "nop" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  Cfg cfg(c);
  CfgDominators dominators(cfg);

  EXPECT_EQ(1ul, dominators.count());

  for (auto it = cfg.reachable_begin(); it != cfg.reachable_end(); ++it) {
    if (*it == 2) {
      EXPECT_EQ(0, dominators.get_scc(*it));
      EXPECT_TRUE(dominators.in_scc(*it));
    } else {
      EXPECT_EQ(-1, dominators.get_scc(*it));
      EXPECT_FALSE(dominators.in_scc(*it));
    }
  }
}

*/

} //namespace stoke
#endif
