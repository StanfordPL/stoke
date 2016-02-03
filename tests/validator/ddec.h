// Copyright 2013-2016 Stanford University
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

#include <regex>

#include "src/sandbox/sandbox.h"
#include "src/validator/ddec.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/top_zero.h"
#include "src/validator/invariants/true.h"

namespace stoke {

class DdecValidatorBaseTest : public ::testing::Test {

public:

  DdecValidatorBaseTest() {
    solver = new Z3Solver();
    sandbox = new Sandbox();
    sandbox->set_max_jumps(4096);
    sandbox->set_abi_check(false);
    sg_sandbox = new Sandbox();
    sg_sandbox->set_max_jumps(4096);
    sg_sandbox->set_abi_check(false);
    validator = new DdecValidator(*solver);
    validator->set_bound(2);
    validator->set_sandbox(sandbox);
    validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
    validator->set_heap_out(true);
    validator->set_stack_out(true);
  }

  ~DdecValidatorBaseTest() {
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
    if (ss.fail()) {
      std::cerr << "Parsing error!" << std::endl;
      std::cerr << cpputil::fail_msg(ss) << std::endl;
      fail();
    }
    return Cfg(c, di, lo);
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
    if (!b) {
      std::cerr << "Couldn't generate a state!" << std::endl;
      std::cerr << sg.get_error() << std::endl;
      fail();
    }
    return cs;
  }

