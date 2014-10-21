

#include "src/validator/error.h"
#include "src/validator/validator.h"

TEST(Validator, SimpleExampleTrue) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "addq $0x1, %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  ASSERT_TRUE(v.validate(cfg_t, cfg_r, tcs, ceg));

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

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  ASSERT_FALSE(v.validate(cfg_t, cfg_r, tcs, ceg));

}


TEST(Validator, UnimplementedFailsGracefully) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "vandpd %xmm0, %xmm1, %xmm2" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  ASSERT_THROW(v.validate(cfg_t, cfg_r, tcs, ceg), validator_error);
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

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  EXPECT_FALSE(v.validate(cfg_t, cfg_r, tcs, ceg));

  EXPECT_EQ(0xc0decafe, ceg.gp[1].get_fixed_quad(0));

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

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  EXPECT_FALSE(v.validate(cfg_t, cfg_r, tcs, ceg));

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

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  EXPECT_TRUE(v.validate(cfg_t, cfg_r, tcs, ceg));

}


TEST(Validator, DISABLED_ZeroTestcasesFailsGracefully) {

  x64asm::Code c;

  std::stringstream tmp;
  tmp << "incq %rax" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;

  ASSERT_THROW(v.validate(cfg_t, cfg_r, tcs, ceg), validator_error);

}
