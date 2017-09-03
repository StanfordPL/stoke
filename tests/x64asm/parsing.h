// Copyright 2013-2016 Stanford University
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
#include "src/disassembler/disassembler.h"
#include "src/ext/x64asm/src/opcode.h"

using namespace stoke;
using namespace cpputil;

namespace x64asm {

map<Opcode, vector<Opcode>> synonyms;

void add_synonym(Opcode a, Opcode b) {
  // close transitively
  for (Opcode c : synonyms[a]) {
    synonyms[b].push_back(c);
  }
  for (Opcode c : synonyms[b]) {
    synonyms[a].push_back(c);
  }
  synonyms[a].push_back(b);
  synonyms[b].push_back(a);
}

// identifies opcodes that are synonyms (they mean EXACTLY the same thing, i.e. assemble to the same thing)
void init_synonyms() {
  if (synonyms.size()) return;

  // fill everything with empty list
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    Opcode op = (Opcode) i;
    synonyms[op] = vector<Opcode>();
  }

  // add synonyms
  add_synonym(SETNB_R8, SETAE_R8);
  add_synonym(SETNB_RH, SETAE_RH);
  add_synonym(SETNB_M8, SETAE_M8);
  add_synonym(SETNB_R8, SETNC_R8);
  add_synonym(SETNB_RH, SETNC_RH);
  add_synonym(SETNB_M8, SETNC_M8);
  add_synonym(SETA_R8, SETNBE_R8);
  add_synonym(SETA_RH, SETNBE_RH);
  add_synonym(SETA_M8, SETNBE_M8);
  add_synonym(SETNA_R8, SETBE_R8);
  add_synonym(SETNA_RH, SETBE_RH);
  add_synonym(SETNA_M8, SETBE_M8);
  add_synonym(SETNAE_R8, SETB_R8);
  add_synonym(SETNAE_RH, SETB_RH);
  add_synonym(SETNAE_M8, SETB_M8);
  add_synonym(SETLE_R8, SETNG_R8);
  add_synonym(SETLE_RH, SETNG_RH);
  add_synonym(SETLE_M8, SETNG_M8);
  add_synonym(SETNLE_R8, SETG_R8);
  add_synonym(SETNLE_RH, SETG_RH);
  add_synonym(SETNLE_M8, SETG_M8);
  add_synonym(SETE_R8, SETZ_R8);
  add_synonym(SETE_RH, SETZ_RH);
  add_synonym(SETE_M8, SETZ_M8);
  add_synonym(SETNE_R8, SETNZ_R8);
  add_synonym(SETNE_RH, SETNZ_RH);
  add_synonym(SETNE_M8, SETNZ_M8);
  add_synonym(SETB_R8, SETC_R8);
  add_synonym(SETB_RH, SETC_RH);
  add_synonym(SETB_M8, SETC_M8);
  add_synonym(SETGE_R8, SETNL_R8);
  add_synonym(SETGE_RH, SETNL_RH);
  add_synonym(SETGE_M8, SETNL_M8);
  add_synonym(SETNGE_R8, SETL_R8);
  add_synonym(SETNGE_RH, SETL_RH);
  add_synonym(SETNGE_M8, SETL_M8);
  add_synonym(SETNP_R8, SETPO_R8);
  add_synonym(SETNP_RH, SETPO_RH);
  add_synonym(SETNP_M8, SETPO_M8);
  add_synonym(SETP_R8, SETPE_R8);
  add_synonym(SETP_RH, SETPE_RH);
  add_synonym(SETP_M8, SETPE_M8);
  add_synonym(SAL_M16_CL, SHL_M16_CL);
  add_synonym(SAL_M16_IMM8, SHL_M16_IMM8);
  add_synonym(SAL_M16_ONE, SHL_M16_ONE);
  add_synonym(SAL_M32_CL, SHL_M32_CL);
  add_synonym(SAL_M32_IMM8, SHL_M32_IMM8);
  add_synonym(SAL_M32_ONE, SHL_M32_ONE);
  add_synonym(SAL_M64_CL, SHL_M64_CL);
  add_synonym(SAL_M64_IMM8, SHL_M64_IMM8);
  add_synonym(SAL_M64_ONE, SHL_M64_ONE);
  add_synonym(SAL_M8_CL, SHL_M8_CL);
  add_synonym(SAL_M8_IMM8, SHL_M8_IMM8);
  add_synonym(SAL_M8_ONE, SHL_M8_ONE);
  add_synonym(SAL_R16_CL, SHL_R16_CL);
  add_synonym(SAL_R16_IMM8, SHL_R16_IMM8);
  add_synonym(SAL_R16_ONE, SHL_R16_ONE);
  add_synonym(SAL_R32_CL, SHL_R32_CL);
  add_synonym(SAL_R32_IMM8, SHL_R32_IMM8);
  add_synonym(SAL_R32_ONE, SHL_R32_ONE);
  add_synonym(SAL_R64_CL, SHL_R64_CL);
  add_synonym(SAL_R64_IMM8, SHL_R64_IMM8);
  add_synonym(SAL_R64_ONE, SHL_R64_ONE);
  add_synonym(SAL_R8_CL, SHL_R8_CL);
  add_synonym(SAL_R8_IMM8, SHL_R8_IMM8);
  add_synonym(SAL_R8_ONE, SHL_R8_ONE);
  add_synonym(SAL_RH_CL, SHL_RH_CL);
  add_synonym(SAL_RH_IMM8, SHL_RH_IMM8);
  add_synonym(SAL_RH_ONE, SHL_RH_ONE);
  add_synonym(PEXTRW_R32_MM_IMM8, PEXTRW_R64_MM_IMM8);
  add_synonym(PEXTRW_R32_XMM_IMM8, PEXTRW_R64_XMM_IMM8);
  add_synonym(PEXTRW_R32_XMM_IMM8_1, PEXTRW_R64_XMM_IMM8_1);
  add_synonym(PEXTRB_R32_XMM_IMM8, PEXTRB_R64_XMM_IMM8);
  add_synonym(EXTRACTPS_R32_XMM_IMM8, EXTRACTPS_R64_XMM_IMM8);
  add_synonym(VPEXTRW_R32_XMM_IMM8, VPEXTRW_R64_XMM_IMM8);
  add_synonym(VPEXTRW_R32_XMM_IMM8_1, VPEXTRW_R64_XMM_IMM8_1);
  add_synonym(MOVMSKPD_R32_XMM, MOVMSKPD_R64_XMM);
  add_synonym(MOVMSKPS_R32_XMM, MOVMSKPS_R64_XMM);
  add_synonym(XCHG_AX_R16, XCHG_R16_AX);
  add_synonym(XCHG_EAX_R32, XCHG_R32_EAX);
  add_synonym(XCHG_M16_R16, XCHG_R16_M16);
  add_synonym(XCHG_M32_R32, XCHG_R32_M32);
  add_synonym(XCHG_M64_R64, XCHG_R64_M64);
  add_synonym(XCHG_M8_R8, XCHG_R8_M8);
  add_synonym(XCHG_M8_RH, XCHG_RH_M8);
  add_synonym(XCHG_RH_RH, XCHG_RH_RH_1);
  add_synonym(XCHG_R64_RAX, XCHG_RAX_R64);
  add_synonym(PMOVMSKB_R32_MM, PMOVMSKB_R64_MM);
  add_synonym(PMOVMSKB_R32_XMM, PMOVMSKB_R64_XMM);
  add_synonym(VMOVMSKPD_R32_XMM, VMOVMSKPD_R64_XMM);
  add_synonym(VMOVMSKPS_R32_XMM, VMOVMSKPS_R64_XMM);
  add_synonym(VMOVMSKPD_R32_YMM, VMOVMSKPD_R64_YMM);
  add_synonym(VMOVMSKPS_R32_YMM, VMOVMSKPS_R64_YMM);
  add_synonym(XCHG_R8_R8, XCHG_R8_R8_1);
  add_synonym(XCHG_R16_R16, XCHG_R16_R16_1);
  add_synonym(XCHG_R32_R32, XCHG_R32_R32_1);
  add_synonym(XCHG_R64_R64, XCHG_R64_R64_1);
  add_synonym(LEA_R16_M32, LEA_R16_M16);
  add_synonym(LEA_R16_M32, LEA_R16_M64);
  add_synonym(LEA_R32_M32, LEA_R32_M16);
  add_synonym(LEA_R32_M32, LEA_R32_M64);
  add_synonym(LEA_R64_M32, LEA_R64_M16);
  add_synonym(LEA_R64_M32, LEA_R64_M64);
  add_synonym(VPMOVMSKB_R32_XMM, VPMOVMSKB_R64_XMM);
  add_synonym(VPMOVMSKB_R32_YMM, VPMOVMSKB_R64_YMM);
  add_synonym(VPEXTRB_R32_XMM_IMM8, VPEXTRB_R64_XMM_IMM8);
  add_synonym(VPEXTRW_R32_XMM_IMM8_1, VPEXTRW_R64_XMM_IMM8_1);


