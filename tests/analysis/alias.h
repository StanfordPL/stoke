
#include "src/analysis/alias.h"

TEST(AliasAnalysis, SimpleExample) {

  std::stringstream ss;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "movq $0x10, 8(%rax)" << std::endl;

  Code c;
  ss >> c;

  AliasAnalysis aa(c);

  /* First aliases itself */
  EXPECT_TRUE(aa.must_overlap(0, m1, 0, m1));
  EXPECT_TRUE(aa.may_overlap(0, m1, 0, m1));

  /* Second aliases itself */
  EXPECT_TRUE(aa.must_overlap(1, m2, 1, m2));
  EXPECT_TRUE(aa.may_overlap(1, m2, 1, m2));

  /* Both do not alias each other */
  EXPECT_FALSE(aa.must_overlap(0, m1, 1, m2));
  EXPECT_FALSE(aa.must_overlap(1, m2, 0, m1));



}
