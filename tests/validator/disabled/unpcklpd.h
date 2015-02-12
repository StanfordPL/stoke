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



