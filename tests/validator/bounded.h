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

#include "src/sandbox/sandbox.h"
#include "src/validator/bounded.h"

namespace stoke {

class BoundedValidatorBaseTest : public ::testing::Test {

public:

  BoundedValidatorBaseTest() {
    solver = new Cvc4Solver();
    sandbox = new Sandbox();
    sandbox->set_max_jumps(4096);
    sg_sandbox = new Sandbox();
    sg_sandbox->set_max_jumps(4096);
    validator = new BoundedValidator(*solver);
    validator->set_bound(8);
    validator->set_sandbox(sandbox);
  }

  ~BoundedValidatorBaseTest() {
    delete validator;
    delete sandbox;
    delete sg_sandbox;
    delete solver;
  }

protected:

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

  void add_testcases(int count) {
    for (int i = 0; i < count; ++i) {
      sandbox->insert_input(get_state());
    }
  }

  void add_testcases(int count, const Cfg& cfg) {
    for (int i = 0; i < count; ++i) {
      sandbox->insert_input(get_state(cfg));
    }
  }

  CpuState get_state() {
    CpuState cs;
    StateGen sg(sg_sandbox);
    sg.get(cs);
    return cs;
  }

  CpuState get_state(const Cfg& cfg) {
    CpuState cs;
    StateGen sg(sg_sandbox);
    bool b = sg.get(cs, cfg);
    if(!b) {
      std::cerr << "Couldn't generate a state!" << std::endl;
      std::cerr << sg.get_error() << std::endl;
      fail();
    }
    return cs;
  }

  SMTSolver* solver;
  BoundedValidator* validator;
  Sandbox* sandbox;
  Sandbox* sg_sandbox;
};

TEST_F(BoundedValidatorBaseTest, NoLoopsPasses) {

  auto live_outs = all();

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incq %rax" << std::endl;
  sst << "cmpq $0x10, %rax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "addq $0x1, %rax" << std::endl;
  ssr << "cmpq $0x10, %rax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, NoLoopsFails) {

  auto live_outs = all();

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incq %rax" << std::endl;
  sst << "cmpq $0x10, %rax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "addq $0x1, %rax" << std::endl;
  ssr << "cmpq $0x11, %rax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, PopcntEqual) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".popcnt:" << std::endl;
  sst << "xorl %eax, %eax" << std::endl;
  sst << "testq %rdi, %rdi" << std::endl;
  sst << "je .end" << std::endl;
  sst << ".loop:" << std::endl;
  sst << "movl %edi, %edx" << std::endl;
  sst << "andl $0x1, %edx" << std::endl;
  sst << "addl %edx, %eax" << std::endl;
  sst << "shrq $0x1, %rdi" << std::endl;
  sst << "jne .loop" << std::endl;
  sst << ".end:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, all(), live_outs);

  std::stringstream ssr;
  ssr << ".popcnt:" << std::endl;
  ssr << "popcntq %rdi, %rax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, all(), live_outs);

  add_testcases(3, target);

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, PopcntWrong) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".popcnt:" << std::endl;
  sst << "xorl %eax, %eax" << std::endl;
  sst << "testq %rdi, %rdi" << std::endl;
  sst << "je .end" << std::endl;
  sst << ".loop:" << std::endl;
  sst << "movl %edi, %edx" << std::endl;
  sst << "andl $0x1, %edx" << std::endl;
  sst << "addl %edx, %eax" << std::endl;
  sst << "shrq $0x1, %rdi" << std::endl;
  sst << "jne .loop" << std::endl;
  sst << ".end:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, all(), live_outs);

  std::stringstream ssr;
  ssr << ".popcnt:" << std::endl;
  ssr << "cmpl $0x42, %edi" << std::endl;
  ssr << "je .gotcha" << std::endl;
  ssr << "popcntq %rdi, %rax" << std::endl;
  ssr << ".gotcha:" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, all(), live_outs);

  add_testcases(3, target);

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, PopcntWrongBeyondBound) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".popcnt:" << std::endl;
  sst << "xorl %eax, %eax" << std::endl;
  sst << "testq %rdi, %rdi" << std::endl;
  sst << "je .end" << std::endl;
  sst << ".loop:" << std::endl;
  sst << "movl %edi, %edx" << std::endl;
  sst << "andl $0x1, %edx" << std::endl;
  sst << "addl %edx, %eax" << std::endl;
  sst << "shrq $0x1, %rdi" << std::endl;
  sst << "jne .loop" << std::endl;
  sst << ".end:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, all(), live_outs);

  std::stringstream ssr;
  ssr << ".popcnt:" << std::endl;
  ssr << "cmpl $0xf00bad, %edi" << std::endl;
  ssr << "je .gotcha" << std::endl;
  ssr << "popcntq %rdi, %rax" << std::endl;
  ssr << ".gotcha:" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, all(), live_outs);

  add_testcases(3, target);

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, EasyMemory) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incq %rax" << std::endl;
  sst << "addl $0x5, (%rax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "incq %rax" << std::endl;
  ssr << "addl $0x4, (%rax)" << std::endl;
  ssr << "addl $0x1, (%rax)" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_TRUE(validator->verify(target, rewrite)) << "CEGS:" << std::endl << validator->get_counter_examples()[0] << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, EasyMemoryFail) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incq %rax" << std::endl;
  sst << "addl $0x5, (%rax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "incq %rax" << std::endl;
  ssr << "addl $0x4, (%rax)" << std::endl;
  ssr << "addl $0x2, (%rax)" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, LoopMemoryEquiv) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax + x64asm::ecx;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incl %eax" << std::endl;
  sst << "movl %ecx, (%rdx, %rax, 4)" << std::endl;
  sst << "cmpl $0x10, %eax" << std::endl;
  sst << "jne .foo" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movl %ecx, 0x4(%rdx, %rax, 4)" << std::endl;
  ssr << "incl %eax" << std::endl;
  ssr << "cmpl $0x10, %eax" << std::endl;
  ssr << "jne .foo" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rax, 0x10);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 256; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, LoopMemoryWrong) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incl %eax" << std::endl;
  sst << "movl %eax, (%rdx, %rax, 4)" << std::endl;
  sst << "cmpl $0x10, %eax" << std::endl;
  sst << "jne .foo" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movl %eax, (%rdx, %rax, 4)" << std::endl;
  ssr << "incl %eax" << std::endl;
  ssr << "cmpl $0x10, %eax" << std::endl;
  ssr << "jne .foo" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rax, 0x10);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 256; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

} //namespace stoke
