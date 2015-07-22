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

    stoke::TUnit test;

    std::stringstream ss;

    ss << stoke::TUnit(c) << std::endl;
    ss >> test;
    Code d = test.get_code();

    ASSERT_FALSE(cpputil::failed(ss)) << cpputil::fail_msg(ss);


    // Check the codes are equivalent
    EXPECT_EQ(c.size(), d.size());
    for(size_t i = 0; i < c.size(); ++i) {
      auto expected_instr = c[i];
      auto actual_instr = d[i];
      EXPECT_EQ(expected_instr.get_opcode(), actual_instr.get_opcode())
          << "Opcodes differ for " << c[i] << " and " << d[i] << std::endl;
      EXPECT_EQ(expected_instr.arity(), actual_instr.arity())
          << "Arities differ for " << c[i] << " and " << d[i] << std::endl;
      for(size_t j = 0; j < expected_instr.arity(); ++j) {
        auto expected_operand = expected_instr.get_operand<Imm64>(j);
        auto actual_operand = actual_instr.get_operand<Imm64>(j);
        EXPECT_EQ((uint64_t)expected_operand, (uint64_t)actual_operand) <<
            "Operand " << j << " differs between " << c[i] << " and " << d[i] << std::endl;
      }
    }

    // Assemble both codes and check for byte-by-byte equivalence
    x64asm::Assembler assm;
    x64asm::Function orig;
    x64asm::Function reparse;

    orig.reserve(c.size()*32);
    reparse.reserve(d.size()*32);

    assm.start(orig);
    for(size_t i = 0; i < c.size(); ++i) {
      assm.assemble(c[i]);
    }
    assm.finish();

    assm.start(reparse);
    for(size_t i = 0; i < d.size(); ++i) {
      assm.assemble(d[i]);
    }
    assm.finish();

    if(orig.size() != reparse.size()) {
      FAIL() << "Output assembly is different in size" << std::endl;
      return;
    }

    for(size_t i = 0; i < orig.size(); ++i) {
      EXPECT_EQ(orig.get_buffer()[i], reparse.get_buffer()[i]);
    }

  }



};

// In the old code, the Rb class threw an assertion to
// make sure that it couldn't print al/bl/cl/dl.  Now
// that the Rl class is a subclass of Rb, this doesn't
// make sense.  These ensure the assertion is fixed, and
// that the new code prints the right registers.
TEST_F(X64AsmParseTest, Reads64BitMemory) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movq %rax, (%rcx)" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[1].get_operand<Operand>(0);


  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(64, o.size());
}

TEST_F(X64AsmParseTest, Reads32BitMemory) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movl %eax, (%rcx)" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[1].get_operand<Operand>(0);


  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(32, o.size());
}

TEST_F(X64AsmParseTest, Reads16BitMemory) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movw (%rcx), %ax" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[1].get_operand<Operand>(1);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(16, o.size());
}

TEST_F(X64AsmParseTest, Reads8BitMemory) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movb (%rcx), %al" << std::endl;

  Code c;
  ss >> c;
  check_code(c);

  Operand o = c[1].get_operand<Operand>(1);

  EXPECT_TRUE(o.is_typical_memory());
  EXPECT_EQ(8, o.size());
}

TEST_F(X64AsmParseTest, Issue189) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movl $0, %eax" << std::endl;

  Code c;
  ss >> c;

  ASSERT_FALSE(cpputil::failed(ss)) << cpputil::fail_msg(ss);

  check_code(c);

  Operand o = c[1].get_operand<Operand>(1);
  EXPECT_TRUE(o.is_immediate());
  EXPECT_EQ((uint64_t)0, (uint64_t)*static_cast<Imm64*>(&o));

}

/*
TEST_F(X64AsmParseTest, FuzzTest) {

  struct timeval tv;
  gettimeofday(&tv, NULL);
  uint64_t seed = (uint64_t)tv.tv_usec;

  // Generate a random seed
  std::cout << "[----------] * Seed " << seed << std::endl;

  // Parameters for the test
  unsigned long iterations = 10000;

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

  stoke::TransformPools tps;
  stoke::Transforms t(tps);
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
*/

} //namespace x64asm

#endif
