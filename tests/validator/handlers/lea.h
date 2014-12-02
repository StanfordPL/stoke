
class ValidatorLeaTest : public ValidatorTest {};

TEST_F(ValidatorLeaTest, Identity) {

  target_ << "leaw 0x2(%rsi,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x2(%rsi,%r15,2), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorLeaTest, DifferentScaleCeg) {

  target_ << "leaw 0x2(%rsi,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x2(%rsi,%r15,4), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorLeaTest, NoScaleCeg) {

  target_ << "leaw 0x2(%rsi,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x2(%rsi), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorLeaTest, DifferentIndexCeg) {

  target_ << "leaw 0x2(%rsi,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x2(%rsi,%r14,2), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorLeaTest, DifferentOffsetCeg) {

  target_ << "leaw 0x2(%rsi,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x3(%rsi,%r15,2), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorLeaTest, NoBaseIdentity) {

  target_ << "leaw 0x2(,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x2(,%r15,2), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorLeaTest, NoBaseCeg) {

  target_ << "leaw 0x2(,%r15,2), %r9w" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "leaw 0x2(%rax,%r15,2), %r9w" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorLeaTest, Issue239) {

  target_ << "movl $0x3300, %esp" << std::endl;
  target_ << "movl $0x81d1, %r14d" << std::endl;
  target_ << "leaw 0x40(%rsp,%r14,1), %bx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movl $0x3300, %esp" << std::endl;
  rewrite_ << "movl $0x81d1, %r14d" << std::endl;
  rewrite_ << "leaw 0x40(%rsp), %bx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorLeaTest, Issue239Scale4) {

  target_ << "movl $0x3300, %esp" << std::endl;
  target_ << "movl $0x81d1, %r14d" << std::endl;
  target_ << "leaw 0x40(%rsp,%r14,8), %bx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movl $0x3300, %esp" << std::endl;
  rewrite_ << "movl $0x81d1, %r14d" << std::endl;
  rewrite_ << "shlq $0x1, %r14" << std::endl;
  rewrite_ << "leaw 0x40(%rsp,%r14,4), %bx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rbx);

  assert_equiv();

}
