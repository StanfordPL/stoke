
class ValidatorPshuflwTest : public ValidatorTest {};

TEST_F(ValidatorPshuflwTest, Identity) {

  target_ << "pshuflw $0x10, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshuflw $0x10, %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorPshuflwTest, NotANoop) {

  target_ << "pshuflw $0x0, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorPshuflwTest, IdentityForMagicConstant) {

  target_ << "pshuflw $0xe4, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorPshuflwTest, NotIdentityForWrongConstant) {

  target_ << "pshuflw $0x64, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();
}
