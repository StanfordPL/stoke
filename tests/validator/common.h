
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
        x64asm::eflags_cf + x64asm::eflags_of +
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



      // Check the counterexample.
      if(!validator_equiv)
        check_ceg(ceg, true);

    }

    std::ostream& assert_equiv() {
      get_target_rewrite();

      // Check if valid
      stoke::CpuState ceg;
      bool equivalent = validate(ceg);

      EXPECT_TRUE(equivalent) << "Validation failed." << std::endl
                     << "Target: " << std::endl
                     << cfg_t_->get_code() << std::endl << std::endl 
                     << "Rewrite: " << std::endl
                     << cfg_r_->get_code() << std::endl << std::endl 
                     << "Counterexample:"
                     << std::endl << ceg << std::endl << std::endl
                     << "Final Target State: " << std::endl
                     << v_.get_target_final_state() << std::endl << std::endl
                     << "Final Rewrite State: " << std::endl
                     << v_.get_rewrite_final_state() << std::endl << std::endl;


      // Check counterexample, if exists
      if(!equivalent) {
        check_ceg(ceg, false);
      }

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
        check_ceg(ceg, true);

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

    /* Gets a CFG from astd::string stream */
    stoke::Cfg* get_cfg(std::stringstream& ss) {
      x64asm::Code c;
      ss >> c;
      return new stoke::Cfg(c, x64asm::RegSet::universe(), live_outs_);
    }

    template <typename T>
    void expect_cpustate_expect(bool& same, T actual, T expect, std::string local, std::string global) {
      if(actual != expect) {
        if (same) {
          std::cout << global << std::endl;
          std::cout << "Here are the differences found: " << std::endl;
          same = false;
        }

        std::cout << "  >  " << local << std::endl;
        EXPECT_EQ(actual, expect) << std::endl;
      }
    }

    void expect_cpustate_equal_on_liveout(
        stoke::CpuState actual,stoke::CpuState expected,std::string message) {

#define EXPECT_CPU_EQ_INT(A, E, M)  expect_cpustate_expect<uint64_t>(same, A, E, M, message)
#define EXPECT_CPU_EQ_CODE(A, E, M) expect_cpustate_expect<stoke::ErrorCode>(same, A, E, M, message)

      bool same = true;

      EXPECT_CPU_EQ_CODE(actual.code, expected.code, "The error codes differ.");

      for(size_t i=0; i < x64asm::r64s.size(); i++)
      {
        int bitwidth;
        auto op = x64asm::r64s[i];

        /* See if we have the 64, 32, 16, or 8 bit register in the set */
        if (live_outs_.contains(op)) {
          bitwidth = 64;
        } else if (live_outs_.contains(x64asm::r32s[i])) {
          bitwidth = 32;
        } else if (live_outs_.contains(x64asm::r16s[i])) {
          bitwidth = 16;
        } else {
          // Need to think about the sub-16 bit situation carefully.
          if (i < 4) {
            // case for al, bl, cl, dl
            if(live_outs_.contains(x64asm::rls[i]))
              bitwidth = 8;
            else
              continue;
          } else if (live_outs_.contains(x64asm::rbs[i-4])) {
              //case for bpl, sil, dil, spl, r8b, r9b, ...
              bitwidth = 8;
          } else {
            // The register is not here, in any form.
            continue;
          }
        } 

        // Check the lower bitwidth bits of cpustates are equal.
        uint64_t actual_full = actual.gp[i].get_fixed_quad(0);
        uint64_t expected_full = actual.gp[i].get_fixed_quad(0);

        uint64_t mask = (-1) >> (64-bitwidth);
        uint64_t actual_masked = actual_full & mask;
        uint64_t expected_masked = expected_full & mask;

        std::stringstream tmp;
        tmp << "Lower " << bitwidth << " of " << op << " differ.";
        EXPECT_CPU_EQ_INT(actual_masked, expected_masked, tmp.str());
      }  

      for(size_t i = 0; i < x64asm::xmms.size(); i++) 
      {
        auto op = x64asm::xmms[i];

        if(live_outs_.contains(op)) {
          uint64_t actual_xmm_low = actual.sse[i].get_fixed_quad(0);
          uint64_t actual_xmm_high = actual.sse[i].get_fixed_quad(1);
          uint64_t expected_xmm_low = expected.sse[i].get_fixed_quad(0);
          uint64_t expected_xmm_high = expected.sse[i].get_fixed_quad(1);

          std::stringstream tmp;
          tmp << "Lower 64 bits of " << op << " differ.";
          EXPECT_CPU_EQ_INT(expected_xmm_low, actual_xmm_low, tmp.str());

          tmp.clear();
          tmp << "Upper 64 bits of " << op << " differ.";
          EXPECT_CPU_EQ_INT(expected_xmm_high, actual_xmm_high, tmp.str());
        }
      }

      for(size_t i = 0; i < x64asm::eflags.size(); i++)
      {
        auto op = x64asm::eflags[i];

        if(live_outs_.contains(op)) {
          uint64_t actual_flag = actual.rf.is_set(op.index());
          uint64_t expected_flag = expected.rf.is_set(op.index());

          std::stringstream tmp;
          tmp << "Value of flag " << op.index() << " differs.";
          EXPECT_CPU_EQ_INT(expected_flag, actual_flag, tmp.str());
        }
      }

#undef EXPECT_CPU_EQ_INT
#undef EXPECT_CPU_EQ_CODE
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
      stoke::CpuState sandbox_target_state = *sb.get_result(0);

      sb.run(*cfg_r_);
      stoke::CpuState sandbox_rewrite_state = *sb.get_result(0);

      // Check the results
      EXPECT_EQ(stoke::ErrorCode::NORMAL, sandbox_target_state.code);
      EXPECT_EQ(stoke::ErrorCode::NORMAL, sandbox_rewrite_state.code);

      ASSERT_EQ(1, sb.size());

      std::stringstream tmp;
      tmp << "Sandbox disagrees with validator on final state of the target.  "
          << "This is almost definitely a validator bug." << std::endl;
      if(print)
        tmp << "The counterexample found was: " << std::endl << ceg << std::endl;
      expect_cpustate_equal_on_liveout(sandbox_target_state,
                                       v_.get_target_final_state(),
                                       tmp.str());

      tmp.clear();
      tmp << "Sandbox disagrees with validator on final state of the rewrite.  "
          << "This is almost definitely a validator bug." << std::endl;
      if(print)
        tmp << "The counterexample found was: " << std::endl << ceg << std::endl;
      expect_cpustate_equal_on_liveout(sandbox_rewrite_state,
                                       v_.get_rewrite_final_state(),
                                       tmp.str());

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
