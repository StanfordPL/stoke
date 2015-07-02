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

class ValidatorMemoryTest : public ValidatorTest { };

TEST_F(ValidatorMemoryTest, ReadAfterSameWrite) {

  target_ << ".foo:" << std::endl;
  target_ << "movq %rdx, (%rsp)" << std::endl;
  target_ << "movq (%rsp), %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq %rdx, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorMemoryTest, Read32AfterWrite64) {

  target_ << ".foo:" << std::endl;
  target_ << "movq %rdx, (%rsp)" << std::endl;
  target_ << "movl (%rsp), %eax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movl %edx, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx);
  assert_equiv();
}

TEST_F(ValidatorMemoryTest, Read16AfterBiggerWrite64) {

  target_ << ".foo:" << std::endl;
  target_ << "movq %rdx, (%rsp)" << std::endl;
  target_ << "movw (%rsp), %ax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movw %dx, %ax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx);
  assert_equiv();
}

TEST_F(ValidatorMemoryTest, Read8AfterBiggerWrite64) {

  target_ << ".foo:" << std::endl;
  target_ << "movq %rdx, (%rsp)" << std::endl;
  target_ << "movb (%rsp), %al" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movb %dl, %al" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx);
  assert_equiv();
}

TEST_F(ValidatorMemoryTest, Read16AfterTwoWrite8) {

  // MEMORY LOOKS LIKE:
  // | DL | CL |
  //   ^
  //  RSP
  // (small)

  // RAX LOOKS LIKE:
  // | CL | DL |

  target_ << ".foo:" << std::endl;
  target_ << "movb %dl, (%rsp)" << std::endl;
  target_ << "movb %cl, 0x1(%rsp)" << std::endl;
  target_ << "movw (%rsp), %ax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movb %cl, %al"  << std::endl;
  rewrite_ << "shlw $0x8, %ax" << std::endl;
  rewrite_ << "movb %dl, %al"  << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx);
  assert_equiv();
}

TEST_F(ValidatorMemoryTest, ReadByteFromQuadword) {

  target_ << ".foo:" << std::endl;
  target_ << "movq $0xc0deface, (%rsp)" << std::endl;
  target_ << "movzbq 0x2(%rsp), %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq $0xde, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, ReadWordFromQuadword) {

  target_ << ".foo:" << std::endl;
  target_ << "movq $0xc0deface, (%rsp)" << std::endl;
  target_ << "movzwq 0x1(%rsp), %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq $0xdefa, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, Read4BytesFrom3Words) {

  target_ << ".foo:" << std::endl;
  target_ << "movw $0xc0de, (%rsp)" << std::endl;
  target_ << "movw $0xface, 0x2(%rsp)" << std::endl;
  target_ << "movw $0xcafe, 0x4(%rsp)" << std::endl;
  target_ << "movl 0x1(%rsp), %eax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movl $0xfefacec0, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, ReadFromOverlappingWritesOffset2) {

  target_ << ".foo:" << std::endl;
  target_ << "movl $0xc0deface, (%rsp)" << std::endl;
  target_ << "movl $0xcafe501e, 0x2(%rsp)" << std::endl;
  target_ << "movl 0x1(%rsp), %eax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movl $0xfe501efa, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, ReadFromOverlappingWritesOffset3) {

  target_ << ".foo:" << std::endl;
  target_ << "movl $0xc0deface, (%rsp)" << std::endl;
  target_ << "movl $0xcafe501e, 0x3(%rsp)" << std::endl;
  target_ << "movl 0x2(%rsp), %eax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movl $0xfe501ede, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, ReadWordFromLong) {

  target_ << ".foo:" << std::endl;
  target_ << "movl $0xc0deface, (%rsp)" << std::endl;
  target_ << "movw 0x1(%rsp), %ax" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movw $0xdefa, %ax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorMemoryTest, ReadQuadWordFromConcat) {

  target_ << ".foo:" << std::endl;
  target_ << "movw $0xc0de, (%rsp)" << std::endl;
  target_ << "movw $0xcafe, 0x2(%rsp)" << std::endl;
  target_ << "movl (%rsp), %eax" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movl $0xcafec0de, %eax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorMemoryTest, PushPopIsNop) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq %rax" << std::endl;
  target_ << "popq %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, PushPopIsMove) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq %rax" << std::endl;
  target_ << "popq %rdx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq %rax, %rdx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}


TEST_F(ValidatorMemoryTest, DoublePushPopIsNop) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq %rax" << std::endl;
  target_ << "pushq %rdx" << std::endl;
  target_ << "popq %rdx" << std::endl;
  target_ << "popq %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, DoublePushPopIsMove) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq %rax" << std::endl;
  target_ << "pushq %rcx" << std::endl;
  target_ << "popq %rdx" << std::endl;
  target_ << "popq %rbx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq %rax, %rbx" << std::endl;
  rewrite_ << "movq %rcx, %rdx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, DoublePushPopIsCorrectMove) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq %rax" << std::endl;
  target_ << "pushq %rcx" << std::endl;
  target_ << "popq %rdx" << std::endl;
  target_ << "popq %rbx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq %rax, %rdx" << std::endl;
  rewrite_ << "movq %rcx, %rbx" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg_nocheck();
}

TEST_F(ValidatorMemoryTest, StackBasedAddition) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq $0x40" << std::endl;
  target_ << "addq (%rsp), %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "addq $0x40, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax);

  assert_equiv();
}

TEST_F(ValidatorMemoryTest, StackBasedAdditionAffectsRsp) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq $0x40" << std::endl;
  target_ << "addq (%rsp), %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "addq $0x40, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg_nocheck();
}

TEST_F(ValidatorMemoryTest, PopRspIsSpecial) {

  target_ << ".foo:" << std::endl;
  target_ << "pushq %rax" << std::endl;
  target_ << "popq %rsp" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "movq %rax, %rsp" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

} //namespace stoke
