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


#ifndef _STOKE_TEST_SEARCH_SEARCH_H
#define _STOKE_TEST_SEARCH_SEARCH_H

#include "tests/search/transform.h"
#include "src/cfg/cfg_transforms.h"

namespace stoke {

class SearchTest : public ::testing::TestWithParam<const char*> {

public:

  void SetUp() {

  }

protected:

  x64asm::RegSet def_in_;
  x64asm::RegSet live_out_;

  void test(std::string in, std::string out) {
    // @todo This test used to belong here.
    // The functionality it exercises has been moved to CfgTransforms
    // Move whenever it's convenient

    std::stringstream ss0;
    std::stringstream ss1;
    ss0 << "{ " << out << " }";
    ss0 >> live_out_;
    ss1 << "{ " << in << " }";
    ss1 >> def_in_;

		const auto cfg = CfgTransforms().minimal_correct_cfg(def_in_, live_out_);
    ASSERT_TRUE(cfg.check_invariants()) << "def in:   " << def_in_ << std::endl <<
                                        "live out: " << live_out_ << std::endl <<
                                        "cfg.def_outs(): " << cfg.def_outs() << std::endl <<
                                        "code: " << cfg.get_code() << std::endl;
  }

};

TEST_P(SearchTest, ZeroInit) {
  test("", GetParam());
}

TEST_F(SearchTest, ZeroInitBug0) {
  test("%ymm8", "%xmm8 %xmm9");
}

INSTANTIATE_TEST_CASE_P(GeneralPurpose0, SearchTest, ::testing::Values(
                          "%rax", "%eax", "%ax", "%al", "%rbx", "%ebx", "%bx", "%bl", "%rcx", "%ecx", "%cx", "%cl", "%rdx", "%edx", "%dx", "%dl", "%rsi", "%esi", "%si", "%sil", "%rdi", "%edi", "%di", "%dil", "%rbp", "%ebp", "%bp", "%bpl", "%rsp", "%esp", "%sp", "%spl"
                        ));

INSTANTIATE_TEST_CASE_P(GeneralPurpose1, SearchTest, ::testing::Values(
                          "%r8", "%r8d", "%r8w", "%r8b", "%r9", "%r9d", "%r9w", "%r9b", "%r10", "%r10d", "%r10w", "%r10b", "%r11", "%r11d", "%r11w", "%r11b", "%r12", "%r12d", "%r12w", "%r12b", "%r13", "%r13d", "%r13w", "%r13b", "%r14", "%r14d", "%r14w", "%r14b", "%r15", "%r15d", "%r15w", "%r15b"
                        ));

INSTANTIATE_TEST_CASE_P(Sse0, SearchTest, ::testing::Values(
                          "%xmm0", "%xmm1", "%xmm2", "%xmm3", "%xmm4", "%xmm5","%xmm6", "%xmm7", "%xmm8", "%xmm9", "%xmm10", "%xmm11", "%xmm12", "%xmm13", "%xmm14", "%xmm15",
                          "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5","%ymm6", "%ymm7", "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14", "%ymm15"
                        ));

INSTANTIATE_TEST_CASE_P(Sse1, SearchTest, ::testing::Values(
                          "%mm0", "%mm1", "%mm2", "%mm3", "%mm4", "%mm5","%mm6", "%mm7"
                        ));

INSTANTIATE_TEST_CASE_P(Flags, SearchTest, ::testing::Values(
                          "%of", "%sf", "%zf", "%af", "%cf", "%pf"
                        ));

INSTANTIATE_TEST_CASE_P(Many0, SearchTest, ::testing::Values(
                          "%of %sf %zf %af %cf %pf %xmm0 %eax"
                        ));

INSTANTIATE_TEST_CASE_P(Many1, SearchTest, ::testing::Values(
                          "%of %sf %zf %af %cf %pf %r8"
                        ));

} //namespace stoke

#endif
