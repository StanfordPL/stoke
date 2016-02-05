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


#ifndef _STOKE_TEST_CFG_SCCS_H
#define _STOKE_TEST_CFG_SCCS_H

#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cfg/sccs.h"

#include "tests/fixture.h"

namespace stoke {

class SccTest : public ::testing::Test {

public:
  void SetUp() {

  }

  void check_consistency(Cfg& cfg, CfgSccs& sccs) {

    // For each block, check that:
    //   in_scc() matches get_scc()
    //   check that it's in the appropriate vector for get_blocks()
    //   check that it's not in any other get_blocks() vector
    for(Cfg::id_type blk = cfg.get_entry(); blk != cfg.get_exit(); blk++) {
      size_t the_scc = sccs.get_scc(blk);

      ASSERT_EQ(the_scc == (size_t)(-1), !sccs.in_scc(blk));

      if(!sccs.in_scc(blk)) {

        for(size_t i = 0; i < sccs.count(); ++i) {
          auto bad_list = sccs.get_blocks(i);
          for(auto entry : bad_list) {
            EXPECT_NE(entry, blk);
          }
        }

        continue;
      }

      auto correct_list = sccs.get_blocks(the_scc);
      size_t occurrences = 0;
      for(auto entry : correct_list) {
        if(entry == blk) {
          occurrences++;
        }
      }
      EXPECT_EQ(1ul, occurrences);

      occurrences = 0;
      for(size_t i = 0; i < sccs.count(); ++i) {
        if(i != the_scc) {
          auto bad_list = sccs.get_blocks(i);
          for(auto entry : bad_list) {
            if(entry == blk)
              occurrences++;
          }
        }
      }
      EXPECT_EQ(0ul, occurrences);
    }

  }

};

TEST_F(SccTest, NoSccs) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "addl $0x1, %eax" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  Cfg cfg(c);
  CfgSccs sccs(cfg);
  check_consistency(cfg, sccs);

  EXPECT_EQ(0ul, sccs.count());

  for (auto it = cfg.reachable_begin(); it != cfg.reachable_end(); ++it) {
    EXPECT_EQ(-1, sccs.get_scc(*it));
    EXPECT_FALSE(sccs.in_scc(*it));
  }

}

TEST_F(SccTest, SimpleLoop) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "addl $0x1, %eax" << std::endl;
  ss << "jne .foo" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code c;
  ss >> c;

  Cfg cfg(c);
  CfgSccs sccs(cfg);
  check_consistency(cfg, sccs);

  EXPECT_EQ(1ul, sccs.count());

  for (auto it = cfg.reachable_begin(); it != cfg.reachable_end(); ++it) {
    if (*it == 1) {
      EXPECT_EQ(0, sccs.get_scc(*it));
      EXPECT_TRUE(sccs.in_scc(*it));
    } else {
      EXPECT_EQ(-1, sccs.get_scc(*it));
      EXPECT_FALSE(sccs.in_scc(*it));
    }
  }

  ASSERT_EQ(1ul, sccs.get_blocks(0).size());
  EXPECT_EQ(1ul, sccs.get_blocks(0)[0]);
}

TEST_F(SccTest, NestedLoop) {

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
  CfgSccs sccs(cfg);
  check_consistency(cfg, sccs);

  EXPECT_EQ(1ul, sccs.count());

  for (auto it = cfg.reachable_begin(); it != cfg.reachable_end(); ++it) {
    if (*it >= 1 && *it <= 4) {
      EXPECT_EQ(0, sccs.get_scc(*it));
      EXPECT_TRUE(sccs.in_scc(*it));
    } else {
      EXPECT_EQ(-1, sccs.get_scc(*it));
      EXPECT_FALSE(sccs.in_scc(*it));
    }
  }

  ASSERT_EQ(4ul, sccs.get_blocks(0).size());
  for(size_t i = 0; i < 4; ++i) {
    EXPECT_LE(1ul, sccs.get_blocks(0)[i]);
    EXPECT_GE(4ul, sccs.get_blocks(0)[i]);
  }
}

