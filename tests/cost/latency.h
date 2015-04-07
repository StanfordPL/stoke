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


#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/cost/latency.h"

namespace stoke {

class LatencyCostTest : public ::testing::Test {

protected:

  LatencyCost fxn_;

  Cost latency(std::string s) {
    x64asm::Code c;

    std::stringstream str;
    str << ".dummy:" << std::endl;
    str << s << std::endl;
    str << "retq" << std::endl;
    str >> c;

    Cfg cfg(c, x64asm::RegSet::empty(), x64asm::RegSet::empty());

    auto res = fxn_(cfg);
    return res.second;
  }


private:
  void SetUp() {
    fxn_.set_nesting_penalty(5);
  }
};

TEST_F(LatencyCostTest, Latencies) {

  const auto mov = x64asm::Instruction(x64asm::MOV_R64_R64).haswell_latency();
  const auto xor1 = x64asm::Instruction(x64asm::XOR_RH_R8).haswell_latency();
  const auto xor2 = x64asm::Instruction(x64asm::XOR_R8_RH).haswell_latency();
  const auto xor3 = x64asm::Instruction(x64asm::XOR_R8_M8).haswell_latency();
  const auto xorpd1 = x64asm::Instruction(x64asm::XORPD_XMM_M128).haswell_latency();
  const auto xorpd2 = x64asm::Instruction(x64asm::XORPD_XMM_XMM).haswell_latency();

  EXPECT_EQ(mov, latency("movq %rax, %rdx"));

  EXPECT_EQ(xor1, latency("xorb %bl, %ch"));
  EXPECT_EQ(xor2, latency("xorb %ch, %bl"));
  EXPECT_EQ(xor3, latency("xorb (%rdx), %al"));

  EXPECT_EQ(xorpd1, latency("xorpd (%rax), %xmm3"));
  EXPECT_EQ(xorpd2,   latency("xorpd %xmm1, %xmm2"));

}

TEST_F(LatencyCostTest, NestingDepth0) {
  x64asm::Code c;

  std::stringstream str;
  str << ".dummy:" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "retq" << std::endl;
  str >> c;

  Cfg cfg(c, x64asm::RegSet::empty(), x64asm::RegSet::empty());

  const auto xorpd = x64asm::Instruction(x64asm::XORPD_XMM_XMM).haswell_latency();

  EXPECT_EQ(2*xorpd, fxn_(cfg).second);
}

TEST_F(LatencyCostTest, NestingDepth1) {
  x64asm::Code c;

  std::stringstream str;
  str << ".dummy1:" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "je .dummy1" << std::endl;
  str << "retq" << std::endl;
  str >> c;

  const auto xorpd = x64asm::Instruction(x64asm::XORPD_XMM_XMM).haswell_latency();

  Cfg cfg(c, x64asm::RegSet::empty(), x64asm::RegSet::empty());

  EXPECT_EQ(5*2*xorpd, fxn_(cfg).second);
}

TEST_F(LatencyCostTest, NestingDepth2) {
  x64asm::Code c;

  std::stringstream str;
  str << ".dummy1:" << std::endl;
  str << ".dummy2:" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "je .dummy2" << std::endl;
  str << "je .dummy1" << std::endl;
  str << "retq" << std::endl;
  str >> c;

  const auto xorpd = x64asm::Instruction(x64asm::XORPD_XMM_XMM).haswell_latency();

  Cfg cfg(c, x64asm::RegSet::empty(), x64asm::RegSet::empty());

  EXPECT_EQ(5*5*2*xorpd, fxn_(cfg).second);
}

TEST_F(LatencyCostTest, NestingDepth3) {
  x64asm::Code c;

  std::stringstream str;
  str << ".dummy1:" << std::endl;
  str << ".dummy2:" << std::endl;
  str << ".dummy3:" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "xorpd %xmm1, %xmm2" << std::endl;
  str << "je .dummy3" << std::endl;
  str << "je .dummy2" << std::endl;
  str << "je .dummy1" << std::endl;
  str << "retq" << std::endl;
  str >> c;

  const auto xorpd = x64asm::Instruction(x64asm::XORPD_XMM_XMM).haswell_latency();

  Cfg cfg(c, x64asm::RegSet::empty(), x64asm::RegSet::empty());

  EXPECT_EQ(5*5*5*2*xorpd, fxn_(cfg).second);
}


} //namespace stoke
