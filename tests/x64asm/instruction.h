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


#ifndef _STOKE_TEST_X64ASM_INSTRUCTION_H
#define _STOKE_TEST_X64ASM_INSTRUCTION_H


TEST(X64AsmInstructionInfo, PushIsMaybeReadWrite) {
  x64asm::Code c;
  std::stringstream ss;
  ss << "pushq %rax" << std::endl;
  ss >> c;
  EXPECT_FALSE(c[0].is_explicit_memory_dereference());
  EXPECT_TRUE(c[0].is_implicit_memory_dereference());
  EXPECT_TRUE(c[0].maybe_read_memory());
  EXPECT_TRUE(c[0].maybe_write_memory());
  EXPECT_FALSE(c[0].must_read_memory());
  EXPECT_FALSE(c[0].must_write_memory());
}

TEST(X64AsmInstructionInfo, ExplicitReadIsMustRead) {
  x64asm::Code c;
  std::stringstream ss;
  ss << "movq 0x4(%rax), %rdx" << std::endl;
  ss >> c;
  EXPECT_TRUE(c[0].is_explicit_memory_dereference());
  EXPECT_FALSE(c[0].is_implicit_memory_dereference());
  EXPECT_FALSE(c[0].maybe_write_memory());
  EXPECT_FALSE(c[0].must_write_memory());
  EXPECT_TRUE(c[0].maybe_read_memory());
  EXPECT_TRUE(c[0].must_read_memory());
}

TEST(X64AsmInstructionInfo, NoMemoryReadOrWrite) {
  x64asm::Code c;
  std::stringstream ss;
  ss << "movq $0x4, %rdx" << std::endl;
  ss >> c;
  EXPECT_FALSE(c[0].is_explicit_memory_dereference());
  EXPECT_FALSE(c[0].is_implicit_memory_dereference());
  EXPECT_FALSE(c[0].maybe_write_memory());
  EXPECT_FALSE(c[0].must_write_memory());
  EXPECT_FALSE(c[0].maybe_read_memory());
  EXPECT_FALSE(c[0].must_read_memory());
}

TEST(X64AsmInstructionInfo, BothMemoryReadAndWrite) {
  x64asm::Code c;
  std::stringstream ss;
  ss << "incq (%rax)" << std::endl;
  ss >> c;
  EXPECT_TRUE(c[0].is_explicit_memory_dereference());
  EXPECT_FALSE(c[0].is_implicit_memory_dereference());
  EXPECT_TRUE(c[0].maybe_write_memory());
  EXPECT_TRUE(c[0].must_write_memory());
  EXPECT_TRUE(c[0].maybe_read_memory());
  EXPECT_TRUE(c[0].must_read_memory());
}

#endif
