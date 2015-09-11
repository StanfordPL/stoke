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

#include "src/validator/alias_miner.h"

namespace stoke {

class AliasMinerTest : public ::testing::Test {

public:

  AliasMinerTest() {
    sandbox = new Sandbox();
    sandbox->set_max_jumps(32);
    sg = new StateGen(sandbox);
    sg->set_max_attempts(32);
  }
  ~AliasMinerTest() {
    delete sg;
    delete sandbox;
  }

protected:

  AliasMiner am;

  static x64asm::RegSet all() {
    auto rs = x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms();
    rs = rs + x64asm::eflags_cf + x64asm::eflags_zf + x64asm::eflags_pf + x64asm::eflags_of + x64asm::eflags_sf;
    return rs;
  }

  void fail() {
    FAIL();
  }

  Cfg make_cfg(std::stringstream& ss, x64asm::RegSet di = all(), x64asm::RegSet lo = all()) {
    x64asm::Code c;
    ss >> c;
    if(ss.fail()) {
      std::cerr << "Parsing error!" << std::endl;
      std::cerr << cpputil::fail_msg(ss) << std::endl;
      fail();
    }
    return Cfg(c, di, lo);
  }

  CpuState get_state() {
    CpuState cs;
    sg->get(cs);
    return cs;
  }

  CpuState get_state(const Cfg& cfg) {
    CpuState cs;
    bool b = sg->get(cs, cfg);
    if(!b) {
      std::cerr << "StateGen: " << sg->get_error() << std::endl;
      fail();
    }
    return cs;
  }

  Sandbox* sandbox;
  StateGen* sg;

};

TEST_F(AliasMinerTest, Simple) {

  auto live_outs = all();

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movq $0xc0decafe, %rdx" << std::endl;
  ss << "movq (%rdx), %rax" << std::endl;
  ss << "retq" << std::endl;
  auto target = make_cfg(ss, live_outs, live_outs);

  auto accesses = am.mine_concrete_data(target, get_state(target));

  /*
  for(auto it : accesses) {
    std::cout << std::hex << it.line << "  " << it.address << "  " << it.width << "  " << it.write << std::endl;
  }
  */

  ASSERT_EQ(1ul, accesses.size());
  auto access = accesses[0];
  EXPECT_EQ(2ul, access.line);
  EXPECT_EQ(0xc0decafe, access.address);
  EXPECT_EQ(64ul, access.width);
  EXPECT_EQ(0ul, access.write);
}

TEST_F(AliasMinerTest, Loop) {

  auto live_outs = all();

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movl $0x10, %ecx" << std::endl;
  ss << "movq $0xc0decafe, %rdx" << std::endl;
  ss << "movl $0x0, %edi" << std::endl;
  ss << ".loop:" << std::endl;
  ss << "movq (%rdx, %rdi, 8), %rax" << std::endl;
  ss << "addl $0x1, %edi" << std::endl;
  ss << "subl $0x1, %ecx" << std::endl;
  ss << "jnz .loop" << std::endl;
  ss << "retq" << std::endl;
  auto target = make_cfg(ss, live_outs, live_outs);

  auto accesses = am.mine_concrete_data(target, get_state(target));

  /*
  for(auto it : accesses) {
    std::cout << std::hex << it.line << "  " << it.address << "  " << it.width << "  " << it.write << std::endl;
  }
  */

  EXPECT_EQ(0x10ul, accesses.size());

  for(size_t i = 0; i < accesses.size(); ++i) {
    auto& access = accesses[i];
    EXPECT_EQ(5ul, access.line);
    EXPECT_EQ(0xc0decafe + 8*i, access.address);
    EXPECT_EQ(64ul, access.width);
    EXPECT_EQ(0ul, access.write);
  }
}


}
