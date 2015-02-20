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

#include "src/ext/x64asm/include/x64asm.h"
#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/stategen/stategen.h"

namespace stoke {

class StateFixtureTest : public ::testing::Test {
private:
  void SetUp() {
    Sandbox sb;
    sb.set_abi_check(true)
    .set_max_jumps(1024);

    x64asm::Code code{{x64asm::LABEL_DEFN, {x64asm::Label{".foo"}}}, {x64asm::RET, {}}};
    x64asm::RegSet rs = x64asm::RegSet::empty();
    Cfg cfg(code, rs, rs);

    StateGen sg(&sb);
    sg.get(state_, cfg);
  }

protected:
  CpuState state_;
};

// Checks whether write_bin and read_bin are inverses
TEST_F(StateFixtureTest, Issue55Bin) {
  std::stringstream ss;
  state_.write_bin(ss);

  CpuState result;
  result.read_bin(ss);

  ASSERT_EQ(state_, result);
}

// Checks whether write_text and read_text are inverses
TEST_F(StateFixtureTest, Issue55Text) {
  std::stringstream ss;
  state_.write_text(ss);

  CpuState result;
  result.read_text(ss);

  ASSERT_EQ(state_, result);
}

} //namespace stoke
