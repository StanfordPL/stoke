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

namespace stoke {

class DdecValidatorLongTest : public DdecValidatorBaseTest {

};


TEST_F(DdecValidatorLongTest, MemcpyCorrect) {

  auto def_ins = x64asm::RegSet::empty() + x64asm::rsi + x64asm::rdi + x64asm::rdx;
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

  validator->set_bound(3);

  // If we set this to flat we get some bad counterexamples until
  // flat gives us ones with proper memory contents
  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorLongTest, DISABLED_WcslenCorrect) {

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
  ssr << ".wcslen:" << std::endl; //BB1
  ssr << "movl %edi, %eax" << std::endl;
  ssr << "movl (%r15, %rax, 1), %ecx" << std::endl;
  ssr << "testl %ecx, %ecx" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "je .L_22" << std::endl;
  ssr << ".L_10:" << std::endl; //BB2
  ssr << "addl $0x4, %eax" << std::endl;
  ssr << "movl (%r15, %rax, 1), %edx" << std::endl;
  ssr << "testl %edx, %edx" << std::endl;
  ssr << "jne .L_10" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "subl %edi, %eax" << std::endl; //BB3
  ssr << "sarq $0x2, %rax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_22:" << std::endl; //BB4
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "addb $0x80, %al" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "andl %ecx, %eax" << std::endl;
  ssr << "nopl %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nopl %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);

  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();
  EXPECT_EQ(0ul, validator->counter_examples_available());

}

TEST_F(DdecValidatorLongTest, DISABLED_WcslenCorrect3) {

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
  //ssr << "subl $0xffffffc, %eax" << std::endl;
  ssr << "addl $0x4, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %edx" << std::endl;
  //ssr << "andq $0xfffffffe, %rdx" << std::endl;
  ssr << "andq $0xffffffff, %rdx" << std::endl;
  ssr << "jne .L_10" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "subl %ecx, %eax" << std::endl;
  ssr << "sarl $0x2, %rax" << std::endl;
  ssr << "retq" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_22:" << std::endl;
  ssr << "nop" << std::endl;
  //ssr << "sall $0xfb, %eax" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_TRUE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorLongTest, DISABLED_WcslenWrong4) {

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
  //ssr << "subl $0xffffffc, %eax" << std::endl;
  ssr << "addl $0x4, %eax" << std::endl;
  ssr << "movl (%r15,%rax,1), %edx" << std::endl;
  ssr << "andq $0xfffffffe, %rdx" << std::endl;
  //ssr << "andq $0xffffffff, %rdx" << std::endl;
  ssr << "jne .L_10" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "subl %ecx, %eax" << std::endl;
  ssr << "sarl $0x2, %rax" << std::endl;
  ssr << "retq" << std::endl;
  ssr << "nop" << std::endl;
  ssr << ".L_22:" << std::endl;
  ssr << "nop" << std::endl;
  //ssr << "sall $0xfb, %eax" << std::endl;
  ssr << "xorl %eax, %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

TEST_F(DdecValidatorLongTest, DISABLED_WcslenWrong5) {

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
  //ssr << "subl $0xffffffc, %eax" << std::endl;
  ssr << "addl $0x4, %eax" << std::endl;
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
  ssr << "sall $0xfb, %eax" << std::endl;
  //ssr << "xorl %eax, %eax" << std::endl;
  ssr << "nop" << std::endl;
  ssr << "retq" << std::endl;
  auto rewrite = make_cfg(ssr, def_ins, live_outs);


  validator->set_alias_strategy(ObligationChecker::AliasStrategy::STRING);
  EXPECT_FALSE(validator->verify(target, rewrite));
  EXPECT_FALSE(validator->has_error()) << validator->error();

}

} //namespace stoke
