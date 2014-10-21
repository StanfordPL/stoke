

#include "src/validator/error.h"
#include "src/validator/validator.h"

TEST(Validator, UnpcklpdIdentity) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklpd %xmm1, %xmm1" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklpd %xmm1, %xmm1" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  EXPECT_TRUE(v.validate(cfg_t, cfg_r, tcs, ceg)) << ceg;
}


TEST(Validator, UnpcklpdNonIdentity) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklpd %xmm1, %xmm1" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklpd %xmm2, %xmm2" << std::endl;
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


TEST(Validator, UnpcklpdIdempotent) {

  x64asm::Code c, d;

  std::stringstream tmp;
  tmp << "unpcklpd %xmm3, %xmm2" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> c;
  tmp.str("");

  tmp << "unpcklpd %xmm3, %xmm2" << std::endl;
  tmp << "unpcklpd %xmm3, %xmm2" << std::endl;
  tmp << "retq" << std::endl;
  tmp >> d;

  stoke::Validator v(false);
  stoke::CpuState tc;
  stoke::CpuState ceg;

  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::universe());
  stoke::Cfg cfg_r(d, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  std::vector<stoke::CpuState> tcs;
  tcs.push_back(tc);

  EXPECT_TRUE(v.validate(cfg_t, cfg_r, tcs, ceg)) << ceg;

}

