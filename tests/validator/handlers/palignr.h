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


class ValidatorPalignrTest : public ValidatorTest {

  // We need to test this one with several immediate values
protected:
  const std::vector<std::string> imms
  { "$0x0", "$0x1", "$0x2",
    "$0x0f", "$0x10", "$0x11",
    "$0x1f", "$0x20", "$0x21",
    "$0xff" };

};


TEST_F(ValidatorPalignrTest, Identity) {

  for (auto imm : imms) {
    target_.clear();
    rewrite_.clear();

    target_ << "palignr " << imm << ", %xmm1, %xmm2" << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << "palignr " << imm << ", %xmm1, %xmm2" << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

TEST_F(ValidatorPalignrTest, Imm0SameAsMov) {

  target_ << "palignr $0x0, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movaps %xmm1, %xmm2" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorPalignrTest, Imm0NotNop) {

  target_ << "palignr $0x0, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();
}


TEST_F(ValidatorPalignrTest, Imm160SameAsNop) {

  target_ << "palignr $0x10, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorPalignrTest, DifferentImmediateDifferent) {

  target_ << "palignr $0x12, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "palignr $0x13, %xmm1, %xmm2" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
}
