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


#include "src/analysis/alias.h"

TEST(AliasAnalysis, SimpleExample) {

  std::stringstream ss;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "movq $0x10, 0x8(%rax)" << std::endl;

  x64asm::Code c;
  ss >> c;

  stoke::AliasAnalysis aa(c);

  /* First aliases itself */
  EXPECT_TRUE(aa.must_overlap(0, 0));
  EXPECT_TRUE(aa.may_overlap(0, 0));

  /* Second aliases itself */
  EXPECT_TRUE(aa.must_overlap(1, 1));
  EXPECT_TRUE(aa.may_overlap(1, 1));

  /* Both do not alias each other */
  EXPECT_FALSE(aa.must_overlap(0, 1));
  EXPECT_FALSE(aa.must_overlap(1, 0));

  EXPECT_FALSE(aa.may_overlap(0, 1));
  EXPECT_FALSE(aa.may_overlap(1, 0));



}

TEST(AliasAnalysis, ReportsOverlap) {

  std::stringstream ss;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "movq $0x10, 0x7(%rax)" << std::endl;

  x64asm::Code c;
  ss >> c;

  stoke::AliasAnalysis aa(c);

  /* First aliases itself */
  EXPECT_TRUE(aa.must_overlap(0, 0));
  EXPECT_TRUE(aa.may_overlap(0, 0));

  /* Second aliases itself */
  EXPECT_TRUE(aa.must_overlap(1, 1));
  EXPECT_TRUE(aa.may_overlap(1, 1));

  /* Both do not alias each other */
  EXPECT_FALSE(aa.must_overlap(0, 1));
  EXPECT_FALSE(aa.must_overlap(1, 0));

  EXPECT_TRUE(aa.may_overlap(0, 1));
  EXPECT_TRUE(aa.may_overlap(1, 0));
}

TEST(AliasAnalysis, UnderstandsMutation) {

  std::stringstream ss;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "incq %rax" << std::endl;
  ss << "movq $0x10, 0x8(%rax)" << std::endl;

  x64asm::Code c;
  ss >> c;

  stoke::AliasAnalysis aa(c);

  /* First aliases itself */
  EXPECT_TRUE(aa.must_overlap(0, 0));
  EXPECT_TRUE(aa.may_overlap(0, 0));

  /* Second aliases itself */
  EXPECT_TRUE(aa.must_overlap(2, 2));
  EXPECT_TRUE(aa.may_overlap(2, 2));

  /* Both do not alias each other */
  EXPECT_FALSE(aa.must_overlap(0, 2));
  EXPECT_FALSE(aa.must_overlap(2, 0));

  EXPECT_TRUE(aa.may_overlap(0, 2));
  EXPECT_TRUE(aa.may_overlap(2, 0));
}


TEST(AliasAnalysis, FindsMustOverlap) {

  std::stringstream ss;
  ss << "movq $0x0, (%rdx)" << std::endl;
  ss << "incq %rax" << std::endl;
  ss << "movq $0x10, (%rdx)" << std::endl;

  x64asm::Code c;
  ss >> c;

  stoke::AliasAnalysis aa(c);

  /* First aliases itself */
  EXPECT_TRUE(aa.must_overlap(0, 0));
  EXPECT_TRUE(aa.may_overlap(0, 0));

  /* Second aliases itself */
  EXPECT_TRUE(aa.must_overlap(2, 2));
  EXPECT_TRUE(aa.may_overlap(2, 2));

  /* Both do not alias each other */
  EXPECT_TRUE(aa.must_overlap(0, 2));
  EXPECT_TRUE(aa.must_overlap(2, 0));

  EXPECT_TRUE(aa.may_overlap(0, 2));
  EXPECT_TRUE(aa.may_overlap(2, 0));
}
