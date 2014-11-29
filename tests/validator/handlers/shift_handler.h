
#include "src/symstate/bitvector.h"

class ValidatorShiftTest : public ValidatorTest {};


TEST_F(ValidatorShiftTest, IdentitySalb) {
  //note: the 'and' is needed to make sure 'cf' is defined

  target_ << "andb $0x7, %cl" << std::endl;
  target_ << "salb %cl, %sil" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "andb $0x7, %cl" << std::endl;
  rewrite_ << "salb %cl, %sil" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorShiftTest, OutputsEqualInBigShift) {
  // If you shift by 0xf0 (i.e. 15*16 = 225 + 15 = 240) bits
  // that's the same as shifting by 0x10 (i.e. 16 bits) on the value
  // of the register (but not on the CF)

  target_ << "sall $0x10, %eax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "sall $0xf0, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::eax);

  assert_equiv();

}

TEST_F(ValidatorShiftTest, CfUndefinedInBigShift) {

  target_ << "sall $0x10, %eax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "sall $0xf0, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::eflags_cf);

  assert_ceg_nocheck();

}
