
class ValidatorXorpsTest : public ValidatorTest {};

TEST_F(ValidatorXorpsTest, Identity) {

  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "xorps %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorXorpsTest, NotANoop) {

  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorXorpsTest, SelfXorZero) {

  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorXorpsTest, XorCommutative) {

  // Suppose xmm0 and xmm1 start at A and B respectively.
  // See the table of values next to each instr.

  // xmm0  xmm1  xmm2
  target_ << "xorps  %xmm0, %xmm1" << std::endl;  // A     A+B
  target_ << "retq" << std::endl;

  rewrite_ << "movaps %xmm0, %xmm2" << std::endl; // A     B     A
  rewrite_ << "xorps  %xmm1, %xmm0" << std::endl; // A+B   B     A
  rewrite_ << "movaps %xmm0, %xmm1" << std::endl; // A+B   A+B   A
  rewrite_ << "movaps %xmm2, %xmm0" << std::endl; // A     A+B   A
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm0 + x64asm::xmm1);
  assert_equiv();

}
