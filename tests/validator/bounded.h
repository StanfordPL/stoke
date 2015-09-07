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
    solver = new Z3Solver();
    sandbox = new Sandbox();
    sandbox->set_max_jumps(4096);
    sandbox->set_abi_check(false);
    sg_sandbox = new Sandbox();
    sg_sandbox->set_max_jumps(4096);
    sg_sandbox->set_abi_check(false);
    validator = new BoundedValidator(*solver);
    validator->set_bound(4);
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

  void check_ceg(const CpuState& tc, const Cfg& target, const Cfg& rewrite) {
    Sandbox sb;
    sb.set_max_jumps(4096);
    sb.set_abi_check(false);
    sb.insert_input(tc);

    sb.insert_function(target);
    sb.set_entrypoint(target.get_code()[0].get_operand<x64asm::Label>(0));

    sb.run();
    auto target_output = *sb.get_output(0);

    sb.insert_function(rewrite);
    sb.set_entrypoint(rewrite.get_code()[0].get_operand<x64asm::Label>(0));

    sb.run();
    auto rewrite_output = *sb.get_output(0);

    EXPECT_EQ(ErrorCode::NORMAL, target_output.code);
    EXPECT_NE(target_output, rewrite_output);
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

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

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

  validator->set_bound(8);
  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

  validator->set_bound(4);
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
  ssr << "cmpl $0x42, %edi" << std::endl;
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

  EXPECT_TRUE(validator->verify(target, rewrite));
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

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

}

TEST_F(BoundedValidatorBaseTest, MemoryOverlapEquiv) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl $0xc0decafe, (%rax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movw $0xcafe, (%rax)" << std::endl;
  ssr << "movw $0xc0de, 0x2(%rax)" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_TRUE(validator->verify(target, rewrite)) << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, MemoryOverlapEquiv2) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl $0xc0decafe, (%rax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movb $0xfe, (%rax)" << std::endl;
  ssr << "movb $0xca, 0x1(%rax)" << std::endl;
  ssr << "movw $0xc0de, 0x2(%rax)" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_TRUE(validator->verify(target, rewrite)) << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, MemoryOverlapBad) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl $0xc0decafe, (%rax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movb $0xfe, -0x1(%rax)" << std::endl;
  ssr << "movb $0xca, 0x0(%rax)" << std::endl;
  ssr << "movw $0xc0de, 0x1(%rax)" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  add_testcases(3, target);

  EXPECT_FALSE(validator->verify(target, rewrite)) << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, LoopMemoryEquiv) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax + x64asm::ecx + x64asm::rdx;
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

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, LoopMemoryWrong) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx;

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

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);
}

TEST_F(BoundedValidatorBaseTest, LoopMemoryWrong2) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax + x64asm::ecx + x64asm::rdx;
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
  ssr << "addl $0x1, %ecx" << std::endl;
  ssr << "movl %ecx, 0x4(%rdx, %rax, 4)" << std::endl;
  ssr << "subl $0x1, %ecx" << std::endl;
  ssr << "incl %eax" << std::endl;
  ssr << "cmpl $0x10, %eax" << std::endl;
  ssr << "jne .foo" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rax, 0x10);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

}

