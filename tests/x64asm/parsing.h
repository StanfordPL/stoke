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

#include "tests/fuzzer.h"

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

    count_++;
    if(count_ % 25 == 0) {
      stoke::fuzz_print(1) << "Iteration " << count_ << " / " << total_ << std::endl;
    }


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

  void set_total(size_t n) {
    total_ = n;
    count_ = 0;
  }

private:
  size_t count_;
  size_t total_;

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

void x64asm_parse_fuzz_callback(const stoke::Cfg& cfg, void* data) {
  X64AsmParseTest* xpt = (X64AsmParseTest*)data;
  xpt->check_code(cfg.get_code());
}

TEST_F(X64AsmParseTest, FuzzTest) {

  // Parameters for the test
  unsigned long iterations = 800;
  stoke::TransformPools tp = stoke::default_fuzzer_pool();

  set_total(iterations);

  //TODO: the 'flags' below are limitting what we are testing.
  // We should just use all Cpu supported flags and fix the
  // parser accordingly.
  x64asm::FlagSet flag_set;

  std::stringstream flags;
  flags << "{ popcnt sse sse2 ssse3 sse4_1 sse4_2 avx avx2 }";
  flags >> flag_set;

  flag_set = flag_set & stoke::CpuInfo::get_flags();
  tp.set_flags(flag_set);

  //The following is a work-around for x64asm bug #195
  tp.clear_mm_pool();
  tp.clear_st_pool();
  tp.clear_sreg_pool();

  tp.recompute_pools();


  stoke::fuzz(tp, iterations, &x64asm_parse_fuzz_callback, (void*)this, 20);

}

} //namespace x64asm

#endif
