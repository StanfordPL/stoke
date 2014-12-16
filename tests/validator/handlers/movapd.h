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


class ValidatorMovapdTest : public ValidatorTest {};

TEST_F(ValidatorMovapdTest, Identity) {

  target_ << "movapd %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorMovapdTest, NotANoop) {

  target_ << "movapd %xmm3, %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorMovapdTest, RegisterChoiceMatters) {

  target_ << "movapd %xmm3, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorMovapdTest, RegisterChoiceMatters2) {

  target_ << "movapd %xmm3, %xmm4" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm2, %xmm4" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorMovapdTest, PossiblyUnalignedBad) {

  target_ << "movapd %xmm3, (%rax)" << std::endl;
  target_ << "movapd (%rax), %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}

TEST_F(ValidatorMovapdTest, AlwaysAlignedGood) {

  target_ << "movw $0x0, %ax" << std::endl;
  target_ << "movapd %xmm3, (%rax)" << std::endl;
  target_ << "movapd (%rax), %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm5);

  assert_equiv();

}

TEST_F(ValidatorMovapdTest, AlignedWithOriginalGood) {

  target_ << "movapd %xmm3, (%rax)" << std::endl;
  target_ << "movapd (%rax), %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm2"  << std::endl;
  rewrite_ << "movapd %xmm2, (%rax)" << std::endl;
  rewrite_ << "movapd (%rax), %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm5);

  assert_equiv();

}

TEST_F(ValidatorMovapdTest, Align8WithOriginalBad) {

  target_ << "movapd %xmm3, (%rax)" << std::endl;
  target_ << "movapd (%rax), %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm2"  << std::endl;
  rewrite_ << "movapd %xmm2, 0x8(%rax)" << std::endl;
  rewrite_ << "movapd 0x8(%rax), %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm5);

  assert_ceg();

}

TEST_F(ValidatorMovapdTest, Aligned16WithOriginalGood) {

  target_ << "movapd %xmm3, (%rax)" << std::endl;
  target_ << "movapd (%rax), %xmm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movapd %xmm3, %xmm2"  << std::endl;
  rewrite_ << "movapd %xmm2, 0x10(%rax)" << std::endl;
  rewrite_ << "movapd 0x10(%rax), %xmm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm5);

  assert_equiv();

}

TEST_F(ValidatorMovapdTest, Aligned16WithOriginalAvx2Bad) {

  target_ << "vmovapd %ymm3, (%rax)" << std::endl;
  target_ << "vmovapd (%rax), %ymm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vmovapd %ymm3, %ymm2"  << std::endl;
  rewrite_ << "vmovapd %ymm2, 0x10(%rax)" << std::endl;
  rewrite_ << "vmovapd 0x10(%rax), %ymm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm5);

  assert_ceg();

}

TEST_F(ValidatorMovapdTest, Aligned32WithOriginalAvx2Good) {

  target_ << "vmovapd %ymm3, (%rax)" << std::endl;
  target_ << "vmovapd (%rax), %ymm5" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "vmovapd %ymm3, %ymm2"  << std::endl;
  rewrite_ << "vmovapd %ymm2, 0x20(%rax)" << std::endl;
  rewrite_ << "vmovapd 0x20(%rax), %ymm5" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::xmm5);

  assert_equiv();

}