TEST_F(BoundedValidatorBaseTest, Wcslen2ExitsPass) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".wcslen:" << std::endl;
  sst << "movq %rdi, %rsi" << std::endl;
  sst << ".head:" << std::endl;
  sst << "movl (%rdi), %ecx" << std::endl;
  sst << "addq $0x4, %rdi" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "jnz .head" << std::endl;
  sst << "subq %rsi, %rdi" << std::endl;
  sst << "subq $0x4, %rdi" << std::endl;
  sst << "movq %rdi, %rax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".wcslen:" << std::endl;
  ssr << "movq %rdi, %rsi" << std::endl;
  ssr << "movl (%rdi), %ecx" << std::endl;
  ssr << "cmpl $0x0, %ecx" << std::endl;
  ssr << "je .exit" << std::endl;
  ssr << ".head:" << std::endl;
  ssr << "addq $0x4, %rdi" << std::endl;
  ssr << "movl (%rdi), %ecx" << std::endl;
  ssr << "testl %ecx, %ecx" << std::endl;
  ssr << "jnz .head" << std::endl;
  ssr << "subq %rsi, %rdi" << std::endl;
  ssr << "movq %rdi, %rax" << std::endl;
  ssr << "retq" << std::endl;
  ssr << ".exit:" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  for(size_t i = 0; i < 10; ++i) {
    CpuState tc;
    uint64_t base = rand();
    tc.gp[x64asm::rdi].get_fixed_quad(0) = base;
    tc.heap.resize(base, (i+1)*4 + 1);
    for(size_t j = base; j < base + i*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = rand() % 256;
    }
    for(size_t j = base+i*4; j < base+(i+1)*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = 0;
    }
    std::cout << tc << std::endl;
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(BoundedValidatorBaseTest, Wcslen2ExitsFail1) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".wcslen:" << std::endl;
  sst << "movq %rdi, %rsi" << std::endl;
  sst << ".head:" << std::endl;
  sst << "movl (%rdi), %ecx" << std::endl;
  sst << "addq $0x4, %rdi" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "jnz .head" << std::endl;
  sst << "subq %rsi, %rdi" << std::endl;
  // missing sutract statement
  sst << "movq %rdi, %rax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".wcslen:" << std::endl;
  ssr << "movq %rdi, %rsi" << std::endl;
  ssr << "movl (%rdi), %ecx" << std::endl;
  ssr << "cmpl $0x0, %ecx" << std::endl;
  ssr << "je .exit" << std::endl;
  ssr << ".head:" << std::endl;
  ssr << "addq $0x4, %rdi" << std::endl;
  ssr << "movl (%rdi), %ecx" << std::endl;
  ssr << "testl %ecx, %ecx" << std::endl;
  ssr << "jnz .head" << std::endl;
  ssr << "subq %rsi, %rdi" << std::endl;
  ssr << "movq %rdi, %rax" << std::endl;
  ssr << "retq" << std::endl;
  ssr << ".exit:" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  for(size_t i = 0; i < 10; ++i) {
    CpuState tc;
    uint64_t base = rand();
    tc.gp[x64asm::rdi].get_fixed_quad(0) = base;
    tc.heap.resize(base, (i+1)*4 + 1);
    for(size_t j = base; j < base + i*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = rand() % 256;
    }
    for(size_t j = base+i*4; j < base+(i+1)*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = 0;
    }
    std::cout << tc << std::endl;
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto ceg : validator->get_counter_examples())
    check_ceg(ceg, target, rewrite);

}

TEST_F(BoundedValidatorBaseTest, LoopMemoryWrong3) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax + x64asm::ecx + x64asm::rdx;
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
  ssr << "cmpl $0x10, %eax" << std::endl;
  ssr << "je .exit" << std::endl;
  ssr << "addl $0x1, %ecx" << std::endl;
  ssr << "movl %ecx, 0x4(%rdx, %rax, 4)" << std::endl;
  ssr << "subl $0x1, %ecx" << std::endl;
  ssr << "incl %eax" << std::endl;
  ssr << "cmpl $0x10, %eax" << std::endl;
  ssr << "jne .foo" << std::endl;
  ssr << ".exit:" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rax, 0x10);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

}

