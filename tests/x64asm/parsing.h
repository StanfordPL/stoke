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

namespace x64asm {

class X64AsmParseTest : public ::testing::Test {

public:

  // Check that writing code to string and back
  // doesn't change anything
  void check_code(x64asm::Code c) {

    Code d;
    std::stringstream ss;

    ss << c << std::endl;
    ss >> d;

    // Check the codes are equivalent
    EXPECT_EQ(c.size(), d.size());
    for(size_t i = 0; i < c.size(); ++i) {
      auto expected_instr = c[i];
      auto actual_instr = d[i];
      EXPECT_EQ(expected_instr.get_opcode(), actual_instr.get_opcode());
      EXPECT_EQ(expected_instr.arity(), actual_instr.arity());
      for(size_t j = 0; j < expected_instr.arity(); ++j) {
        auto expected_operand = expected_instr.get_operand<Imm64>(j);
        auto actual_operand = actual_instr.get_operand<Imm64>(j);
        EXPECT_EQ(expected_operand, actual_operand);
      }
    }

    // Assemble both codes and check for byte-by-byte equivalence

  }



};

// In the old code, the Rb class threw an assertion to
// make sure that it couldn't print al/bl/cl/dl.  Now
// that the Rl class is a subclass of Rb, this doesn't
// make sense.  These ensure the assertion is fixed, and
// that the new code prints the right registers.
TEST_F(X64AsmParseTest, Reads64BitMemory) {
  std::stringstream ss;
  ss << "movq %rax, (%rcx)" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[0].get_operand<Operand>(0);


  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(64, o.size());
}

TEST_F(X64AsmParseTest, Reads32BitMemory) {
  std::stringstream ss;
  ss << "movl %eax, (%rcx)" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[0].get_operand<Operand>(0);


  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(32, o.size());
}

TEST_F(X64AsmParseTest, Reads16BitMemory) {
  std::stringstream ss;
  ss << "movw (%rcx), %ax" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[0].get_operand<Operand>(1);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(16, o.size());
}

TEST_F(X64AsmParseTest, Reads8BitMemory) {
  std::stringstream ss;
  ss << "movb (%rcx), %al" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[0].get_operand<Operand>(1);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(8, o.size());
}

TEST_F(X64AsmParseTest, FuzzTest) {

  struct timeval tv;
  gettimeofday(&tv, NULL);
  uint64_t seed = (uint64_t)tv.tv_usec;

  // Generate a random seed
  std::cout << "[----------] * Seed " << seed << std::endl;

  // Parameters for the test
  unsigned long iterations = 10;

  std::stringstream flags;
  flags << "{ popcnt sse sse2 ssse3 sse4_1 sse4_2 avx avx2 }";
  x64asm::FlagSet flag_set = x64asm::FlagSet::empty();
  flag_set & stoke::CpuInfo::get_flags();

  x64asm::Code code;
  std::stringstream nops;
  for(size_t i = 0; i < 20; ++i)
    nops << "nop" << std::endl;
  nops >> code;
  stoke::TUnit fxn(code);
  stoke::Cfg target(fxn);

  stoke::Transforms t;
  t.set_opcode_pool(target, flag_set, 0, x64asm::RegSet::empty(), {}, {})
  .set_operand_pool(target, x64asm::RegSet::empty())
  .set_seed(seed);

  t.insert_immediate(x64asm::Imm64(0x00));
  t.insert_immediate(x64asm::Imm64(0x01));
  t.insert_immediate(x64asm::Imm64(0x64));
  t.insert_immediate(x64asm::Imm64(0x7f));
  t.insert_immediate(x64asm::Imm64(0x80));
  t.insert_immediate(x64asm::Imm64(0xc0));
  t.insert_immediate(x64asm::Imm64(0xff));
  t.insert_immediate(x64asm::Imm64(0x7fff));
  t.insert_immediate(x64asm::Imm64(0x8000));
  t.insert_immediate(x64asm::Imm64(0xc0de));
  t.insert_immediate(x64asm::Imm64(0xffff));
  t.insert_immediate(x64asm::Imm64(0x7fffffff));
  t.insert_immediate(x64asm::Imm64(0x80000000));
  t.insert_immediate(x64asm::Imm64(0xc0decafe));
  t.insert_immediate(x64asm::Imm64(0xffffffff));
  t.insert_immediate(x64asm::Imm64(0x7fffffffffffffff));
  t.insert_immediate(x64asm::Imm64(0x8000000000000000));
  t.insert_immediate(x64asm::Imm64(0xc0decafec0decafe));
  t.insert_immediate(x64asm::Imm64(0xffffffffffffffff));

  // Do the moves and test
  for(size_t i = 0; i < iterations; ++i) {
    while(!t.instruction_move(target)) { }

    check_code(target.get_code());
  }


}

} //namespace x64asm

#endif
