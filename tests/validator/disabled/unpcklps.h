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



