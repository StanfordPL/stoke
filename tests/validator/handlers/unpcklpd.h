

class ValidatorUnpcklpdTest : public ValidatorTest {};

TEST_F(ValidatorUnpcklpdTest, Identity) {

  target_ << "unpcklpd %xmm1, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklpd %xmm1, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorUnpcklpdTest, NonIdentity) {

  target_ << "unpcklpd %xmm1, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklpd %xmm2, %xmm2" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}


TEST_F(ValidatorUnpcklpdTest, Idempotent) {

  x64asm::Code c, d;

  target_ << "unpcklpd %xmm3, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklpd %xmm3, %xmm2" << std::endl;
  rewrite_ << "unpcklpd %xmm3, %xmm2" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorUnpcklpdTest, IdempotentOtherArg) {

  target_ << "unpcklpd %xmm2, %xmm3" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklpd %xmm1, %xmm3" << std::endl;
  rewrite_ << "unpcklpd %xmm2, %xmm3" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorUnpcklpdTest, NotIdempotentWrongArg) {

  target_ << "unpcklpd %xmm1, %xmm3" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklpd %xmm1, %xmm3" << std::endl;
  rewrite_ << "unpcklpd %xmm2, %xmm3" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}