  // now we'll add some instructions that aren't synonyms, but that we can't distinguish properly
  add_synonym(XCHG_R32_R32, XCHG_R32_EAX);
  add_synonym(XCHG_RH_R8_1, XCHG_R8_RH);
  add_synonym(MOVUPD_XMM_XMM, MOVUPD_XMM_XMM_1);
  add_synonym(MOVAPD_XMM_XMM, MOVAPD_XMM_XMM_1);
  add_synonym(XCHG_R8_RH_1, XCHG_RH_R8);
  add_synonym(VMOVUPS_XMM_XMM_1, VMOVUPS_XMM_XMM);
  add_synonym(VCVTTPD2DQ_XMM_M256, VCVTTPD2DQ_XMM_M128);
  add_synonym(SUB_AX_IMM16, SUB_R16_IMM8);
  add_synonym(MOVUPS_XMM_XMM_1, MOVUPS_XMM_XMM);
  add_synonym(OR_AX_IMM16, OR_R16_IMM8);
  add_synonym(XOR_AX_IMM16, XOR_R16_IMM8);
  add_synonym(AND_AX_IMM16, AND_R16_IMM8);
  add_synonym(VCVTSS2SI_R64_M32, VCVTSD2SI_R64_M64);
  add_synonym(VMOVAPD_YMM_YMM_1, VMOVAPD_YMM_YMM);
  add_synonym(VMOVUPS_YMM_YMM_1, VMOVUPS_YMM_YMM);

