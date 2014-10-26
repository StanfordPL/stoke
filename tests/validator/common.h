
#ifndef TESTS_VALIDATOR_COMMON_H
#define TESTS_VALIDATOR_COMMON_H

#include "src/sandbox/sandbox.h"

class ValidatorTest : public ::testing::Test {

  public:

    ~ValidatorTest() {
      if (cfg_t_)
        delete cfg_t_;
      if (cfg_r_)
        delete cfg_r_;
    }

    /* This is the default set of registers used when working
       with the validator.*/
    static x64asm::RegSet get_default_regset() {

      x64asm::RegSet rs;

      /* Include 64-bit gps, xmms, eflags */
      rs = x64asm::RegSet::empty() + 
        x64asm::eflags_af + x64asm::eflags_cf + x64asm::eflags_of +
        x64asm::eflags_pf + x64asm::eflags_sf + x64asm::eflags_zf;

      for(size_t i = 0; i < x64asm::r64s.size(); ++i) {
        rs += x64asm::r64s[i];
      }

      for(size_t i = 0; i < x64asm::xmms.size(); ++i) {
        rs += x64asm::xmms[i];
      }

      return rs;
    }

  protected:

    std::stringstream target_;
    std::stringstream rewrite_;

    /* Runs the target and rewrite against the sandbox.
       If they are the same for all inputs, expect them to be equivalent.
       Otherwise, expect validator to come up with a correct counterexample. */
    void assert_sandbox(stoke::Sandbox& sb) {
      get_target_rewrite();

      // Run the sandbox on the inputs
      sb.run(*cfg_t_);
      std::vector<stoke::CpuState> target_results;
      for (auto it = sb.result_begin(); it != sb.result_end(); ++it) {
        target_results.push_back(*it);
      }

      sb.run(*cfg_r_);
      std::vector<stoke::CpuState> rewrite_results;
      for (auto it = sb.result_begin(); it != sb.result_end(); ++it) {
        rewrite_results.push_back(*it);
      }

      // Figure out if the target/rewrite should be the same
      ASSERT_EQ(target_results.size(), rewrite_results.size());

      bool sandbox_equiv = true;
      for(size_t i = 0; i < target_results.size(); ++i) {
        if(target_results[i] != rewrite_results[i]) {
          sandbox_equiv = false;
        }
      }

      // Run the validator
      stoke::CpuState ceg;
      bool validator_equiv = validate(ceg);

      EXPECT_EQ(sandbox_equiv, validator_equiv) 
                      << "Target: " << std::endl
                      << cfg_t_->get_code() << std::endl << std::endl 
                      << "Rewrite: " << std::endl
                      << cfg_r_->get_code() << std::endl << std::endl 
                      << std::endl;



      // Check the counterexample.  Report the counterexample
      // only if it's not expected, i.e. the sandbox says the
      // codes are equivalent.
      if(!validator_equiv)
        check_ceg(ceg, sandbox_equiv);

    }

    std::ostream& assert_equiv() {
      get_target_rewrite();

      // Check if valid
      stoke::CpuState ceg;
      bool b = validate(ceg);

      EXPECT_TRUE(b) << "Validation failed." << std::endl
                     << "Target: " << std::endl
                     << cfg_t_->get_code() << std::endl << std::endl 
                     << "Rewrite: " << std::endl
                     << cfg_r_->get_code() << std::endl << std::endl 
                     << " Counterexample:"
                     << std::endl << ceg << std::endl;

      // Check counterexample, if exists
      if(!b)
        check_ceg(ceg, true);

      return std::cout;
    }

    std::ostream& assert_ceg(stoke::CpuState& ceg) {
      get_target_rewrite();

      // Check if valid
      bool b = validate(ceg);

      // Do the assert
      EXPECT_FALSE(b) << "Codes were found equivalent." << std::endl
                      << "Target: " << std::endl
                      << cfg_t_->get_code() << std::endl << std::endl 
                      << "Rewrite: " << std::endl
                      << cfg_r_->get_code() << std::endl << std::endl 
                      << std::endl;

      // Check counterexample, if exists
      if(!b)
        check_ceg(ceg, false);

      return std::cout;
    }

    std::ostream& assert_ceg() {
      stoke::CpuState ceg;
      return assert_ceg(ceg);
    }

    std::string assert_fail() {
      get_target_rewrite();

      stoke::CpuState ceg;
      std::string message;

      EXPECT_NO_THROW({
        try {
          validate(ceg);
          EXPECT_FALSE(true) << "No error occurred.";
        } catch(validator_error e) {
          message = e.get_message(); 
        } 
      });

      return message;
    }

    void set_live_outs(x64asm::RegSet rs) {
      live_outs_ = rs;
    }

    /* Initialize member variables. */
    virtual void SetUp() {

      v_.set_mem_out(false)
        .set_timeout(1000);

      live_outs_ = get_default_regset();

      target_.clear();
      rewrite_.clear();
    }

  private:

    /* Called at the start of an "assert" to get the
       target/rewrite the user wants to test. */
    void get_target_rewrite() {
      cfg_t_ = get_cfg(target_);
      cfg_r_ = get_cfg(rewrite_);
    }

    /* Run the validator and produce a counterexample */
    bool validate(stoke::CpuState& tc) {

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
    void check_ceg(stoke::CpuState& ceg, bool print) {

      // Make sure that a counterexample was intended.
      if(!v_.is_counterexample_valid())
        return;

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
                               << "Almost definitely means a validator bug." << std::endl;

      if (first != second && print) {
        std::cout << "The counterexample is correct." << std::endl;
        std::cout << "Result from running on target: " << std::endl;
        std::cout << first << std::endl << std::endl;
        std::cout << "Result from running on rewrite: " << std::endl;
        std::cout << second << std::endl << std::endl;
      }
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
