// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

class CfgTransformsTest : public ::testing::Test {};

TEST_F(CfgTransformsTest, Simple) {
    auto code = R"STR(.bar:
movq $0x1, %rax
movq %rax, %rcx
movq (%rax), %rcx
movq $0x1, %rcx
jnz .foo
movq $0x3, %rcx
movq $0x0, %rbx
.foo:
movq $0x0, %rax
movq $0x0, (%rax)
callq .blah
retq
)STR";

  x64asm::Code t;
  std::stringstream ss;
  ss << code;
  ss >> t;
  stoke::Cfg cfg(t, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  stoke::CfgTransforms tforms;
  tforms.remove_redundant(cfg);

  ss.clear();
  ss.str("");
  ss << cfg.get_code();

  ASSERT_EQ(ss.str(), R"STR(.bar:
movq $0x1, %rcx
jnz .foo
movq $0x3, %rcx
movq $0x0, %rbx
.foo:
movq $0x0, %rax
movq $0x0, (%rax)
callq .blah
retq )STR");
}
