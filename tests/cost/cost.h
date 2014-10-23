
#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cost/cost_function.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"

class CostFunctionTest : public ::testing::Test {

  public:
    CostFunctionTest() : fxn_(stoke::CostFunction(&sb_)) {}

  protected:

    void add_testcases(int count) {
      for(int i = 0; i < count; ++i)
        sb_.insert_input(get_state());
    }

    stoke::CpuState get_state() {
      stoke::CpuState cs;
      stoke::StateGen sg(&sb_);
      sg.get(cs);
      return cs;
    }

    stoke::Cfg make_cfg(x64asm::Code c, x64asm::RegSet rs = x64asm::RegSet::universe()) {
      return stoke::Cfg(c, rs, rs);
    }

    stoke::Cost misalign_penalty_;
    stoke::Cost signal_penalty_;
    stoke::Cost nesting_penalty_;

    stoke::Sandbox sb_;
    stoke::CostFunction fxn_;

  private:
    void SetUp() {
     
      misalign_penalty_ = 7;
      signal_penalty_   = 11;
      nesting_penalty_  = 17;

      fxn_.set_penalty(misalign_penalty_, signal_penalty_, nesting_penalty_)
          .set_reduction(stoke::Reduction::SUM)
          .set_performance_term(stoke::PerformanceTerm::NONE);

    }


};

TEST_F(CostFunctionTest, IncludesEflagsWhenSet) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << "cmpq %rax, %rcx" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t, false, false);
  auto cost = fxn_(cfg_r);

  EXPECT_FALSE(cost.first);
  EXPECT_GT(cost.second, 0);
}

TEST_F(CostFunctionTest, ExcludesEflagsWhenNotSet) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << "cmpq %rax, %rcx" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_target(cfg_t, false, false);
  auto cost = fxn_(cfg_r);

  EXPECT_TRUE(cost.first);
  EXPECT_EQ(0, cost.second);
}

TEST_F(CostFunctionTest, ChecksRAX) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << "incq %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target,  x64asm::RegSet::empty() + x64asm::rax);
  auto cfg_r = make_cfg(rewrite, x64asm::RegSet::empty() + x64asm::rax);

  fxn_.set_target(cfg_t, false, false);
  auto cost = fxn_(cfg_r);

  EXPECT_FALSE(cost.first);
  EXPECT_GE(cost.second, 10);
  EXPECT_LE(cost.second, 20);
}


TEST_F(CostFunctionTest, SignalPenalty) {

  // Add 10 testcases
  add_testcases(10);

  // Setup
  std::stringstream ss;
  x64asm::Code target, rewrite;

  // Target
  ss.clear();
  ss << "incq %rax" << std::endl;
  ss << "retq" << std::endl;
  ss >> target;

  // Rewrite
  ss.clear();
  ss << "inqc %rax" << std::endl;
  ss << "movq (%rax), %rdx" << std::endl;
  ss << "retq" << std::endl;
  ss >> rewrite;

  auto cfg_t = make_cfg(target);
  auto cfg_r = make_cfg(rewrite);

  fxn_.set_target(cfg_t, false, false);
  auto cost = fxn_(cfg_r);

  EXPECT_FALSE(cost.first);
  EXPECT_EQ(signal_penalty_*10, cost.second);

}