TEST_F(BoundedValidatorBaseTest, MemcpyCorrect) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::edx;
  auto live_outs = x64asm::RegSet::empty();

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "xorl %ecx, %ecx" << std::endl;
  sst << "testl %edx, %edx" << std::endl;
  sst << "je .exit" << std::endl;
  sst << ".top:" << std::endl;
  sst << "movl (%rdi, %rcx, 4), %eax" << std::endl;
  sst << "movl %eax, (%rsi, %rcx, 4)" << std::endl;
  sst << "incl %ecx" << std::endl;
  sst << "cmpl %ecx, %edx" << std::endl;
  sst << "jne .top" << std::endl;
  sst << ".exit:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movl $0x0, %ecx" << std::endl;
  ssr << "testl %edx, %edx" << std::endl;
  ssr << "je .exit" << std::endl;
  ssr << ".top:" << std::endl;
  ssr << "movl (%rdi, %rcx, 4), %r8d" << std::endl;
  ssr << "addl $0x1, %ecx" << std::endl;
  ssr << "movl %r8d, -0x4(%rsi, %rcx, 4)" << std::endl;
  ssr << "cmpl %ecx, %edx" << std::endl;
  ssr << "jne .top" << std::endl;
  ssr << ".exit:" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rdx, 0xa);
  sg.set_bitmask(x64asm::rsi, 0x3f00);
  sg.set_bitmask(x64asm::rdi, 0x3f00);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, MemcpyVectorizedCorrect) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::edx;
  auto live_outs = x64asm::RegSet::empty();

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "xorl %ecx, %ecx" << std::endl;
  sst << "testl %edx, %edx" << std::endl;
  sst << "je .exit" << std::endl;
  sst << ".top:" << std::endl;
  sst << "movl (%rdi, %rcx, 4), %eax" << std::endl;
  sst << "movl %eax, (%rsi, %rcx, 4)" << std::endl;
  sst << "incl %ecx" << std::endl;
  sst << "cmpl %ecx, %edx" << std::endl;
  sst << "jne .top" << std::endl;
  sst << ".exit:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "xorl %ecx, %ecx" << std::endl;
  ssr << "jmpq .enter" << std::endl;
  ssr << ".double:" << std::endl;
  ssr << "movq (%rdi, %rcx, 4), %rax" << std::endl;
  ssr << "movq %rax, (%rsi, %rcx, 4)" << std::endl;
  ssr << "addl $0x2, %ecx" << std::endl;
  ssr << "subl $0x2, %edx" << std::endl;
  ssr << ".enter:" << std::endl;
  ssr << "cmpl $0x1, %edx" << std::endl;
  ssr << "je .one_more" << std::endl;
  ssr << "cmpl $0x0, %edx" << std::endl;
  ssr << "je .exit" << std::endl;
  ssr << "jmpq .double" << std::endl;
  ssr << ".one_more:" << std::endl;
  ssr << "movl (%rdi, %rcx, 4), %eax" << std::endl;
  ssr << "movl %eax, (%rsi, %rcx, 4)" << std::endl;
  ssr << ".exit:" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rdx, 0xa);
  sg.set_bitmask(x64asm::rsi, 0x3f00);
  sg.set_bitmask(x64asm::rdi, 0x3f00);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, MemcpyMissingBranch) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::edx;
  auto live_outs = x64asm::RegSet::empty();

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "xorl %ecx, %ecx" << std::endl;
  sst << "testl %edx, %edx" << std::endl;
  sst << "je .exit" << std::endl;
  sst << ".top:" << std::endl;
  sst << "movl (%rdi, %rcx, 4), %eax" << std::endl;
  sst << "movl %eax, (%rsi, %rcx, 4)" << std::endl;
  sst << "incl %ecx" << std::endl;
  sst << "cmpl %ecx, %edx" << std::endl;
  sst << "ja .top" << std::endl;
  sst << ".exit:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movl $0x0, %ecx" << std::endl;
  ssr << ".top:" << std::endl;
  ssr << "movl (%rdi, %rcx, 4), %r8d" << std::endl;
  ssr << "addl $0x1, %ecx" << std::endl;
  ssr << "movl %r8d, -0x4(%rsi, %rcx, 4)" << std::endl;
  ssr << "cmpl %ecx, %edx" << std::endl;
  ssr << "ja .top" << std::endl;
  ssr << ".exit:" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rdx, 0x6);
  sg.set_bitmask(x64asm::rsi, 0x3f00);
  sg.set_bitmask(x64asm::rdi, 0x3f00);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for(size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    if(i < 8) {
      tc.gp[x64asm::rdx].get_fixed_quad(0) = 0;
    }
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

}