  add_synonym(ADC_AX_IMM16, ADC_R16_IMM8);
  add_synonym(ADD_AX_IMM16, ADD_R16_IMM8);
  add_synonym(CVTSS2SI_R64_M32, CVTSD2SI_R64_M64);
  add_synonym(CVTSS2SI_R64_XMM, CVTSD2SI_R64_XMM);
  add_synonym(MOVAPS_XMM_XMM_1, MOVAPS_XMM_XMM);
  add_synonym(MOVQ_M64_XMM_1, MOVQ_M64_XMM);
  add_synonym(MOVQ_XMM_M64_1, MOVQ_XMM_M64);
  add_synonym(PUSHQ_IMM16, PUSHW_IMM16);
  add_synonym(SBB_AX_IMM16, SBB_R16_IMM8);
  add_synonym(VCVTPD2DQ_XMM_M128, VCVTPD2DQ_XMM_M256);
  add_synonym(VCVTPD2PS_XMM_M256, VCVTPD2PS_XMM_M128);
  add_synonym(VCVTSS2SI_R64_XMM, VCVTSD2SI_R64_XMM);
  add_synonym(VMOVAPD_XMM_XMM_1, VMOVAPD_XMM_XMM);
  add_synonym(VMOVAPS_XMM_XMM_1, VMOVAPS_XMM_XMM);
  add_synonym(VMOVAPS_YMM_YMM_1, VMOVAPS_YMM_YMM);
  add_synonym(VMOVDQA_XMM_XMM_1, VMOVDQA_XMM_XMM);
  add_synonym(VMOVDQU_YMM_YMM_1, VMOVDQU_YMM_YMM);
  add_synonym(VMOVQ_M64_XMM_1, VMOVQ_M64_XMM);
  add_synonym(VMOVUPD_XMM_XMM_1, VMOVUPD_XMM_XMM);
  add_synonym(VMOVUPD_YMM_YMM_1, VMOVUPD_YMM_YMM);
  add_synonym(VPEXTRW_R32_XMM_IMM8_1, VPEXTRW_R32_XMM_IMM8);
  add_synonym(CMP_AX_IMM16, CMP_R16_IMM8);
  add_synonym(VMOVDQU_XMM_XMM_1, VMOVDQU_XMM_XMM);
  add_synonym(VPEXTRW_R64_XMM_IMM8_1, VPEXTRW_R32_XMM_IMM8);
  add_synonym(VMOVDQA_YMM_YMM_1, VMOVDQA_YMM_YMM);
  add_synonym(VMOVQ_XMM_M64_1, VMOVQ_XMM_M64);
  add_synonym(XCHG_EAX_R32, NOP);
  add_synonym(XCHG_R32_EAX, NOP);
  add_synonym(XCHG_R64_RAX, NOP);
  add_synonym(XCHG_RAX_R64, NOP);
}


string bytes_of(Instruction instr) {
  Assembler assm;
  Function fun;
  assm.start(fun);
  assm.assemble(instr);
  assm.finish();

  stringstream ss;
  ss << std::setw(2) << std::setfill('0') << std::hex;
  for (size_t i = 0; i < fun.size(); ++i) {
    ss << " " << ((int) fun.get_buffer()[i]);
  }
  return ss.str();
}

class X64AsmParseTest : public ::testing::Test {

public:

