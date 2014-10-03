
#ifndef _STOKE_TEST_X64ASM_R_H
#define _STOKE_TEST_X64ASM_R_H


// In the old code, the Rb class threw an assertion to
// make sure that it couldn't print al/bl/cl/dl.  Now
// that the Rl class is a subclass of Rb, this doesn't
// make sense.  These ensure the assertion is fixed, and
// that the new code prints the right registers.
TEST(RegisterPrinting, CanPrintAl) {
  std::stringstream ss;
  ss << (x64asm::Rb)x64asm::Constants::al();
  ASSERT_EQ("%al", ss.str());
}

TEST(RegisterPrinting, CanPrintBl) {
  std::stringstream ss;
  ss << (x64asm::Rb)x64asm::Constants::bl();
  ASSERT_EQ("%bl", ss.str());
}

TEST(RegisterPrinting, CanPrintCl) {
  std::stringstream ss;
  ss << (x64asm::Rb)x64asm::Constants::cl();
  ASSERT_EQ("%cl", ss.str());
}

TEST(RegisterPrinting, CanPrintDl) {
  std::stringstream ss;
  ss << (x64asm::Rb)x64asm::Constants::dl();
  ASSERT_EQ("%dl", ss.str());
}


#endif
