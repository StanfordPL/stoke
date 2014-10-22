

#include "src/validator/error.h"
#include "src/validator/validator.h"
#include "src/validator/error.h"

TEST(Validator, SimpleExampleTrue) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "cmpq $0x10, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "addq $0x1, %rax" << std::endl;
  tmp << "cmpq $0x10, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  ASSERT_TRUE(v.validate(cfg_t, cfg_r, ceg));

}


TEST(Validator, EflagsChecked) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "addq $0x1, %rax" << std::endl;
  tmp << "cmpq $0x10, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  ASSERT_FALSE(v.validate(cfg_t, cfg_r, ceg));

}


TEST(Validator, AxValidatedFalse) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "addq $0x2, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty() + x64asm::ax);
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::empty() + x64asm::ax);

  ASSERT_FALSE(v.validate(cfg_t, cfg_r, ceg));

}

TEST(Validator, AxValidatedTrue) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "addq $0x1, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty() + x64asm::ax);
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::empty() + x64asm::ax);

  ASSERT_TRUE(v.validate(cfg_t, cfg_r, ceg));

}


TEST(Validator, SimpleExampleFalse) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "addq $0x2, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  ASSERT_FALSE(v.validate(cfg_t, cfg_r, ceg));

}


TEST(Validator, UnimplementedFailsGracefully) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());


  ASSERT_THROW(v.validate(cfg_t, cfg_r, ceg), validator_error);
}


TEST(Validator, SimpleCounterexample) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "movq $0x0, %rax" << std::endl;
  tmp << "cmpq $0xc0decafe, %rcx" << std::endl;
  tmp << "sete %al" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "movq $0x0, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());


  EXPECT_FALSE(v.validate(cfg_t, cfg_r, ceg));

  EXPECT_EQ(0xc0decafe, 0xffffffff & ceg.gp[1].get_fixed_quad(0));

}


TEST(Validator, ChecksUpper32bits) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "movq $0x1, %rax" << std::endl;
  tmp << "shlq $0x28, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "movq $0x0, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());


  EXPECT_FALSE(v.validate(cfg_t, cfg_r, ceg));

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



TEST(Validator, TimeoutWorks) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "movaps %xmm11, %xmm1"   << std::endl;
  tmp << "mulss  %xmm6, %xmm10"   << std::endl;
  tmp << "mulss  %xmm9, %xmm7"    << std::endl;
  tmp << "mulss  %xmm4, %xmm1"    << std::endl;
  tmp << "movaps %xmm11, %xmm1"   << std::endl;
  tmp << "mulss  %xmm6, %xmm10"   << std::endl;
  tmp << "mulss  %xmm9, %xmm7"    << std::endl;
  tmp << "mulss  %xmm4, %xmm1"    << std::endl;
  tmp << "retq"                   << std::endl;
  tmp >> c;
  tmp.str("");


  stoke::Validator v;
  v.set_timeout(200);

  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());


  ASSERT_THROW(v.validate(cfg_t, cfg_r, ceg), validator_error);

  std::string message = "";
  try {
    v.validate(cfg_t, cfg_r, ceg);
  } catch (validator_error ve) {
    message = ve.get_message();
  }

  EXPECT_EQ("z3 gave up.", message);


}


