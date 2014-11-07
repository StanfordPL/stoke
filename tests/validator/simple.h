
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

  target_ << "incq %rax" << std::endl;
  target_ << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "retq" << std::endl;

  assert_fail();
}


TEST_F(ValidatorBaseTest, YmmUnsupported) {

  target_ << "retq" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::ymm1);

  assert_fail();
}

TEST_F(ValidatorBaseTest, High8BitUnsupported) {

  target_ << "retq" << std::endl;
  rewrite_ << "retq" << std::endl;

  set_live_outs(x64asm::RegSet::empty() + x64asm::ah);

  assert_fail();
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

  stoke::CpuState ceg;
  assert_ceg(&ceg);

  EXPECT_EQ(0xc0, 0xff & ceg.gp[1].get_fixed_quad(0));

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

  EXPECT_EQ("z3 gave up.", message);


}

TEST_F(ValidatorBaseTest, DISABLED_AllTheOpcodesIdentity) {

  // For each supported opcode, construct an instruction with every register
  // argument being a subregister of rax, rdx, xmm0 or xmm1 and every immediate
  // 0.  For now, skip memory.  Then validate it against itself.  Errors and
  // timeouts are okay.  Just not counterexamples.


  // Generate the list of instructions
  std::vector<x64asm::Instruction> instructions;

  for (auto op = (int)x64asm::LABEL_DEFN, ope = (int)x64asm::XSAVEOPT64_M64; op != ope; ++op) {
    x64asm::Instruction i((x64asm::Opcode)op);

    if(!stoke::Validator::is_supported(i))
      continue;

    bool insert = true;

    for(size_t j = 0; j < i.arity(); j++) {
      switch(i.type(j)) {
        case x64asm::Type::IMM_8:
          i.set_operand(j, x64asm::Imm8(0));
          break;
        case x64asm::Type::IMM_16:
          i.set_operand(j, x64asm::Imm16(0));
          break;
        case x64asm::Type::IMM_32:
          i.set_operand(j, x64asm::Imm32(0));
          break;
        case x64asm::Type::IMM_64:
          i.set_operand(j, x64asm::Imm64(0));
          break;

        case x64asm::Type::R_64:
          i.set_operand(j, x64asm::rdx);
          break;
        case x64asm::Type::R_32:
          i.set_operand(j, x64asm::edx);
          break;
        case x64asm::Type::R_16:
          i.set_operand(j, x64asm::cx);
          break;
        case x64asm::Type::RB:
          i.set_operand(j, x64asm::bpl);
          break;
        case x64asm::Type::RL:
          i.set_operand(j, x64asm::dl);
          break;

        case x64asm::Type::XMM:
          i.set_operand(j, x64asm::xmm0);
          break;

        // no support for YMM yet
        case x64asm::Type::YMM:
          i.set_operand(j, x64asm::ymm0);
          insert = false;
          break;

        case x64asm::Type::ZERO:
        case x64asm::Type::ONE:
        case x64asm::Type::THREE:
        case x64asm::Type::AL:
        case x64asm::Type::CL:
        case x64asm::Type::AX:
        case x64asm::Type::DX:
        case x64asm::Type::EAX:
        case x64asm::Type::RAX:
        case x64asm::Type::XMM_0:
        default:
          //we don't handle these
          //memory, labels, ah-dh, mms, sts, etc.
          insert = false;
          continue;
      }
    }

    if(insert)
      instructions.push_back(i);
  }


  // Setup the validator with 50ms timeout. 
  set_timeout(50);

  int instructions_checked = 0;
  // Loop and check
  for(auto it : instructions) {
    target_.clear();
    rewrite_.clear();

    target_ << it << std::endl;
    rewrite_ << it << std::endl;

    assert_equiv_or_error_or_unsound();
    instructions_checked++;

  }

  EXPECT_GT(instructions_checked, 200);


}





