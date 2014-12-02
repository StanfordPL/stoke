

class ValidatorVpunpcklqdqTest : public ValidatorTest {};

TEST_F(ValidatorVpunpcklqdqTest, Identity) {

  target_ << "vpunpcklqdq %xmm1, %xmm1, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vpunpcklqdq %xmm1, %xmm1, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorVpunpcklqdqTest, NonIdentity) {

  target_ << "vpunpcklqdq %xmm1, %xmm1, %xmm3" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vpunpcklqdq %xmm2, %xmm2, %xmm3" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}


TEST_F(ValidatorVpunpcklqdqTest, Idempotent) {

  x64asm::Code c, d;

  target_ << "vpunpcklqdq %xmm3, %xmm2, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vpunpcklqdq %xmm3, %xmm2, %xmm1" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm3, %xmm2, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorVpunpcklqdqTest, IdempotentOtherArg) {

  target_ << "vpunpcklqdq %xmm2, %xmm5, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vpunpcklqdq %xmm1, %xmm3, %xmm4" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm2, %xmm5, %xmm4" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorVpunpcklqdqTest, NotIdempotentWrongArg) {

  target_ << "vpunpcklqdq %xmm1, %xmm3, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vpunpcklqdq %xmm1, %xmm3, %xmm4" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm2, %xmm3, %xmm4" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}



