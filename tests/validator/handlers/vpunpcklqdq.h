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


namespace stoke {

class ValidatorVpunpcklqdqTest : public ValidatorTest {};

TEST_F(ValidatorVpunpcklqdqTest, DISABLED_Identity) {

  target_ << ".foo:" << std::endl;
  target_ << "vpunpcklqdq %xmm1, %xmm1, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm1, %xmm1, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorVpunpcklqdqTest, DISABLED_NonIdentity) {

  target_ << ".foo:" << std::endl;
  target_ << "vpunpcklqdq %xmm1, %xmm1, %xmm3" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm2, %xmm2, %xmm3" << std::endl;
  rewrite_ << "retq" << std::endl;

#ifdef __AVX2__
  assert_ceg();
#endif
}


TEST_F(ValidatorVpunpcklqdqTest, DISABLED_Idempotent) {

  x64asm::Code c, d;

  target_ << ".foo:" << std::endl;
  target_ << "vpunpcklqdq %xmm3, %xmm2, %xmm1" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm3, %xmm2, %xmm1" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm3, %xmm2, %xmm1" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorVpunpcklqdqTest, DISABLED_IdempotentOtherArg) {

  target_ << ".foo:" << std::endl;
  target_ << "vpunpcklqdq %xmm2, %xmm5, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm1, %xmm3, %xmm4" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm2, %xmm5, %xmm4" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorVpunpcklqdqTest, DISABLED_NotIdempotentWrongArg) {

  target_ << ".foo:" << std::endl;
  target_ << "vpunpcklqdq %xmm1, %xmm3, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm1, %xmm3, %xmm4" << std::endl;
  rewrite_ << "vpunpcklqdq %xmm2, %xmm3, %xmm4" << std::endl;
  rewrite_ << "retq" << std::endl;

#ifdef __AVX2__
  assert_ceg();
#endif
}



} //namespace stoke
