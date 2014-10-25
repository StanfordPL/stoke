
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


TEST(Validator, ReportsUnsupported) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  tmp >> c;

  auto instr = c[0];

  EXPECT_FALSE(stoke::Validator::is_supported(instr));

}

TEST(Validator, ReportsSupported) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "movaps %xmm0, %xmm1" << std::endl;
  tmp >> c;

  auto instr = c[0];

  EXPECT_TRUE(stoke::Validator::is_supported(instr));

}

TEST_F(ValidatorBaseTest, UnimplementedFailsGracefully) {

  x64asm::Code c;

  target_ << "incq %rax" << std::endl;
  target_ << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_fail();
}


TEST_F(ValidatorBaseTest, SimpleCounterexample) {

  target_ << "movq $0x0, %rax" << std::endl;
  target_ << "cmpq $0xc0decafe, %rcx" << std::endl;
  target_ << "sete %al" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $0x0, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  stoke::CpuState ceg;
  assert_ceg(ceg);

  EXPECT_EQ(0xc0decafe, 0xffffffff & ceg.gp[1].get_fixed_quad(0));

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

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());


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

  EXPECT_EQ("z3 gave up.", message);


}