TEST_F(SccTest, TwoLoops) {

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
  CfgSccs sccs(cfg);
  check_consistency(cfg, sccs);

  EXPECT_EQ(2ul, sccs.count());

  for (auto it = cfg.reachable_begin(); it != cfg.reachable_end(); ++it) {
    if (*it == 1 || *it == 2) {
      EXPECT_EQ(1, sccs.get_scc(*it));
      EXPECT_TRUE(sccs.in_scc(*it));
    } else if (*it == 4) {
      EXPECT_EQ(0, sccs.get_scc(*it));
      EXPECT_TRUE(sccs.in_scc(*it));
    } else {
      EXPECT_EQ(-1, sccs.get_scc(*it));
      EXPECT_FALSE(sccs.in_scc(*it));
    }
  }

  ASSERT_EQ(2ul, sccs.get_blocks(1).size());
  ASSERT_EQ(1ul, sccs.get_blocks(0).size());
  EXPECT_EQ(4ul, sccs.get_blocks(0)[0]);
}

TEST_F(SccTest, TwoLoopsWcslen) {

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
  CfgSccs sccs(cfg);
  check_consistency(cfg, sccs);

  EXPECT_EQ(1ul, sccs.count());

  for (auto it = cfg.reachable_begin(); it != cfg.reachable_end(); ++it) {
    if (*it == 2) {
      EXPECT_EQ(0, sccs.get_scc(*it));
      EXPECT_TRUE(sccs.in_scc(*it));
    } else {
      EXPECT_EQ(-1, sccs.get_scc(*it));
      EXPECT_FALSE(sccs.in_scc(*it));
    }
  }
}

TEST_F(SccTest, Wcsrchr) {

  std::stringstream ss;
  // BB1
  ss << ".wcsrchr:" << endl;
  ss << "  movl %edi, %edi" << endl;
  ss << "  movl %edi, %edi" << endl;
  ss << "  movl (%r15,%rdi,1), %ecx" << endl;
  ss << "  movq %rdi, %rax" << endl;
  ss << "  testl %ecx, %ecx" << endl;
  ss << "  je .L_143900" << endl;
  // BB2
  ss << "  xchgw %ax, %ax" << endl;
  // BB3
  ss << ".L_1438e0:" << endl;
  ss << "  addl $0x4, %eax" << endl;
  ss << "  movl %eax, %eax" << endl;
  ss << "  movl (%r15,%rax,1), %edx" << endl;
  ss << "  testl %edx, %edx" << endl;
  ss << "  jne .L_1438e0" << endl;
  // BB4
  ss << "  cmpl %eax, %edi" << endl;
  ss << "  ja .L_143960" << endl;
  // BB5
  ss << ".L_143900:" << endl;
  ss << "  testl %esi, %esi" << endl;
  ss << "  jne .L_143940" << endl;
  // BB6
  ss << "  jmpq .L_1439a0" << endl;
  // BB7
  ss << ".L_143920:" << endl;
  ss << "  movl %eax, %eax" << endl;
  ss << "  cmpl %esi, (%r15,%rax,1)" << endl;
  ss << "  je .L_143980" << endl;
  // BB8
  ss << ".L_143940:" << endl;
  ss << "  subl $0x4, %eax" << endl;
  ss << "  cmpl %eax, %edi" << endl;
  ss << "  jbe .L_143920" << endl;
  // BB9
  ss << ".L_143960:" << endl;
  ss << "  xorl %eax, %eax" << endl;
  // BB10
  ss << ".L_143980:" << endl;
  ss << "  retq" << endl;
  // BB11
  ss << ".L_1439a0:" << endl;
  ss << "  retq" << endl;

  x64asm::Code c;
  ss >> c;

  Cfg cfg(c);
  CfgSccs sccs(cfg);
  check_consistency(cfg, sccs);

  EXPECT_TRUE(sccs.in_scc(3));
  EXPECT_TRUE(sccs.in_scc(7));
  EXPECT_TRUE(sccs.in_scc(8));

  // Ensure get_scc() make sense
  EXPECT_NE(sccs.get_scc(3), sccs.get_scc(7));
  EXPECT_EQ(sccs.get_scc(7), sccs.get_scc(8));

  // Ensure others are not in an SCC
  for(size_t i = 0; i < 11; ++i) {
    if(i != 3 && i != 7 && i != 8) {
      EXPECT_FALSE(sccs.in_scc(i)) << "Found block " << i << " in SCC " << sccs.get_scc(i) << "; should not be." << endl;
    }
  }

}


} //namespace stoke
#endif
