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


#ifndef _STOKE_TEST_X64ASM_ASSEMBLER_H
#define _STOKE_TEST_X64ASM_ASSEMBLER_H

namespace x64asm {

TEST(X64AsmInstructionInfo, FunctionSize) {
  Code c;
  std::stringstream ss;
  ss << "pushq %rax" << std::endl;
  ss >> c;

  Assembler assm;
  auto fxn = assm.assemble(c);
  Function gxn = fxn; //testing copy constructor
  EXPECT_EQ(2ul, fxn.size());
  EXPECT_EQ(2ul, gxn.size());
}

TEST(X64AsmInstructionInfo, FunctionSize2) {

  Code c;
  std::stringstream ss;

  ss << "pushq  %rdi" << std::endl;
  ss << "pushq  %rsi" << std::endl;
  ss << "popq   %rcx" << std::endl;
  ss << "popq   %r8" << std::endl;
  ss << "xorl   %r9d,%r9d" << std::endl;
  ss << "movq   $0x3,%r11" << std::endl;
  ss << "pushq  %r11" << std::endl;
  ss << "addw   $0x0,(%rcx,%r9,1)" << std::endl;
  ss << "je     .L1" << std::endl;
  ss << "bsfl   %r11d,%r14d" << std::endl;
  ss << "testb  $0xfe,(%rbx)" << std::endl;
  ss << "setg   %cl" << std::endl;
  ss << "popq   %rsi" << std::endl;
  ss << "pushq  %r11" << std::endl;
  ss << "je     .L2" << std::endl;
  ss << ".L5:" << std::endl;
  ss << "movzbl 0x10(%rdi),%edx" << std::endl;
  ss << "movq   (%rbx),%rax" << std::endl;
  ss << "testl  %esi,%r9d" << std::endl;
  ss << "sarq   %cl,%rsi" << std::endl;
  ss << ".L4:" << std::endl;
  ss << "movq   (%r11,%rax,8),%rcx" << std::endl;
  ss << "movq   (%rcx,%r9,1),%rcx" << std::endl;
  ss << "imulq  (%rdx,%rax,8),%rcx" << std::endl;
  ss << "subw   $0xffff,%ax" << std::endl;
  ss << "xaddq  %rcx,%r8" << std::endl;
  ss << "andb   $0xfb,%al" << std::endl;
  ss << "jne    .L4" << std::endl;
  ss << "xchgq  %r8,0x0(%rbp,%r9,1)" << std::endl;
  ss << "ja     .L4" << std::endl;
  ss << ".L2:" << std::endl;
  ss << "sbbw   $0xfff8,%r9w" << std::endl;
  ss << "cmpb   %r9b,%r8b" << std::endl;
  ss << "ja     .L5" << std::endl;
  ss << "adcq   $0xfc,%r8" << std::endl;
  ss << ".L1:" << std::endl;
  ss << "xchgl  %r11d,%r8d" << std::endl;
  ss << "popq   %r14" << std::endl;
  ss << "sarw   $0x1, %r9w" << std::endl;
  ss << "pushq  %rdi" << std::endl;
  ss << "popq   %rbp" << std::endl;
  ss << "sarb   $0x1, %dil" << std::endl;
  ss << "retq " << std::endl;
  ss >> c;

  Assembler assm;
  auto fxn = assm.assemble(c);
  EXPECT_EQ(150ul, fxn.size());

}

} //namespace x64asm

#endif
