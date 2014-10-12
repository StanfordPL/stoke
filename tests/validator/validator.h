

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



