// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


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

TEST_F(ValidatorLeaTest, Issue392NegativeOffset) {

  target_ << "leaq -0x10(%rax), %rdx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "addq $-0x10, %rax" << std::endl;
  rewrite_ << "movq %rax, %rdx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rdx);
  assert_equiv();

}

