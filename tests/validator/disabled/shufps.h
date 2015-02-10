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


class ValidatorShufpsTest : public ValidatorTest {};

TEST_F(ValidatorShufpsTest, Identity) {

  target_ << "shufps $0x10, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "shufps $0x10, %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorShufpsTest, NotANoop) {

  target_ << "shufps $0x0, %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorShufpsTest, IdentityForMagicConstant) {

  target_ << "shufps $0xe4, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorShufpsTest, NotIdentityForWrongConstant) {

  target_ << "shufps $0x64, %xmm4, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();
}

TEST_F(ValidatorShufpsTest, SameAsPshufdForMagic) {

  target_ << "shufps $0xb1, %xmm0, %xmm0" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0xb1, %xmm0, %xmm0" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorShufpsTest, NotSameAsPshufdForWrongMagic) {

  target_ << "shufps $0xe4, %xmm0, %xmm0" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "pshufd $0xe4, %xmm0, %xmm0" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}
