// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


