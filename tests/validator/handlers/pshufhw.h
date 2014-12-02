
class ValidatorPshufhwTest : public ValidatorTest {};

TEST_F(ValidatorPshufhwTest, Identity) {

  target_ << "pshufhw $0x10, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufhw $0x10, %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorPshufhwTest, NotANoop) {

  target_ << "pshufhw $0x0, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorPshufhwTest, IdentityForMagicConstant) {

  target_ << "pshufhw $0xe4, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorPshufhwTest, NotIdentityForWrongConstant) {

  target_ << "pshufhw $0x64, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorPshufhwTest, ThePshufTest) {

  target_ << "pshuflw $0x4e, %xmm0, %xmm1" << std::endl;
  target_ << "pshufhw $0x4e, %xmm0, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0xb4, %xmm0, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorPshufhwTest, ThePshufTestBad1) {

  target_ << "pshuflw $0xe0, %xmm0, %xmm1" << std::endl;
  target_ << "pshufhw $0xa5, %xmm0, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0xc9, %xmm0, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorPshufhwTest, ThePshufTestBad2) {

  target_ << "pshuflw $0xf0, %xmm0, %xmm1" << std::endl;
  target_ << "pshufhw $0xa6, %xmm0, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0xc9, %xmm0, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorPshufhwTest, ThePshufTestBad3) {

  target_ << "pshuflw $0xf0, %xmm0, %xmm1" << std::endl;
  target_ << "pshufhw $0xa5, %xmm0, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0xca, %xmm0, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}




