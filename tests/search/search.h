
#ifndef _STOKE_TEST_SEARCH_SEARCH_H
#define _STOKE_TEST_SEARCH_SEARCH_H

#include "tests/search/transform.h"

#include "src/ext/x64asm/src/reg_set.h"
#include "src/search/search.h"
#include "tools/io/opc_set.h"

class SearchTest : public ::testing::TestWithParam<const char*> {

public:

  void SetUp() {

  }

protected:

  x64asm::RegSet def_in_;
  x64asm::RegSet live_out_;

};

TEST_P(SearchTest, ZeroInit) {
  std::stringstream ss;
  std::string s = "{ ";
  s += GetParam();
  s += " }";
  ss << s;
  ss >> live_out_;
  ss << "{ }";
  ss >> def_in_;
  auto code = stoke::Search::find_sound_code(def_in_, live_out_);
  auto cfg = stoke::Cfg(code, def_in_, live_out_);
  ASSERT_TRUE(cfg.is_sound()) << "def in:   " << def_in_ << std::endl <<
                              "live out: " << live_out_ << std::endl <<
                              "cfg.def_outs(): " << cfg.def_outs();
}


INSTANTIATE_TEST_CASE_P(GeneralPurpose0, SearchTest, ::testing::Values(
                          "%rax", "%eax", "%ax", "%al", "%rbx", "%ebx", "%bx", "%bl", "%rcx", "%ecx", "%cx", "%cl", "%rdx", "%edx", "%dx", "%dl", "%rsi", "%esi", "%si", "%sil", "%rdi", "%edi", "%di", "%dil", "%rbp", "%ebp", "%bp", "%bpl", "%rsp", "%esp", "%sp", "%spl"
                        ));

INSTANTIATE_TEST_CASE_P(GeneralPurpose1, SearchTest, ::testing::Values(
                          "%r8", "%r8d", "%r8w", "%r8b", "%r9", "%r9d", "%r9w", "%r9b", "%r10", "%r10d", "%r10w", "%r10b", "%r11", "%r11d", "%r11w", "%r11b", "%r12", "%r12d", "%r12w", "%r12b", "%r13", "%r13d", "%r13w", "%r13b", "%r14", "%r14d", "%r14w", "%r14b", "%r15", "%r15d", "%r15w", "%r15b"
                        ));

INSTANTIATE_TEST_CASE_P(Sse, SearchTest, ::testing::Values(
                          "%xmm0", "%xmm1", "%xmm2", "%xmm3", "%xmm4", "%xmm5","%xmm6", "%xmm7", "%xmm8", "%xmm9", "%xmm10", "%xmm11", "%xmm12", "%xmm13", "%xmm14", "%xmm15",
                          "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5","%ymm6", "%ymm7", "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14", "%ymm15"
                        ));

INSTANTIATE_TEST_CASE_P(Flags, SearchTest, ::testing::Values(
                          "%of", "%sf", "%zf", "%af", "%cf", "%pf"
                        ));

INSTANTIATE_TEST_CASE_P(Many, SearchTest, ::testing::Values(
                          "%of %sf %zf %af %cf %pf %xmm0 %eax"
                        ));


#endif
