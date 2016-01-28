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

namespace stoke {

TEST_F(BoundedValidatorBaseTest, MemcpyCorrectPushes) {

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

  /* //takes way too long
  validator->set_alias_strategy(BoundedValidator::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
  */

}

TEST_F(BoundedValidatorBaseTest, MemcpyCorrectPushesAntialias) {

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

  validator->set_alias_strategy(BoundedValidator::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

  validator->set_alias_strategy(BoundedValidator::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

/*  // TODO: this can be a test for the obligation checker
TEST_F(BoundedValidatorBaseTest, WcpcpyA) {

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

  validator->set_alias_strategy(BoundedValidator::AliasStrategy::STRING_NO_ALIAS);
  EXPECT_TRUE(validator->verify_pair(target, rewrite, top_segment, top_segment, inv_entry, inv_all));
  EXPECT_TRUE(validator->verify_pair(target, rewrite, middle_segment, middle_segment, inv_all, inv_all));
  EXPECT_TRUE(validator->verify_pair(target, rewrite, end_segment, end_segment, inv_all, inv_exit));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }

  validator->set_alias_strategy(BoundedValidator::AliasStrategy::FLAT);
  EXPECT_TRUE(validator->verify_pair(target, rewrite, top_segment, top_segment, inv_entry, inv_all));
  EXPECT_TRUE(validator->verify_pair(target, rewrite, middle_segment, middle_segment, inv_all, inv_all));
  EXPECT_TRUE(validator->verify_pair(target, rewrite, end_segment, end_segment, inv_all, inv_exit));

  for (auto it : validator->get_counter_examples()) {
    std::cout << it << std::endl;
  }
}
*/

} //namespace stoke
