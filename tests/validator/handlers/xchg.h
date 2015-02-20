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

class ValidatorXchgTest : public ValidatorTest {};

TEST_F(ValidatorXchgTest, SameAsSwap64) {

  target_ << ".foo:" << std::endl;
  target_ << "xchgq %rax, %rcx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq %rax, %rdx" << std::endl;
  rewrite_ << "movq %rcx, %rax" << std::endl;
  rewrite_ << "movq %rdx, %rcx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rcx);

  assert_equiv();

}

TEST_F(ValidatorXchgTest, SameAsSwap32) {

  target_ << ".foo:" << std::endl;
  target_ << "xchgl %eax, %ecx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movl %eax, %edx" << std::endl;
  rewrite_ << "movl %ecx, %eax" << std::endl;
  rewrite_ << "movl %edx, %ecx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rcx);

  assert_equiv();

}

TEST_F(ValidatorXchgTest, SameAsSwap16) {

  target_ << ".foo:" << std::endl;
  target_ << "xchgw %ax, %cx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movw %ax, %dx" << std::endl;
  rewrite_ << "movw %cx, %ax" << std::endl;
  rewrite_ << "movw %dx, %cx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rcx);

  assert_equiv();

}

TEST_F(ValidatorXchgTest, SameAsSwap8) {

  target_ << ".foo:" << std::endl;
  target_ << "xchgb %al, %cl" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movb %al, %dl" << std::endl;
  rewrite_ << "movb %cl, %al" << std::endl;
  rewrite_ << "movb %dl, %cl" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rcx);

  assert_equiv();

}
} //namespace stoke
