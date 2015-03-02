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
#include "src/cfg/cfg_transforms.h"
#include "src/cost/cost_function.h"
#include "src/ext/cpputil/include/bits/bit_manip.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"

namespace stoke {

class CfgTransformsTest : public ::testing::Test {};

TEST_F(CfgTransformsTest, Simple) {
	// eds -- I commented out the call to callq in this example because 
	// it was causing a new invariant on CfgTransforms (that a cfg satisfies all invariants
	// including that it defines all live outs) to fail

  std::stringstream ss;
  ss << ".bar:" << std::endl;
  ss << "movq $0x1, %rax" << std::endl;
  ss << "movq %rax, %rcx" << std::endl;
  ss << "movq (%r8), %rcx" << std::endl;
  ss << "movq $0x1, %rcx" << std::endl;
  ss << "jnz .foo" << std::endl;
  ss << "movq $0x3, %rcx" << std::endl;
  ss << "movq $0x0, %rbx" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "movq $0x0, %rax" << std::endl;
  ss << "movq $0x0, (%rax)" << std::endl;
  //ss << "callq .blah" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code t;
  ss >> t;

  stoke::Cfg cfg(t, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  stoke::CfgTransforms tforms;
  tforms.remove_redundant(cfg);

  ss.clear();
  ss.str("");
  ss << cfg.get_code();

  std::stringstream expected;
  expected << ".bar:" << std::endl;
  expected << "movq (%r8), %rcx" << std::endl;
  expected << "movq $0x1, %rcx" << std::endl;
  expected << "jnz .foo" << std::endl;
  expected << "movq $0x3, %rcx" << std::endl;
  expected << "movq $0x0, %rbx" << std::endl;
  expected << ".foo:" << std::endl;
  expected << "movq $0x0, %rax" << std::endl;
  expected << "movq $0x0, (%rax)" << std::endl;
  //expected << "callq .blah" << std::endl;
  expected << "retq ";

  ASSERT_EQ(expected.str(), ss.str());
}

} //namespace stoke
