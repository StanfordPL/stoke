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


#ifndef _STOKE_TEST_X64ASM_PARSING_H
#define _STOKE_TEST_X64ASM_PARSING_H


// In the old code, the Rb class threw an assertion to
// make sure that it couldn't print al/bl/cl/dl.  Now
// that the Rl class is a subclass of Rb, this doesn't
// make sense.  These ensure the assertion is fixed, and
// that the new code prints the right registers.
TEST(X64AsmParsing, Reads64BitMemory) {
  std::stringstream ss;
  ss << "movq %rax, (%rcx)" << std::endl;

  x64asm::Code c;
  ss >> c;

  x64asm::Operand o = c[0].get_operand<x64asm::Operand>(0);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(64, o.size());
}

TEST(X64AsmParsing, Reads32BitMemory) {
  std::stringstream ss;
  ss << "movl %eax, (%rcx)" << std::endl;

  x64asm::Code c;
  ss >> c;

  x64asm::Operand o = c[0].get_operand<x64asm::Operand>(0);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(32, o.size());
}

TEST(X64AsmParsing, Reads16BitMemory) {
  std::stringstream ss;
  ss << "movw (%rcx), %ax" << std::endl;

  x64asm::Code c;
  ss >> c;

  x64asm::Operand o = c[0].get_operand<x64asm::Operand>(1);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(16, o.size());
}

TEST(X64AsmParsing, Reads8BitMemory) {
  std::stringstream ss;
  ss << "movb (%rcx), %al" << std::endl;

  x64asm::Code c;
  ss >> c;

  x64asm::Operand o = c[0].get_operand<x64asm::Operand>(1);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(8, o.size());
}

#endif
