
#ifndef _STOKE_TEST_X64ASM_REGSET_H
#define _STOKE_TEST_X64ASM_REGSET_H

#include "src/ext/x64asm/src/reg_set.h"
#include "src/args/reg_set.h"

#include <sstream>


class RegSetReaderTest : public ::testing::Test {

  public:

    void SetUp() {

    }

  protected:

    std::stringstream ss_;
    stoke::RegSetReader rsr_;
    x64asm::RegSet rs_;

};

TEST_F(RegSetReaderTest, ReadsRAX) {

  ss_ << "{ %rax }";
  x64asm::RegSet expected = x64asm::RegSet::empty() + x64asm::Constants::rax();

  rsr_(ss_, rs_);
  ASSERT_EQ(expected, rs_);

}


TEST_F(RegSetReaderTest, ReadsAX) {

  ss_ << "{ %ax }";
  x64asm::RegSet expected = x64asm::RegSet::empty() + x64asm::Constants::ax();

  rsr_(ss_, rs_);
  ASSERT_EQ(expected, rs_);

}

TEST_F(RegSetReaderTest, ReadsXMM0) {

  ss_ << "{ %xmm0 }";
  x64asm::RegSet expected = x64asm::RegSet::empty() + x64asm::Constants::xmm0();

  rsr_(ss_, rs_);
  ASSERT_EQ(expected, rs_);

}


TEST_F(RegSetReaderTest, ReadsYMM0) {

  ss_ << "{ %ymm0 }";
  x64asm::RegSet expected = x64asm::RegSet::empty() + x64asm::Constants::ymm0();

  rsr_(ss_, rs_);
  ASSERT_EQ(expected, rs_);

}

TEST(RegSetOutputStream, WritesRAX) {

  x64asm::RegSet rs = x64asm::RegSet::empty() + x64asm::Constants::rax();
  std::stringstream ss;
  ss << rs;
  ASSERT_EQ("{ %rax }", ss.str());
}

TEST(RegSetOutputStream, WritesEmpty) {

  x64asm::RegSet rs = x64asm::RegSet::empty();
  std::stringstream ss;
  ss << rs;
  ASSERT_EQ("{ }", ss.str());
}

TEST(RegSetOutputStream, WritesComplex) {

  x64asm::RegSet rs = x64asm::RegSet::empty() + 
                      x64asm::Constants::rax() +
                      x64asm::Constants::dx() +
                      x64asm::Constants::xmm1() +
                      x64asm::Constants::ymm2() +
                      x64asm::Constants::cl();

  std::stringstream ss;
  ss << rs;
  ASSERT_EQ("{ %rax %cl %dx %xmm1 %ymm2 }", ss.str());
}





#endif