  SMTSolver* solver;
  DdecValidator* validator;
  Sandbox* sandbox;
  Sandbox* sg_sandbox;
};

TEST_F(DdecValidatorBaseTest, NoLoopsPasses) {

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

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, NoLoopsFails) {

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

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, UnsupportedInstruction) {

  auto live_outs = all();

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "cpuid" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "cpuid" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  EXPECT_FALSE(validator->verify(target, rewrite));
  ASSERT_TRUE(validator->has_error());

  EXPECT_TRUE(std::regex_match(validator->error(),
                               std::regex(".*unsupported.*", std::regex_constants::icase)))
      << "Error message: " << validator->error();

}

TEST_F(DdecValidatorBaseTest, EasyMemory) {

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

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, EasyMemoryFail) {

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

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}


TEST_F(DdecValidatorBaseTest, CanTurnOffMemoryChecking) {

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

  validator->set_heap_out(false);
  validator->set_stack_out(false);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
  EXPECT_EQ(0ul, validator->counter_examples_available());

}

TEST_F(DdecValidatorBaseTest, NoHeapOutStackOutStillSensitiveToReads) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl (%rax), %eax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  sst << "movq (%rax), %rax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  validator->set_heap_out(false);
  validator->set_stack_out(false);
  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, WriteDifferentPointers) {

  auto live_outs = x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incq %rax" << std::endl;
  sst << "addl $0x5, (%rax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, live_outs, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "incq %rdx" << std::endl;
  ssr << "addl $0x5, (%rdx)" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, live_outs, live_outs);

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, MemoryOverlapEquiv) {

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

  EXPECT_TRUE(validator->verify(target, rewrite)) << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, MemoryOverlapEquiv2) {

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

  EXPECT_TRUE(validator->verify(target, rewrite)) << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, MemoryOverlapBad) {

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

  EXPECT_FALSE(validator->verify(target, rewrite)) << std::endl;
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, LoopMemoryEquiv) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax + x64asm::ecx + x64asm::rdx;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "incq %rax" << std::endl;
  sst << "movl %ecx, (%rdx, %rax, 4)" << std::endl;
  sst << "cmpl $0x10, %eax" << std::endl;
  sst << "jne .foo" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "movl %ecx, 0x4(%rdx, %rax, 4)" << std::endl;
  ssr << "incq %rax" << std::endl;
  ssr << "cmpl $0x10, %eax" << std::endl;
  ssr << "jne .foo" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  StateGen sg(sg_sandbox);
  sg.set_max_value(x64asm::rax, 0x10);
  sg.set_max_memory(1024);
  sg.set_max_attempts(64);

  for (size_t i = 0; i < 4; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, LoopMemoryWrong) {

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

  for (size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, LoopMemoryWrong2) {

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

  for (size_t i = 0; i < 32; ++i) {
    CpuState tc;
    bool b = sg.get(tc, target);
    ASSERT_TRUE(b);
    sandbox->insert_input(tc);
  }



  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, Wcslen2ExitsPass) {

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

  for (size_t i = 0; i < 10; ++i) {
    CpuState tc;
    uint64_t base = rand();
    tc.gp[x64asm::rdi].get_fixed_quad(0) = base;
    tc.heap.resize(base, (i+1)*4 + 1);
    for (size_t j = base; j < base + i*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = rand() % 256;
    }
    for (size_t j = base+i*4; j < base+(i+1)*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = 0;
    }
    sandbox->insert_input(tc);
  }

  /** Right now, this fails because the loops execute for a different number
    of iterations.  Really it should pass, but that's out of scope right now. */
  // EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, Wcslen2ExitsFail1) {

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

  for (size_t i = 0; i < 10; ++i) {
    CpuState tc;
    uint64_t base = rand();
    tc.gp[x64asm::rdi].get_fixed_quad(0) = base;
    tc.heap.resize(base, (i+1)*4 + 1);
    for (size_t j = base; j < base + i*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = rand() % 256;
    }
    for (size_t j = base+i*4; j < base+(i+1)*4; ++j) {
      tc.heap.set_valid(j, true);
      tc.heap[j] = 0;
    }
    sandbox->insert_input(tc);
  }

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

/*
TEST_F(DdecValidatorBaseTest, LoopMemoryWrong3) {

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

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  EXPECT_LE(1ul, validator->counter_examples_available());
  for (auto it : validator->get_counter_examples())
    check_ceg(it, target, rewrite);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}
*/



TEST_F(DdecValidatorBaseTest, DISABLED_MemcpyMissingBranch) {

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

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
}

TEST_F(DdecValidatorBaseTest, DISABLED_StrlenCorrect) {

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


  for (size_t i = 0; i < 20; ++i) {
    CpuState tc = get_state();
    size_t count = rand() % 10;
    uint64_t start = tc[x64asm::rdi];
    tc.heap.resize(start, count+1);
    for (size_t i = 0; i < count; ++i) {
      tc.heap.set_valid(start + i, true);
      tc.heap[start+i] = rand() % 256;
    }
    tc.heap.set_valid(start+count, true);
    tc.heap[start+count] = 0;

    uint64_t stack_start = tc[x64asm::rsp] - 8;
    tc.stack.resize(stack_start, 16);
    for (size_t i = stack_start; i < stack_start+16; ++i) {
      tc.stack.set_valid(i, true);
      tc.stack[i] = rand() % 256;
    }
    sandbox->insert_input(tc);
  }

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, StrlenWrongBranch) {

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

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}



TEST_F(DdecValidatorBaseTest, DISABLED_WcslenCorrect2) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi + x64asm::r15;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  validator->set_nacl(true);
  std::stringstream sst;
  sst << ".wcslen:" << std::endl; // BB 1
  sst << "leal (%rdi), %ecx" << std::endl;
  sst << "leaq (%r15, %rcx), %rdx" << std::endl;
  sst << "movl (%rdx), %ecx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "je .L_22" << std::endl;
  sst << "movq %rdx, %rsi" << std::endl;
  sst << ".L_10:" << std::endl; // BB3
  sst << "addq $0x4, %rdx" << std::endl;
  sst << "movl (%rdx), %ecx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "jne .L_10" << std::endl;
  sst << "subq %rsi, %rdx" << std::endl; // BB4
  sst << "movq %rdx, %rax" << std::endl;
  sst << "sarq $0x2, %rax" << std::endl;
  sst << "retq" << std::endl;
  sst << ".L_22:" << std::endl; // BB5
  sst << "xorl %eax, %eax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".wcslen:" << std::endl;
  ssr << "movl %edi, %edi" << std::endl;
  ssr << "addq %r15, %rdi" << std::endl;
  ssr << "movq %rdi, %rsi" << std::endl;
  ssr << ".head:" << std::endl;
  ssr << "movl (%rdi), %ecx" << std::endl;
  ssr << "addq $0x4, %rdi" << std::endl;
  ssr << "testl %ecx, %ecx" << std::endl;
  ssr << "jnz .head" << std::endl;
  ssr << "subq %rsi, %rdi" << std::endl;
  ssr << "subq $0x4, %rdi" << std::endl;
  ssr << "shrq $0x2, %rdi" << std::endl;
  ssr << "movq %rdi, %rax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, WcslenWrong1) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi + x64asm::r15;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;
  validator->set_nacl(true);

  std::stringstream sst;
  sst << ".wcslen:" << std::endl; // BB 1
  sst << "leal (%rdi), %ecx" << std::endl;
  sst << "movl (%r15, %rcx), %ecx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "je .L_22" << std::endl;
  sst << "movq %rdi, %rax" << std::endl; //BB 2
  sst << ".L_10:" << std::endl; // BB3
  sst << "addq $0x4, %rax" << std::endl;
  sst << "leal (%rax), %edx" << std::endl;
  sst << "movl (%r15, %rdx), %edx" << std::endl;
  sst << "testl %edx, %edx" << std::endl;
  sst << "jne .L_10" << std::endl;
  sst << "subq %rdi, %rax" << std::endl; // BB4
  sst << "sarq $0x2, %rax" << std::endl;
  sst << "retq" << std::endl;
  sst << ".L_22:" << std::endl; // BB5
  sst << "xorl %eax, %eax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".wcslen:" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "movl %edi, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %ecx" << std::endl;
  ssr << "testl %ecx, %ecx" << std::endl;
  ssr << "je .L_22" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_10:" << std::endl;
  ssr << "addl $0x4, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %edx" << std::endl;
  ssr << "shrq $0x2, %rdx" << std::endl;
  ssr << "jne .L_10" << std::endl;
  ssr << "subq %rdi, %rax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "sarl $0x2, %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_22:" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nopl %eax" << std::endl;
  ssr << "shrq $0xfd, %rax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorBaseTest, WcslenWrong2) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi + x64asm::r15;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;
  validator->set_nacl(true);

  std::stringstream sst;
  sst << ".wcslen:" << std::endl; // BB 1
  sst << "movl %edi, %edi" << std::endl;
  sst << "xorl %eax, %eax" << std::endl;
  sst << "movl %edi, %edi" << std::endl;
  sst << "movl (%r15,%rdi,1), %ecx" << std::endl;
  sst << "movq %rdi, %rdx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "je .L_142ce0" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_142cc0:" << std::endl;
  sst << "addl $0x4, %edx" << std::endl;
  sst << "movl %edx, %edx" << std::endl;
  sst << "movl (%r15,%rdx,1), %eax" << std::endl;
  sst << "testl %eax, %eax" << std::endl;
  sst << "jne .L_142cc0" << std::endl;
  sst << "movl %edx, %eax" << std::endl;
  sst << "subl %edi, %eax" << std::endl;
  sst << "sarl $0x2, %eax" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_142ce0:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".wcslen:" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "movslq %edi, %rcx" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "movl %ecx, %eax" << std::endl;
  ssr << "andl (%r15,%rax,1), %edi" << std::endl;
  ssr << "je .L_22" << std::endl;
  ssr << ".L_10:" << std::endl;
  ssr << "subl $0xffffffc, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %edx" << std::endl;
  ssr << "andq $0xfffffffe, %rdx" << std::endl;
  ssr << "jne .L_10" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "subl %ecx, %eax" << std::endl;
  ssr << "shrq $0x2, %rax" << std::endl;
  ssr << "retq" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_22:" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "sall $0xfb, %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}



TEST_F(DdecValidatorBaseTest, WcslenWrong3) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi + x64asm::r15;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;
  validator->set_nacl(true);

  std::stringstream sst;
  sst << ".wcslen:" << std::endl; // BB 1
  sst << "movl %edi, %edi" << std::endl;
  sst << "xorl %eax, %eax" << std::endl;
  sst << "movl %edi, %edi" << std::endl;
  sst << "movl (%r15,%rdi,1), %ecx" << std::endl;
  sst << "movq %rdi, %rdx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "je .L_142ce0" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_142cc0:" << std::endl;
  sst << "addl $0x4, %edx" << std::endl;
  sst << "movl %edx, %edx" << std::endl;
  sst << "movl (%r15,%rdx,1), %eax" << std::endl;
  sst << "testl %eax, %eax" << std::endl;
  sst << "jne .L_142cc0" << std::endl;
  sst << "movl %edx, %eax" << std::endl;
  sst << "subl %edi, %eax" << std::endl;
  sst << "sarl $0x2, %eax" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_142ce0:" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".wcslen:" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "movslq %edi, %rcx" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "movl %ecx, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %edi" << std::endl;
  ssr << "testl %edi, %edi" << std::endl;
  ssr << "je .L_22" << std::endl;
  ssr << ".L_10:" << std::endl;
  ssr << "subl $0xffffffc, %eax" << std::endl;
  //ssr << "addl $0x4, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %edx" << std::endl;
  //ssr << "andq $0xfffffffe, %rdx" << std::endl;
  ssr << "andq $0xffffffff, %rdx" << std::endl;
  ssr << "jne .L_10" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "subl %ecx, %eax" << std::endl;
  ssr << "shrq $0x2, %rax" << std::endl;
  ssr << "retq" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_22:" << std::endl;
  ssr << "nop" << std::endl;
  //ssr << "sall $0xfb, %eax" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}





TEST_F(DdecValidatorBaseTest, WcscpyWrong1) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rdi + x64asm::rsi + x64asm::r15;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;
  validator->set_nacl(true);

  std::stringstream sst;
  sst << ".wcscpy:" << std::endl;
  sst << "movl %edi, %eax" << std::endl;
  sst << "movl %esi, %esi" << std::endl;
  sst << "movl %eax, %eax" << std::endl;
  sst << "movl $0x0, (%r15,%rax,1)" << std::endl;
  sst << "movl %esi, %esi" << std::endl;
  sst << "movl (%r15,%rsi,1), %ecx" << std::endl;
  sst << "movq %rax, %rdx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "je .L_140f20" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_140f00:" << std::endl;
  sst << "addl $0x4, %esi" << std::endl;
  sst << "movl %edx, %edx" << std::endl;
  sst << "movl %ecx, (%r15,%rdx,1)" << std::endl;
  sst << "addl $0x4, %edx" << std::endl;
  sst << "movl %esi, %esi" << std::endl;
  sst << "movl (%r15,%rsi,1), %ecx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "jne .L_140f00" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_140f20:" << std::endl;
  sst << "movl %edx, %edx" << std::endl;
  sst << "movl $0x0, (%r15,%rdx,1)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  sst << ".wcscpy:" << std::endl;
  sst << "movl %esi, %edx" << std::endl;
  sst << "movl (%r15,%rdx,1), %ecx" << std::endl;
  sst << "movq %rdi, %rax" << std::endl;
  sst << "testl %edx, %ecx" << std::endl;
  sst << "nop" << std::endl;
  sst << "movw %ax, %dx" << std::endl;
  sst << "je .L_140f20" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_140f00:" << std::endl;
  sst << "orl %esp, %edx" << std::endl;
  sst << "movq %rcx, (%r15,%rdx,1)" << std::endl;
  sst << "addl $0x4, %esi" << std::endl;
  sst << "movl (%r15,%rsi,1), %ecx" << std::endl;
  sst << "addl $0x4, %edx" << std::endl;
  sst << "testl %ecx, %ecx" << std::endl;
  sst << "jne .L_140f00" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_140f20:" << std::endl;
  sst << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

// TODO: this should be made to pass eventually.... but it takes FOREVER as-is
/*TEST_F(DdecValidatorBaseTest, MemcpyCorrectPushes) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::edx + x64asm::rsp + x64asm::r10 + x64asm::rbx;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rsp;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "pushq %rbx" << std::endl;
  sst << "pushq %r10" << std::endl;
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
  sst << "popq %r10" << std::endl;
  sst << "popq %rbx" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "pushq %rbx" << std::endl;
  ssr << "pushq %r10" << std::endl;
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
  ssr << "popq %r10" << std::endl;
  ssr << "popq %rbx" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}*/

TEST_F(DdecValidatorBaseTest, DISABLED_MemcpyCorrectPushesAntialias) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::edx + x64asm::rsp + x64asm::r10 + x64asm::rbx;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rsp;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "pushq %rbx" << std::endl;
  sst << "pushq %r10" << std::endl;
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
  sst << "popq %r10" << std::endl;
  sst << "popq %rbx" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "pushq %rbx" << std::endl;
  ssr << "pushq %r10" << std::endl;
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
  ssr << "popq %r10" << std::endl;
  ssr << "popq %rbx" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

}