TEST_F(BoundedValidatorBaseTest, MemoryCounterexample) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl (%rdi), %eax" << std::endl;
  sst << "shll $0x2, %eax" << std::endl;
  sst << "shrl $0x1, %eax" << std::endl;
  sst << "leaq 0x10(%rdi), %rsp" << std::endl;
  sst << "pushq %rax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movl (%rdi), %eax" << std::endl;
  ssr << "shll $0x1, %eax" << std::endl;
  ssr << "leaq 0x10(%rdi), %rsp" << std::endl;
  ssr << "pushq %rax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  add_testcases(4, target);

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  ASSERT_LE(1ul, validator->counter_examples_available());

  auto ceg = validator->get_counter_examples()[0];

  for(auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

  /** rdi is pointing to 0x40000000 */
  uint64_t addr = ceg[x64asm::rdi]+3;
  if(ceg.heap.in_range(addr))
    EXPECT_EQ(0x40, ceg.heap[ceg[x64asm::rdi]+3] & 0x40);
  else if(ceg.stack.in_range(addr))
    EXPECT_EQ(0x40, ceg.stack[ceg[x64asm::rdi]+3] & 0x40);
  else
    FAIL() << "Address " << addr << " not mapped in testcase" << std::endl;

  /** check the counterexample runs */
  Sandbox sb;
  sb.set_max_jumps(4);
  sb.set_abi_check(false);
  sb.insert_function(target);
  sb.insert_input(ceg);
  sb.set_entrypoint(target.get_code()[0].get_operand<x64asm::Label>(0));
  sb.run();

  auto target_output = *sb.get_output(0);

  sb.insert_function(rewrite);
  sb.set_entrypoint(rewrite.get_code()[0].get_operand<x64asm::Label>(0));
  sb.run();

  auto rewrite_output = *sb.get_output(0);

  EXPECT_EQ(ErrorCode::NORMAL, target_output.code);
  EXPECT_EQ(ErrorCode::NORMAL, rewrite_output.code);
  EXPECT_NE(target_output[x64asm::rax], rewrite_output[x64asm::rax]);
}

TEST_F(BoundedValidatorBaseTest, StrlenCorrect) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rdi;

  std::stringstream sst;
  sst << ".strlen:" << std::endl;
  sst << "movzbl (%rdi), %eax" << std::endl;
  sst << "testl %eax, %eax" << std::endl;
  sst << "je .exit" << std::endl;
  sst << "addq $0x1, %rdi" << std::endl;
  sst << "jmpq .strlen" << std::endl;
  sst << ".exit:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".strlen:" << std::endl;
  ssr << "addq $0x1, %rdi" << std::endl;
  ssr << "movzbl -0x1(%rdi), %eax" << std::endl;
  ssr << "cmpl $0x0, %eax" << std::endl;
  ssr << "jne .strlen" << std::endl;
  ssr << "subq $0x1, %rdi" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  for(size_t i = 0; i < 20; ++i) {
    CpuState tc = get_state();
    size_t count = rand() % 10;
    uint64_t start = tc[x64asm::rdi];
    tc.heap.resize(start, count+1);
    for(size_t i = 0; i < count; ++i) {
      tc.heap.set_valid(start + i, true);
      tc.heap[start+i] = rand() % 256;
    }
    tc.heap.set_valid(start+count, true);
    tc.heap[start+count] = 0;

    uint64_t stack_start = tc[x64asm::rsp] - 8;
    tc.stack.resize(stack_start, 16);
    for(size_t i = stack_start; i < stack_start+16; ++i) {
      tc.stack.set_valid(i, true);
      tc.stack[i] = rand() % 256;
    }
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(BoundedValidatorBaseTest, StrlenWrongBranch) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rdi;

  std::stringstream sst;
  sst << ".strlen:" << std::endl;
  sst << "movzbl (%rdi), %eax" << std::endl;
  sst << "testl %eax, %eax" << std::endl;
  sst << "je .exit" << std::endl;
  sst << "addq $0x1, %rdi" << std::endl;
  sst << "jmpq .strlen" << std::endl;
  sst << ".exit:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".strlen:" << std::endl;
  ssr << "addq $0x1, %rdi" << std::endl;
  ssr << "movzbl -0x1(%rdi), %eax" << std::endl;
  ssr << "shrl $0x1, %eax" << std::endl;
  ssr << "jnz .strlen" << std::endl;
  ssr << "subq $0x1, %rdi" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  for(size_t i = 0; i < 20; ++i) {
    CpuState tc = get_state();
    size_t count = rand() % 10;
    uint64_t start = tc[x64asm::rdi];
    tc.heap.resize(start, count+1);
    for(size_t i = 0; i < count; ++i) {
      tc.heap.set_valid(start + i, true);
      tc.heap[start+i] = rand() % 256;
    }
    tc.heap.set_valid(start+count, true);
    tc.heap[start+count] = 0;

    uint64_t stack_start = tc[x64asm::rsp] - 8;
    tc.stack.resize(stack_start, 16);
    for(size_t i = stack_start; i < stack_start+16; ++i) {
      tc.stack.set_valid(i, true);
      tc.stack[i] = rand() % 256;
    }
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  ASSERT_LE(1ul, validator->counter_examples_available());

  for(auto ceg : validator->get_counter_examples()) {
    check_ceg(ceg, target, rewrite);
  }

}


} //namespace stoke