  // Check that writing code to string and back
  // doesn't change anything
  void check_code(x64asm::Code c) {

    init_synonyms();

    stoke::TUnit test;

    std::stringstream ss;

    ss << stoke::TUnit(c) << std::endl;
    ss >> test;
    Code d = test.get_code();

    ASSERT_FALSE(cpputil::failed(ss)) << cpputil::fail_msg(ss);

    count_++;
    if (count_ % 25 == 0) {
      stoke::fuzz_print(1) << "Iteration " << count_ << " / " << total_ << std::endl;
    }


    // Check the codes are equivalent
    EXPECT_EQ(c.size(), d.size());
    for (size_t i = 0; i < c.size(); ++i) {
      auto expected_instr = c[i];
      auto actual_instr = d[i];
      EXPECT_EQ(expected_instr.get_opcode(), actual_instr.get_opcode())
          << "Opcodes differ for " << c[i] << " and " << d[i] << std::endl;
      EXPECT_EQ(expected_instr.arity(), actual_instr.arity())
          << "Arities differ for " << c[i] << " and " << d[i] << std::endl;
      for (size_t j = 0; j < expected_instr.arity(); ++j) {
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
    for (size_t i = 0; i < c.size(); ++i) {
      assm.assemble(c[i]);
    }
    assm.finish();

    assm.start(reparse);
    for (size_t i = 0; i < d.size(); ++i) {
      assm.assemble(d[i]);
    }
    assm.finish();

    if (orig.size() != reparse.size()) {
      FAIL() << "Output assembly is different in size" << std::endl;
      return;
    }

    for (size_t i = 0; i < orig.size(); ++i) {
      EXPECT_EQ(orig.get_buffer()[i], reparse.get_buffer()[i]);
    }

    // take assembled code and disassemble again
    const char *tmpfilename = tmpnam(NULL);
    FILE *fp = fopen(tmpfilename, "wb");
    int ch;
    for (size_t i = 0; i < orig.size(); ++i) {
      fwrite(&(orig.get_buffer()[i]), 1, 1, fp);
    }
    fclose(fp);

    Disassembler disassm;
    bool succeeded = false;
    disassm.set_flat_binary(true);
    Disassembler::Callback callback =
    [&](const FunctionCallbackData& data) {
      succeeded = true;
      auto after_parsing = data.tunit.get_code()[1];
      auto original = d[1];
      if (after_parsing != original) {
        // ignore synonyms
        auto& syns = synonyms[original.get_opcode()];
        if (find(syns.begin(), syns.end(), after_parsing.get_opcode()) == syns.end()) {
          EXPECT_EQ(after_parsing, original);
          cout << "Opcode of original:      " << original.get_opcode() << endl;
          cout << "Opcode of after parsing: " << after_parsing.get_opcode() << endl;
          cout << "Bytes for original:      " << bytes_of(original) << endl;
          cout << "Bytes for after parsing: " << bytes_of(after_parsing) << endl;
          cout << "If this is a suprious error, suppress it by adding:" << endl;
          cout << "  add_synonym(" << original.get_opcode() << ", " << after_parsing.get_opcode() << ");" << endl;
        }
      }
    };
    disassm.set_function_callback(&callback);
    streambuf* orig_buf = cerr.rdbuf();
    std::stringstream buffer;
    cerr.rdbuf(buffer.rdbuf());
    disassm.disassemble(tmpfilename);
    cerr.rdbuf(orig_buf);
    std::remove(tmpfilename);

    if (disassm.has_error()) {
      FAIL() << "Disassembler failed on binary input.  Error: " << disassm.get_error();
    }

    EXPECT_TRUE(succeeded) << "Parsing failed for " << d[1] << " with error:" << endl << buffer.str() << endl;

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

TEST_F(X64AsmParseTest, ImmSize0) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "orw $0xffff, %ax" << std::endl;

  Code c;
  ss >> c;

  ASSERT_FALSE(failed(ss));

  Instruction instr = c[1];
  EXPECT_EQ(instr.get_opcode(), OR_R16_IMM8);
}

TEST_F(X64AsmParseTest, ImmSize1) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "orw $0xff, %ax" << std::endl;

  Code c;
  ss >> c;

  ASSERT_FALSE(failed(ss));

  Instruction instr = c[1];
  EXPECT_EQ(instr.get_opcode(), OR_AX_IMM16);
}

TEST_F(X64AsmParseTest, ImmSize2) {
  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "orw $0xff, %ax" << std::endl;

  Code c;
  ss >> c;

  ASSERT_FALSE(failed(ss));

  Instruction instr = c[1];
  EXPECT_EQ(instr.get_opcode(), OR_AX_IMM16);
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


  stoke::fuzz(tp, iterations, &x64asm_parse_fuzz_callback, (void*)this, 1);

}

} //namespace x64asm

#endif
