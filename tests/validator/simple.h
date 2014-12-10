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


class ValidatorBaseTest : public ValidatorTest { };

TEST_F(ValidatorBaseTest, SimpleExampleTrue) {

  target_ << "incq %rax" << std::endl;
  target_ << "cmpq $0x10, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "addq $0x1, %rax" << std::endl;
  rewrite_ << "cmpq $0x10, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}


TEST_F(ValidatorBaseTest, EflagsChecked) {

  target_ << "cmpq $0x5, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cmpq $0x10, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}


TEST_F(ValidatorBaseTest, BplChecked) {

  target_ << "movb $0x10, %bpl" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::bpl);
  assert_ceg();

}

TEST_F(ValidatorBaseTest, SilChecked) {

  target_ << "addb $0x10, %sil" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::sil);
  assert_ceg();

}

TEST_F(ValidatorBaseTest, AxValidatedFalse) {

  target_ << "incq %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "addq $0x2, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::ax);
  assert_ceg();

}

TEST_F(ValidatorBaseTest, AxValidatedTrue) {

  target_ << "incq %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "addq $0x1, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::ax);
  assert_equiv();

}


TEST_F(ValidatorBaseTest, SimpleExampleFalse) {

  target_ << "incq %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "addq $0x2, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}


TEST_F(ValidatorBaseTest, ReportsUnsupported) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  tmp >> c;

  auto instr = c[0];

  EXPECT_FALSE(is_supported(instr));

}

TEST_F(ValidatorBaseTest, ReportsSupported) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "movaps %xmm0, %xmm1" << std::endl;
  tmp >> c;

  auto instr = c[0];

  EXPECT_TRUE(is_supported(instr));

}

TEST_F(ValidatorBaseTest, UnimplementedFailsGracefully) {

  target_ << "incq %rax" << std::endl;
  target_ << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_fail();
}


TEST_F(ValidatorBaseTest, YmmSupported) {

  //TODO: fill in something here
  target_ << "retq" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_def_ins(x64asm::RegSet::empty() + x64asm::ymm1);
  set_live_outs(x64asm::RegSet::empty() + x64asm::ymm1);

  assert_equiv();
}

TEST_F(ValidatorBaseTest, UndefinedReadNotEquiv) {

  target_ << "movq %rax, %rcx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq %rax, %rcx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_def_ins(x64asm::RegSet::empty() + x64asm::rcx);
  set_live_outs(x64asm::RegSet::empty() + x64asm::rcx);

  assert_ceg();
}

TEST_F(ValidatorBaseTest, DefinedReadEquiv) {

  target_ << "movq %rax, %rcx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq %rax, %rcx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_def_ins(x64asm::RegSet::empty() + x64asm::rax);
  set_live_outs(x64asm::RegSet::empty() + x64asm::rcx);

  assert_equiv();
}

TEST_F(ValidatorBaseTest, UndefinedLiveinLiveoutFails) {

  target_ << "movq %rax, %rcx" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq %rax, %rcx" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_def_ins(x64asm::RegSet::empty() + x64asm::rax);
  set_live_outs(x64asm::RegSet::empty() + x64asm::rcx + x64asm::rdx);

  assert_ceg();
}

TEST_F(ValidatorBaseTest, SimpleCounterexample) {

  target_ << "movq $0x0, %rax" << std::endl;
  target_ << "cmpb $0xc0, %cl" << std::endl;
  target_ << "setz %al" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $0x0, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_def_ins(x64asm::RegSet::empty() + x64asm::rcx);
  set_live_outs(x64asm::RegSet::empty() + x64asm::rax);

  stoke::CpuState ceg;
  assert_ceg(&ceg);

  EXPECT_EQ((uint64_t)0xc0, 0xff & ceg.gp[1].get_fixed_quad(0));

}

TEST_F(ValidatorBaseTest, EflagsCounterexample) {

  target_ << "movq $0x0, %rax" << std::endl;
  target_ << "setz %al" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $0x0, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  stoke::CpuState ceg;
  assert_ceg(&ceg);

  // Zero flag should be set for counterexample.
  EXPECT_EQ(1, ceg.rf.is_set(6));

}


TEST_F(ValidatorBaseTest, ChecksUpper32bits) {


  target_ << "movq $0x1, %rax" << std::endl;
  target_ << "shlq $0x28, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $0x0, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}


TEST_P(CodeFixtureTest, IdentityValidates) {

  CodeFixture f = GetParam();

  if (!f.get_test_data("validate")) {
    std::cout << "              [ Not testing this fixture. ]" << std::endl;
    return;
  } else {
    std::cout << "              [ " << f.get_name() << "] " << std::endl;
  }

  x64asm::Code code = f.get_code();
  code.push_back(x64asm::Instruction(x64asm::RET));

  x64asm::Code c(code);
  x64asm::Code d(code);

  stoke::Z3Solver s;
  stoke::Validator v(s);
  stoke::CpuState ceg;

  x64asm::RegSet rs = ValidatorBaseTest::get_default_regset();

  stoke::Cfg cfg_t(c, rs, rs);
  stoke::Cfg cfg_r(d, rs, rs);


  EXPECT_TRUE(v.validate(cfg_t, cfg_r, ceg));

}



TEST_F(ValidatorBaseTest, TimeoutWorks) {

  x64asm::Code c, d;

  target_ << "movaps %xmm11, %xmm1"   << std::endl;
  target_ << "mulss  %xmm6, %xmm10"   << std::endl;
  target_ << "mulss  %xmm9, %xmm7"    << std::endl;
  target_ << "mulss  %xmm4, %xmm1"    << std::endl;
  target_ << "retq"                   << std::endl;

  rewrite_ << "movaps %xmm11, %xmm1"   << std::endl;
  rewrite_ << "mulss  %xmm6, %xmm10"   << std::endl;
  rewrite_ << "mulss  %xmm9, %xmm7"    << std::endl;
  rewrite_ << "mulss  %xmm4, %xmm1"    << std::endl;
  rewrite_ << "retq"                   << std::endl;

  std::string message = assert_fail();

  set_timeout(100);
  EXPECT_EQ("solver: z3 gave up.", message);


}

TEST_F(ValidatorBaseTest, TrivialMemorySupport) {

  target_ << "movq %rdx, (%rsp)" << std::endl;
  target_ << "movq (%rsp), %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq %rdx, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorBaseTest, MemmoryLittleEndian) {

  target_ << "movq %rdx, (%rsp)" << std::endl;
  target_ << "movb 0x1(%rsp), %al" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "shrq $0x8, %rdx" << std::endl;
  rewrite_ << "movb %dl, %al" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::rax);

  assert_equiv();

}

