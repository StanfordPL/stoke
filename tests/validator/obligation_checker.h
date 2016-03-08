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
#include "src/validator/obligation_checker.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/memory_null.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/top_zero.h"
#include "src/validator/invariants/true.h"

namespace stoke {

class ObligationCheckerBaseTest : public ::testing::Test {

public:

  ObligationCheckerBaseTest() {
    solver = new Z3Solver();
    sandbox = new Sandbox();
    sandbox->set_max_jumps(4096);
    sandbox->set_abi_check(false);
    sg_sandbox = new Sandbox();
    sg_sandbox->set_max_jumps(4096);
    sg_sandbox->set_abi_check(false);
    validator = new ObligationChecker(*solver);
    validator->set_sandbox(sandbox);
    validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
    validator->set_heap_out(true);
    validator->set_stack_out(true);
  }

  ~ObligationCheckerBaseTest() {
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

  void check_ceg(const CpuState& tc, const Cfg& target, const Cfg& rewrite, bool print = false) {
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

    if (print) {
      std::cout << "Counterexample:" << std::endl << tc << std::endl;
      std::cout << "Target state:" << std::endl << target_output << std::endl;
      std::cout << "Rewrite state:" << std::endl << rewrite_output << std::endl;
    }
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
  ObligationChecker* validator;
  Sandbox* sandbox;
  Sandbox* sg_sandbox;
};



TEST_F(ObligationCheckerBaseTest, WcpcpyA) {

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

  // rax = rax'
  std::map<std::pair<x64asm::R, bool>, long> t1;
  std::map<std::pair<x64asm::R, bool>, long> r1;
  t1[std::pair<x64asm::R, bool>(x64asm::rax, false)] = 1;
  r1[std::pair<x64asm::R, bool>(x64asm::rax, false)] = -1;
  EqualityInvariant inv_rax(t1, r1, 0);

  // edi = edi'
  std::map<std::pair<x64asm::R, bool>, long> t2;
  std::map<std::pair<x64asm::R, bool>, long> r2;
  t2[std::pair<x64asm::R, bool>(x64asm::edi, false)] = 1;
  r2[std::pair<x64asm::R, bool>(x64asm::edi, false)] = -1;
  EqualityInvariant inv_rdi(t2, r2, 0);

  // top 32 bits of rdi are 0.
  TopZeroInvariant target_edi_0(x64asm::rdi, false);

  // esi = esi'
  std::map<std::pair<x64asm::R, bool>, long> t3;
  std::map<std::pair<x64asm::R, bool>, long> r3;
  t3[std::pair<x64asm::R, bool>(x64asm::esi, false)] = 1;
  r3[std::pair<x64asm::R, bool>(x64asm::esi, false)] = -1;
  EqualityInvariant inv_rsi(t3, r3, 0);

  // r15 = r15'
  std::map<std::pair<x64asm::R, bool>, long> t4;
  std::map<std::pair<x64asm::R, bool>, long> r4;
  t4[std::pair<x64asm::R, bool>(x64asm::r15, false)] = 1;
  r4[std::pair<x64asm::R, bool>(x64asm::r15, false)] = -1;
  EqualityInvariant inv_r15(t4, r4, 0);

  // no signals
  NoSignalsInvariant no_signals;

  // conjunction
  ConjunctionInvariant inv_all;
  inv_all.add_invariant(&inv_rax);
  inv_all.add_invariant(&inv_rdi);
  inv_all.add_invariant(&inv_rsi);
  inv_all.add_invariant(&inv_r15);
  inv_all.add_invariant(&target_edi_0);
  inv_all.add_invariant(&no_signals);

  StateEqualityInvariant start_same(def_ins);
  StateEqualityInvariant exit_same(live_outs);

  ConjunctionInvariant inv_entry;
  inv_entry.add_invariant(&no_signals);
  inv_entry.add_invariant(&start_same);

  ConjunctionInvariant inv_exit;
  inv_exit.add_invariant(&no_signals);
  inv_exit.add_invariant(&exit_same);

  auto path = CfgPaths::enumerate_paths(target, 1)[0];

  std::vector<Cfg::id_type> top_segment;
  top_segment.push_back(path[0]);
  top_segment.push_back(path[1]);

  std::vector<Cfg::id_type> middle_segment;
  middle_segment.push_back(path[1]);

  std::vector<Cfg::id_type> end_segment;
  end_segment.push_back(path[2]);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_TRUE(validator->check(target, rewrite, top_segment, top_segment, inv_entry, inv_all));
  EXPECT_TRUE(validator->check(target, rewrite, middle_segment, middle_segment, inv_all, inv_all));
  EXPECT_TRUE(validator->check(target, rewrite, end_segment, end_segment, inv_all, inv_exit));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->check(target, rewrite, top_segment, top_segment, inv_entry, inv_all));
  EXPECT_TRUE(validator->check(target, rewrite, middle_segment, middle_segment, inv_all, inv_all));
  EXPECT_TRUE(validator->check(target, rewrite, end_segment, end_segment, inv_all, inv_exit));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}

TEST_F(ObligationCheckerBaseTest, NeedMemoryInToProveMemoryOut) {

  auto single = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "addq $0x1, (%rax)" << std::endl;
  ss << "retq" << std::endl;
  auto target = make_cfg(ss, single, single);
  auto rewrite = target;

  vector<size_t> path;
  path.push_back(1);

  MemoryEqualityInvariant prove_this;
  StateEqualityInvariant assume(single);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, assume, prove_this));

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, assume, prove_this));
}

