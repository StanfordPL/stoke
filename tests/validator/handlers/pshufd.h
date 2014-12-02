
class ValidatorPshufdTest : public ValidatorTest {};

TEST_F(ValidatorPshufdTest, Identity) {

  target_ << "pshufd $0x10, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0x10, %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorPshufdTest, NotANoop) {

  target_ << "pshufd $0x0, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorPshufdTest, IdentityForMagicConstant) {

  target_ << "pshufd $0xe4, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorPshufdTest, NotIdentityForWrongConstant) {

  target_ << "pshufd $0x64, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();
}
