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

  EXPECT_EQ(1ul, latency("movq %rax, %rdx"));

  EXPECT_EQ(1ul,   latency("xorb %bl, %ch"));
  EXPECT_EQ(1ul,   latency("xorb %ch, %bl"));
  EXPECT_EQ(999ul, latency("xorb (%rdx), %al"));

  EXPECT_EQ(999ul, latency("xorpd (%rax), %xmm3"));
  EXPECT_EQ(3ul,   latency("xorpd %xmm1, %xmm2"));

}

} //namespace stoke
