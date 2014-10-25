

class ValidatorUnpcklpsTest : public ValidatorTest {};

TEST_F(ValidatorUnpcklpsTest, Identity) {

  target_ << "unpcklps %xmm1, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklps %xmm1, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorUnpcklpsTest, NonIdentity) {
  
  target_ << "unpcklps %xmm1, %xmm1" << std::endl;
  target_ << "retq" << std::endl;
  
  rewrite_ << "unpcklps %xmm2, %xmm2" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}


TEST_F(ValidatorUnpcklpsTest, NotIdempotent) {
  
  target_ << "unpcklps %xmm2, %xmm3" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklps %xmm1, %xmm3" << std::endl;
  rewrite_ << "unpcklps %xmm2, %xmm3" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}


TEST_F(ValidatorUnpcklpsTest, NotIdempotentWrongArg) {

  target_ << "unpcklps %xmm1, %xmm3" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "unpcklps %xmm1, %xmm3" << std::endl;
  rewrite_ << "unpcklps %xmm2, %xmm3" << std::endl;
  rewrite_ << "retq" << std::endl;
  
  assert_ceg();

}



