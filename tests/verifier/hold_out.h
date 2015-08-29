

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/stategen/stategen.h"
#include "src/verifier/hold_out.h"

namespace stoke {

class HoldOutVerifierTest : public ::testing::Test {

protected:

  void add_testcases(int count) {
    for (int i = 0; i < count; ++i) {
      sb_.insert_input(get_state());
    }
  }

  CpuState get_state() {
    CpuState cs;
    StateGen sg(&sb_);
    sg.get(cs);
    return cs;
  }

  Cfg make_cfg(x64asm::Code c, x64asm::RegSet rs = x64asm::RegSet::universe()) {
    return Cfg(c, x64asm::RegSet::universe(), rs);
  }


  HoldOutVerifier hov;
  Sandbox sb_;

private:
  void SetUp() {
    hov.set_sandbox(&sb_);
  }


};


TEST_F(HoldOutVerifierTest, TrivialPass) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "addl $0x1, %eax" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code target;
  ss >> target;
  ASSERT_FALSE(ss.fail());

  std::stringstream ss2;
  ss2 << ".foo:" << std::endl;
  ss2 << "incl %eax" << std::endl;
  ss2 << "retq" << std::endl;

  x64asm::Code rewrite;
  ss2 >> rewrite;
  ASSERT_FALSE(ss2.fail());

  auto live_out = x64asm::RegSet::empty() + x64asm::rax;
  auto cfg_t = make_cfg(target, live_out);
  auto cfg_r = make_cfg(rewrite, live_out);

  add_testcases(4);

  EXPECT_TRUE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;
}

TEST_F(HoldOutVerifierTest, TrivialFail) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "addl $0x1, %eax" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code target;
  ss >> target;
  ASSERT_FALSE(ss.fail());

  std::stringstream ss2;
  ss2 << ".foo:" << std::endl;
  ss2 << "decl %eax" << std::endl;
  ss2 << "retq" << std::endl;

  x64asm::Code rewrite;
  ss2 >> rewrite;
  ASSERT_FALSE(ss2.fail());

  auto live_out = x64asm::RegSet::empty() + x64asm::rax;
  auto cfg_t = make_cfg(target, live_out);
  auto cfg_r = make_cfg(rewrite, live_out);

  add_testcases(4);

  EXPECT_FALSE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;
}

TEST_F(HoldOutVerifierTest, TrivialPassWithSse) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "addl $0x1, %eax" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code target;
  ss >> target;
  ASSERT_FALSE(ss.fail());

  std::stringstream ss2;
  ss2 << ".foo:" << std::endl;
  ss2 << "incl %eax" << std::endl;
  ss2 << "retq" << std::endl;

  x64asm::Code rewrite;
  ss2 >> rewrite;
  ASSERT_FALSE(ss2.fail());

  auto live_out = x64asm::RegSet::all_gps() | x64asm::RegSet::all_xmms();
  auto cfg_t = make_cfg(target, live_out);
  auto cfg_r = make_cfg(rewrite, live_out);

  add_testcases(4);

  EXPECT_TRUE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;

  live_out = x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms();
  cfg_t = make_cfg(target, live_out);
  cfg_r = make_cfg(rewrite, live_out);

  EXPECT_TRUE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;
}

TEST_F(HoldOutVerifierTest, TrivialPassMoveXmm) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movupd %xmm1, %xmm2" << std::endl;
  ss << "movupd %xmm2, %xmm3" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code target;
  ss >> target;
  ASSERT_FALSE(ss.fail());

  std::stringstream ss2;
  ss2 << ".foo:" << std::endl;
  ss2 << "movupd %xmm1, %xmm3" << std::endl;
  ss2 << "movupd %xmm3, %xmm2" << std::endl;
  ss2 << "retq" << std::endl;

  x64asm::Code rewrite;
  ss2 >> rewrite;
  ASSERT_FALSE(ss2.fail());

  auto live_out = x64asm::RegSet::all_gps() | x64asm::RegSet::all_xmms();
  auto cfg_t = make_cfg(target, live_out);
  auto cfg_r = make_cfg(rewrite, live_out);

  add_testcases(4);

  EXPECT_TRUE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;

  live_out = x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms();
  cfg_t = make_cfg(target, live_out);
  cfg_r = make_cfg(rewrite, live_out);

  EXPECT_TRUE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;
}

TEST_F(HoldOutVerifierTest, TrivialFailMoveXmm) {

  std::stringstream ss;
  ss << ".foo:" << std::endl;
  ss << "movupd %xmm1, %xmm2" << std::endl;
  ss << "movupd %xmm2, %xmm3" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code target;
  ss >> target;
  ASSERT_FALSE(ss.fail());

  std::stringstream ss2;
  ss2 << ".foo:" << std::endl;
  ss2 << "movupd %xmm3, %xmm2" << std::endl;
  ss2 << "retq" << std::endl;

  x64asm::Code rewrite;
  ss2 >> rewrite;
  ASSERT_FALSE(ss2.fail());

  auto live_out = x64asm::RegSet::all_gps() | x64asm::RegSet::all_xmms();
  auto cfg_t = make_cfg(target, live_out);
  auto cfg_r = make_cfg(rewrite, live_out);

  add_testcases(1);

  EXPECT_FALSE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;

  live_out = x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms();
  cfg_t = make_cfg(target, live_out);
  cfg_r = make_cfg(rewrite, live_out);

  EXPECT_FALSE(hov.verify(cfg_t, cfg_r));
  EXPECT_FALSE(hov.has_error()) << hov.error() << std::endl;
}
}
