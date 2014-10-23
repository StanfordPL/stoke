

#include "src/validator/error.h"
#include "src/validator/validator.h"

TEST(ValidatorUnpcklps, Identity) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklps %xmm1, %xmm1" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklps %xmm1, %xmm1" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  EXPECT_TRUE(v.validate(cfg_t, cfg_r, ceg)) << ceg;
}


TEST(ValidatorUnpcklps, NonIdentity) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklps %xmm1, %xmm1" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklps %xmm2, %xmm2" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  EXPECT_FALSE(v.validate(cfg_t, cfg_r, ceg));

}


TEST(ValidatorUnpcklps, NotIdempotent) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklps %xmm2, %xmm3" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklps %xmm1, %xmm3" << std::endl;
  tmp << "unpcklps %xmm2, %xmm3" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  EXPECT_FALSE(v.validate(cfg_t, cfg_r, ceg)) << ceg;

}




TEST(ValidatorUnpcklps, NotIdempotentWrongArg) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklps %xmm1, %xmm3" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklps %xmm1, %xmm3" << std::endl;
  tmp << "unpcklps %xmm2, %xmm3" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  EXPECT_FALSE(v.validate(cfg_t, cfg_r, ceg)) << ceg;

}



