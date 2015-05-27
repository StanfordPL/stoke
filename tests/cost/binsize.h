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
#include "src/cost/binsize.h"

namespace stoke {

class BinSizeCostTest : public ::testing::Test {

protected:

  BinSizeCost fxn_;

  std::stringstream code;

  Cost binsize() {
    x64asm::Code c;

    code >> c;

    Cfg cfg(c, x64asm::RegSet::empty(), x64asm::RegSet::empty());

    auto res = fxn_(cfg);
    return res.second;
  }


};

TEST_F(BinSizeCostTest, Issue613) {

  code << ".factorial:" << std::endl;
  code << "movl $0x2, %edx" << std::endl;
  code << "movl $0x1, %eax" << std::endl;
  code << ".L_4005d7:" << std::endl;
  code << "cmpl %edi, %edx" << std::endl;
  code << "jg .L_4005e2" << std::endl;
  code << "imull %edx, %eax" << std::endl;
  code << "incl %edx" << std::endl;
  code << "jmpq .L_4005d7" << std::endl;
  code << ".L_4005e2:" << std::endl;
  code << "retq" << std::endl;
  code << "nop" << std::endl;
  code << "nop" << std::endl;

  EXPECT_EQ((uint64_t)29, binsize());

}

} //namespace stoke
