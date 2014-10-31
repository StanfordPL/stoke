
#ifndef TESTS_VALIDATOR_COMMON_H
#define TESTS_VALIDATOR_COMMON_H

#include "src/sandbox/sandbox.h"

class ValidatorTest : public ::testing::Test {

  public:

    ValidatorTest() {
      cfg_t_ = 0;
      cfg_r_ = 0;
    }

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

    void assert_equiv() {
      if(!reset_state())
        return;

      check_codes(EQUIVALENT);
    }

    void assert_equiv_or_error_or_unsound() {
      if(!reset_state())
        return;
      
      if(!cfg_t_->is_sound() || !cfg_r_->is_sound()) {
        check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE | ERROR);
      } else {
        check_codes(EQUIVALENT | ERROR);
      }
    }

    void assert_ceg(stoke::CpuState* ceg = NULL) {
      if(!reset_state())
        return;

      check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE);
      if(ceg != NULL)
        *ceg = v_.get_counterexample();
    }

    std::string assert_fail() {
      if(!reset_state())
        return "";

      stoke::CpuState ceg;
      std::string message;

      check_codes(ERROR);

      return v_.get_error();
    }


    /* Runs the target and rewrite against the sandbox.
       If they are the same for all inputs, expect them to be equivalent.
       Otherwise, expect validator to come up with a correct counterexample. */
    void assert_sandbox(stoke::Sandbox& sb) {
      if(!reset_state())
        return;

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

      if (sandbox_equiv) {
        check_codes(EQUIVALENT);
      } else {
        check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE);
      }

    }



    /* Set live outs for equivalence check */
    void set_live_outs(x64asm::RegSet rs) {
      live_outs_ = rs;
    }
    /* Set maximum validation time */
    void set_timeout(uint64_t time) {
      v_.set_timeout(time);
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

    enum Outcome {
      OTHER = 0,
      ERROR = 1,
      EQUIVALENT = 2,
      COUNTEREXAMPLE = 4,
      NO_COUNTEREXAMPLE = 8
    };



    /* Run the validator and produce a counterexample */
    bool validate(stoke::CpuState& tc) {

     return v_.validate(*cfg_t_, *cfg_r_, tc);
    } 

    /* Gets a CFG from astd::string stream */
    stoke::Cfg* get_cfg(std::stringstream& ss) {
      x64asm::Code c;
      ss >> c;
      if (ss.fail()) {
        report_error(OTHER, OTHER, true, "Error parsing instruction: " + ss.str());
        return 0;
      }

      return new stoke::Cfg(c, x64asm::RegSet::universe(), live_outs_);
    }

    template <typename T>
    void expect_cpustate_expect(bool& same, T expect, T actual, std::string local, std::string global) {

      if (actual == expect)
        return;

      if(same) {
        report_error(OTHER, OTHER, false, global);

        if(!ceg_shown_) {
          std::cout << "Counterexample:" << std::endl;
          std::cout << v_.get_counterexample() << std::endl;
          ceg_shown_ = true;
        }

        std::cout << "Here are the differences found: " << std::endl;
      }

      std::cout << "   - " << local 
                << " (sandbox: 0x" << std::hex << (uint64_t)expect 
                << ", validator: 0x" << (uint64_t)actual << ")" << std::endl;
    }

    void expect_cpustate_equal_on_liveout(
        stoke::CpuState expect,stoke::CpuState actual,std::string message) {

#define EXPECT_CPU_EQ_INT(A, B, M)  expect_cpustate_expect<uint64_t>(same, A, B, M, message)
#define EXPECT_CPU_EQ_CODE(A, B, M) expect_cpustate_expect<stoke::ErrorCode>(same, A, B, M, message)

      bool same = true;

      EXPECT_CPU_EQ_CODE(expect.code, actual.code, "The error codes differ.");

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
        uint64_t expected_full = expect.gp[i].get_fixed_quad(0);

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
          uint64_t expected_xmm_low = expect.sse[i].get_fixed_quad(0);
          uint64_t expected_xmm_high = expect.sse[i].get_fixed_quad(1);

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
          uint64_t expected_flag = expect.rf.is_set(op.index());

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
    void check_ceg(stoke::CpuState& ceg) {

      // Make sure that a counterexample was intended.
      if(!v_.is_counterexample_valid())
        return;

      ASSERT_EQ(ceg, v_.get_counterexample());

      // Setup a sandbox with testcase
      stoke::Sandbox sb;
      sb.set_abi_check(false)
        .set_max_jumps(2);

      stoke::CpuState s1(ceg);
      sb.insert_input(s1);

      // Run the sandbox and check the results for each.
      // We only want to do this check if the state isn't undefined.
      if(cfg_t_->is_sound()) {

        sb.run(*cfg_t_);
        stoke::CpuState sandbox_target_state = *sb.get_result(0);

        std::stringstream tmp;
        tmp << "Sandbox disagrees with validator on final state of the target." << std::endl;
        expect_cpustate_equal_on_liveout(sandbox_target_state,
                                         v_.get_target_final_state(),
                                         tmp.str());
      }


      if(cfg_r_->is_sound()) {
        sb.run(*cfg_r_);
        stoke::CpuState sandbox_rewrite_state = *sb.get_result(0);

        std::stringstream tmp;
        tmp << "Sandbox disagrees with validator on final state of the rewrite." << std::endl;
        expect_cpustate_equal_on_liveout(sandbox_rewrite_state,
                                         v_.get_rewrite_final_state(),
                                         tmp.str());
      }

    }

    void report_error(int expected, Outcome actual, bool fatal=false, std::string message="") {
      if(!codes_shown_) {
        std::cout << "=== Validator Test Failed ====================" << std::endl;
        if (cfg_t_ != 0) {
          std::cout << "--Target--" << std::endl;
          std::cout << cfg_t_->get_code() << std::endl << std::endl;
        } else {
          std::cout << "Target is null!" << std::endl;
        }

        if (cfg_r_ != 0) {
          std::cout << "--Rewrite--" << std::endl;
          std::cout << cfg_r_->get_code() << std::endl << std::endl;
        } else {
          std::cout << "Rewrite is null!" << std::endl;
        }
        codes_shown_ = true;
      }

      switch(actual) {

        case EQUIVALENT:
          if (expected & ERROR)
            ADD_FAILURE() << "Codes were found equivalent, but expected error";
          else
            ADD_FAILURE() << "Codes were found equivalent, but expected different";
          break;

        case COUNTEREXAMPLE: {

          ADD_FAILURE() << "Unexpected counterexample found." << std::endl;

          std::cout << "Counterexample:" << std::endl;
          std::cout << v_.get_counterexample() << std::endl << std::endl;
          ceg_shown_ = true;

          std::cout << "Target final state:" << std::endl;
          std::cout << v_.get_target_final_state() << std::endl << std::endl;

          std::cout << "Rewrite final state:" << std::endl;
          std::cout << v_.get_rewrite_final_state() << std::endl;

          break;
        }

        case NO_COUNTEREXAMPLE:
          ADD_FAILURE() << "Codes were non-equivalent, but no counterexample generated";
          break;

        case ERROR: {
          size_t line;
          std::string file;
          std::string message = v_.get_error(&line, &file);
          ADD_FAILURE_AT(message.c_str(), line) << "Validator reported unexpected error: "
                                                << std::endl <<  message << std::endl;
          break;
        }

        case OTHER:
          ADD_FAILURE() << message;
          break;

        default:
          FAIL() << "Internal error in validator's testing system.";
      }

      if(fatal)
        FAIL() << "(Encountered errors were fatal)";

    }


    void check_codes(int expected) {
      
      // Run the validator on both codes and check for equivalence
      // Possible outcomes are:
      //  - error
      //  - equivalent
      //  - counterexample
      //  - non-equivalent, no counterexample

      stoke::CpuState ceg;
      Outcome outcome;

      // Check for equivalence
      bool equiv = v_.validate(*cfg_t_, *cfg_r_, ceg);
      // See if an error occurred
      bool error = v_.has_error();
      // See if a counterexample is available
      bool got_ceg = v_.is_counterexample_valid();
      // Later, we'll check if CFG is valid
      bool ceg_is_ok = false;

      // See if it all checks out
      if (equiv) {
        if(error) {
          report_error(expected, OTHER, true,
              "Validator says codes are equivalent, but also returned an error.");
        }
        if(got_ceg) {
          report_error(expected, OTHER, true,
              "Validator says codes are equivalent, but also returned counterexample.");
        }
        outcome = EQUIVALENT;
      } else {
        if(got_ceg) {
          if(error) {
            report_error(expected, OTHER, true,
                "Validator produced counterexample, but also returned an error.");
          } else {
            outcome = COUNTEREXAMPLE;
          }
        } else {
          if(error)
            outcome = ERROR;
          else
            outcome = NO_COUNTEREXAMPLE;
        }
      }


      // See what we need to report.
      // If outcome exceeds expected, we're in trouble
      if((outcome & expected) != outcome) 
        report_error(expected, outcome, false);

      if(got_ceg) {
        check_ceg(ceg);
      }
    }

    /* Called at the start of an "assert" to get the
       target/rewrite the user wants to test, and reset our state for tracking
       what we've reported to the user. */
    bool reset_state() {
      cfg_t_ = 0;
      cfg_r_ = 0;
      cfg_t_ = get_cfg(target_);
      cfg_r_ = get_cfg(rewrite_);

      codes_shown_ = false;
      ceg_shown_ = false;

      return cfg_t_ && cfg_r_;
    }

    /* What information we've shown the user */
    bool codes_shown_;
    bool ceg_shown_;

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
