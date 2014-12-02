
class ValidatorCwdCdqCqoTest : public ValidatorTest {};

// NOTE:
// cwd = cwtd
// cdq = cdtq = cltd
// cqo = cqto


TEST_F(ValidatorCwdCdqCqoTest, CwtdIdentity) {

  target_ << "cwtd" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cwtd" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorCwdCdqCqoTest, CdtqIdentity) {

  target_ << "cltd" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cltd" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorCwdCdqCqoTest, CqtoIdentity) {

  target_ << "cqto" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cqto" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorCwdCdqCqoTest, CqoDifferentCwdOnDX) {
  /* At first I thought these were the same, but
     that's not true because they read different
     high-bits from rax */

  target_ << "cqto" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cwtd" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::dx);

  assert_ceg();
}

TEST_F(ValidatorCwdCdqCqoTest, CqoDifferentFromCwdOnEDX) {

  target_ << "cqto" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cwtd" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::edx);

  assert_ceg();
}

TEST_F(ValidatorCwdCdqCqoTest, CqoMightNotZero) {

  target_ << "cqto" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $0x0, %rdx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorCwdCdqCqoTest, CqoMightNotSet) {

  target_ << "cqto" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $-0x1, %rdx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}


