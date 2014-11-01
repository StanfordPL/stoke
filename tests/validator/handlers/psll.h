
class ValidatorPsllTest : public ValidatorTest { };


TEST_F(ValidatorPsllTest, Identity) {

  target_ << "pslld %xmm0, %xmm0" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pslld %xmm0, %xmm0" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}



TEST_F(ValidatorPsllTest, NotANop) {

  target_ << "pslld %xmm0, %xmm0" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();
}


