
#ifndef TESTS_VALIDATOR_COMMON_H
#define TESTS_VALIDATOR_COMMON_H

class ValidatorTest : public ::testing::Test {

  public:

    ~ValidatorTest() {
      if (cfg_t_)
        delete cfg_t_;
      if (cfg_r_)
        delete cfg_r_;
    }

  protected:

    std::stringstream target_;
    std::stringstream rewrite_;

    void assert_equiv() {
      stoke::CpuState ceg;
      bool b = validate(ceg);
      EXPECT_TRUE(b) << "Validation failed.  Counterexample:"
                     << std::endl << ceg << std::endl;
      if(!b)
        check_ceg(ceg);
    }

    void assert_ceg(stoke::CpuState& ceg) {
      bool b = validate(ceg);
      EXPECT_FALSE(b) << "Codes were found equivalent." << std::endl;
      if(!b)
        check_ceg(ceg);
    }

    void assert_ceg() {
      stoke::CpuState ceg;
      assert_ceg(ceg);
    }

    std::string assert_fail() {
      stoke::CpuState ceg;
      EXPECT_THROW(validate(ceg), validator_error);

      try {
        validate(ceg);
      } catch (validator_error e) {
        return e.get_message();
      }
    }

    void set_live_outs(x64asm::RegSet rs) {
      live_outs_ = rs;
    }

  private:

    /* Run the validator and produce a counterexample */
    bool validate(stoke::CpuState& tc) {

      cfg_t_ = get_cfg(target_);
      cfg_r_ = get_cfg(rewrite_);

      return v_.validate(*cfg_t_, *cfg_r_, tc);
    } 

    /* Gets a CFG from a string stream */
    stoke::Cfg* get_cfg(std::stringstream& ss) {
      x64asm::Code c;
      ss >> c;
      return new stoke::Cfg(c, x64asm::RegSet::universe(), live_outs_);
    }

    /* Takes the counterexample, and runs the target and the rewrite on it.
       If you get the same thing, we have a validator bug. */
    void check_ceg(stoke::CpuState& ceg) {

      // Setup a sandbox with testcase
      stoke::Sandbox sb;
      sb.set_abi_check(false)
        .set_max_jumps(2);

      stoke::CpuState s1(ceg);
      sb.insert_input(s1);

      // Run the sandbox
      sb.run(*cfg_t_);
      stoke::CpuState first = *sb.get_result(0);

      sb.run(*cfg_r_);
      stoke::CpuState second = *sb.get_result(0);

      // Check the results
      EXPECT_EQ(stoke::ErrorCode::NORMAL, first.code);
      EXPECT_EQ(stoke::ErrorCode::NORMAL, second.code);

      ASSERT_EQ(1, sb.size());

      EXPECT_NE(first, second) << "Counterexample didn't check out in the sandbox." << std::endl
                               << "The counterexample was: " << ceg << std::endl << std::endl;
    }

    /* Initialize member variables. */
    void SetUp() {

      v_.set_mem_out(false)
        .set_timeout(1000);

      live_outs_ = x64asm::RegSet::universe();

      target_.clear();
      rewrite_.clear();
    }

    /* The validator we're using */
    stoke::Validator v_;
    /* The set of live outputs */
    x64asm::RegSet live_outs_;

    /* The target CFG */
    stoke::Cfg* cfg_t_;
    /* The rewrite CFG */
    stoke::Cfg* cfg_r_;


};

#endif
