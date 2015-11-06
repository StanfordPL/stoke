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

class ValidatorXorpsTest : public StraightLineValidatorTest {};

TEST_F(ValidatorXorpsTest, Identity) {

  target_ << ".foo:" << std::endl;
  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "xorps %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorXorpsTest, NotANoop) {

  target_ << ".foo:" << std::endl;
  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorXorpsTest, SelfXorZero) {

  target_ << ".foo:" << std::endl;
  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "xorps %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorXorpsTest, XorCommutative) {

  // Suppose xmm0 and xmm1 start at A and B respectively.
  // See the table of values next to each instr.

  // xmm0  xmm1  xmm2
  target_ << ".foo:" << std::endl;
  target_ << "xorps  %xmm0, %xmm1" << std::endl;  // A     A+B
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movaps %xmm0, %xmm2" << std::endl; // A     B     A
  rewrite_ << "xorps  %xmm1, %xmm0" << std::endl; // A+B   B     A
  rewrite_ << "movaps %xmm0, %xmm1" << std::endl; // A+B   A+B   A
  rewrite_ << "movaps %xmm2, %xmm0" << std::endl; // A     A+B   A
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm0 + x64asm::xmm1);
  assert_equiv();

}
} //namespace stoke
