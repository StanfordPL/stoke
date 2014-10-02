
#ifndef _STOKE_TEST_X64ASM_REGSET_H
#define _STOKE_TEST_X64ASM_REGSET_H

#include "src/ext/x64asm/src/reg_set.h"
#include <sstream>

namespace stoke_test {

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


}


#endif