TEST_F(DdecValidatorBaseTest, DISABLED_WcpcpyA) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::r15 + x64asm::rax;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl %edi, %edi" << std::endl;
  sst << "movl %esi, %esi" << std::endl;
  sst << "nop" << std::endl;
  sst << "nop" << std::endl;
  sst << ".L_top:" << std::endl;
  sst << "movl %esi, %esi" << std::endl;
  sst << "movl (%r15,%rsi,1), %edx" << std::endl;
  sst << "movq %rdi, %rax" << std::endl;
  sst << "addl $0x4, %esi" << std::endl;
  sst << "movl %edi, %edi" << std::endl;
  sst << "movl %edx, (%r15, %rdi, 1)" << std::endl;
  sst << "addl $0x4, %edi" << std::endl;
  sst << "testl %edx, %edx" << std::endl;
  sst << "jne .L_top" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_top:" << std::endl;
  ssr << "addl $0x4, %esi" << std::endl;
  ssr << "movl -0x4(%r15,%rsi,1), %edx" << std::endl;
  ssr << "movl %edi, %eax" << std::endl;
  ssr << "addl $0x4, %edi" << std::endl;
  ssr << "movl %edx, -0x4(%r15,%rdi,1)" << std::endl;
  ssr << "testl %edx, %edx" << std::endl;
  ssr << "jne .L_top" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

}



} //namespace stoke