TEST_F(ObligationCheckerBaseTest, NeedMemoryInToProveMemoryOut2) {

  auto single = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "retq" << std::endl;
  auto target = make_cfg(ss, single, single);
  auto rewrite = target;

  vector<size_t> path;
  path.push_back(1);

  MemoryEqualityInvariant prove_this;
  TrueInvariant duh;

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, duh, prove_this));

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, duh, prove_this));
}

TEST_F(ObligationCheckerBaseTest, NeedMemoryInToProveEquality) {

  auto single = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movq (%rax), %rax" << std::endl;
  ss << "retq" << std::endl;
  auto target = make_cfg(ss, single, single);
  auto rewrite = target;

  vector<size_t> path;
  path.push_back(1);

  StateEqualityInvariant rax_equal(single);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, rax_equal, rax_equal));

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, rax_equal, rax_equal));
}

TEST_F(ObligationCheckerBaseTest, ProveMemoryObligation) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "xorl %edi, %edi" << std::endl;
  sst << "movl %edi, (%rsi)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  auto mem_instr = target.get_code()[2];
  auto mem = mem_instr.get_operand<x64asm::Mem>(mem_instr.mem_index());

  // Assume nothing
  TrueInvariant assume;
  // We wish to prove
  MemoryNullInvariant prove(mem, false, true);

  vector<size_t> path;
  path.push_back(1);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_TRUE(validator->check(target, target, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->check(target, target, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}


TEST_F(ObligationCheckerBaseTest, ProveMemoryObligationFail) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "xorl %edi, %edi" << std::endl;
  sst << "addl %edi, (%rsi)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  auto mem_instr = target.get_code()[2];
  auto mem = mem_instr.get_operand<x64asm::Mem>(mem_instr.mem_index());

  // Assume nothing
  TrueInvariant assume;
  // We wish to prove
  MemoryNullInvariant prove(mem, false, true);

  vector<size_t> path;
  path.push_back(1);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_FALSE(validator->check(target, target, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->check(target, target, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}


TEST_F(ObligationCheckerBaseTest, AssumeMemoryNull) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl (%rsi), %eax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  auto mem_instr = target.get_code()[1];
  auto mem = mem_instr.get_operand<x64asm::Mem>(mem_instr.mem_index());

  // Assume nothing
  MemoryNullInvariant assume(mem, false, true);

  // We wish to prove
  StateEqualityInvariant prove(live_outs);

  vector<size_t> path;
  path.push_back(1);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_TRUE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}

TEST_F(ObligationCheckerBaseTest, AssumeMemoryNullFail) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "movl (%rsi), %eax" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "addl $0x1, %eax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  auto mem_instr = target.get_code()[1];
  auto mem = mem_instr.get_operand<x64asm::Mem>(mem_instr.mem_index());

  // Assume nothing
  MemoryNullInvariant assume(mem, false, true);

  // We wish to prove
  StateEqualityInvariant prove(live_outs);

  vector<size_t> path;
  path.push_back(1);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}

TEST_F(ObligationCheckerBaseTest, AssumeAndProve) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax + x64asm::rdx;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "nopl (%eax)" << std::endl;
  sst << "addl $0x1, %edx" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "xorl %edx, %edx" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  auto mem_instr = target.get_code()[1];
  auto mem = mem_instr.get_operand<x64asm::Mem>(mem_instr.mem_index());

  // Assume nothing
  MemoryNullInvariant assume(mem, false, true);

  // We wish to prove
  MemoryNullInvariant prove(mem, false, true);

  vector<size_t> path;
  path.push_back(1);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_TRUE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}



TEST_F(ObligationCheckerBaseTest, AssumeAndProveFail) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rax;
  auto live_outs = x64asm::RegSet::empty() + x64asm::rax;

  std::stringstream sst;
  sst << ".foo:" << std::endl;
  sst << "addl %eax, (%eax)" << std::endl;
  sst << "retq" << std::endl;
  auto target = make_cfg(sst, def_ins, live_outs);

  std::stringstream ssr;
  ssr << ".foo:" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  auto mem_instr = target.get_code()[1];
  auto mem = mem_instr.get_operand<x64asm::Mem>(mem_instr.mem_index());

  // Assume nothing
  MemoryNullInvariant assume(mem, false, true);

  // We wish to prove
  MemoryNullInvariant prove(mem, false, true);

  vector<size_t> path;
  path.push_back(1);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
  EXPECT_FALSE(validator->check(target, rewrite, path, path, assume, prove));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}


}
