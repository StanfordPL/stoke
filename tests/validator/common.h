// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#ifndef TESTS_VALIDATOR_COMMON_H
#define TESTS_VALIDATOR_COMMON_H

#include "src/sandbox/sandbox.h"
#include "src/validator/validator.h"
#include "src/validator/handlers/combo_handler.h"

class ValidatorTest : public ::testing::Test {

public:

  ValidatorTest() : v_(make_validator()) {
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

  /** Check the two codes are equivalent */
  void assert_equiv() {
    if(!reset_state())
      return;

    check_codes(EQUIVALENT);
  }

  /** Check the two codes are equivalent or have an error*/
  void assert_equiv_or_error() {
    if(!reset_state())
      return;

    check_codes(EQUIVALENT | ERROR);
  }

  /** Check if an instruction is supported */
  bool is_supported(x64asm::Instruction& instr) {
    return v_.is_supported(instr);
  }

  /** Check that the validator returns false; check the counterexample
      if given */
  void assert_ceg(stoke::CpuState* ceg = NULL) {
    if(!reset_state())
      return;

    check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE);
    if(ceg != NULL)
      *ceg = v_.get_counterexample();
  }

  /** Check that the validator returns false, but don't look
      at the counterexample or lack thereof */
  void assert_ceg_nocheck(stoke::CpuState* ceg = NULL) {
    if(!reset_state())
      return;

    check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE, false);
    if(ceg != NULL)
      *ceg = v_.get_counterexample();
  }

  /** Check that the validator encounters an error on these two rewrite s */
  std::string assert_fail() {
    if(!reset_state())
      return "";

    stoke::CpuState ceg;
    std::string message;

    check_codes(ERROR);

    return v_.get_error();
  }

  /** Runs the target on the given CpuState in a sandbox, and compares
      with the validator output.  Returns false if the validator failed to
      build a model (which means that passing the test is useless). */
  bool check_circuit(stoke::CpuState cs) {
    if(!reset_state(true))
      return false;
    ceg_shown_ = true;

    // Build a circuit for this Cfg
    stoke::ComboHandler ch;

    std::vector<stoke::SymBool> constraints;

    stoke::SymState state(cs);
    stoke::SymState end("FINAL");

    for(auto it : cfg_t_->get_code())
      ch.build_circuit(it, state);

    for(auto it : state.constraints)
      constraints.push_back(it);
    for(auto it : state.equality_constraints(end))
      constraints.push_back(it);

    // Check that we can generate a state
    bool b = s_.is_sat(constraints);
    EXPECT_TRUE(b) << "Circuit not satisfiable";
    EXPECT_FALSE(s_.has_error()) << "Z3 encountered: " << s_.get_error();
    if(!b || s_.has_error())
      return true;

    if(!s_.has_model())
      return false;

    stoke::CpuState validator_final(s_, "_FINAL");

    // Run the sandbox
    stoke::Sandbox sb;
    sb.set_abi_check(false)
    .set_max_jumps(1)
    .insert_input(cs);

    sb.run(*cfg_t_);

    stoke::CpuState sandbox_final = *sb.get_result(0);

    // Check sandbox and state equivalent
    std::stringstream ss;
    ss << "Counterexample: " << std::endl << cs << std::endl;
    ss << "Sandbox and validator disagree on liveout" << std::endl;
    expect_cpustate_equal_on_liveout(sandbox_final, validator_final, ss.str());

  }

  /** Runs the target and rewrite against the sandbox.
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

  /** Set live outs for equivalence check */
  void set_live_outs(x64asm::RegSet rs) {
    live_outs_ = rs;
  }
  /** Set def ins for equivalence check */
  void set_def_ins(x64asm::RegSet rs) {
    def_ins_ = rs;
  }

  /** Set maximum validation time */
  void set_timeout(uint64_t time) {
    s_.set_timeout(time);
  }

  /** Initialize member variables. */
  virtual void SetUp() {

    set_timeout(1000);

    live_outs_ = get_default_regset();
    def_ins_  = get_default_regset();

    target_.clear();
    rewrite_.clear();
  }

private:

  enum Outcome {
    ERROR = 1,
    EQUIVALENT = 2,
    COUNTEREXAMPLE = 4,
    NO_COUNTEREXAMPLE = 8,
    OTHER = 16
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
    if (c.size() == 0) {
      report_error(OTHER, OTHER, true, "Target or rewrite was empty.");
      return 0;
    }


    return new stoke::Cfg(c, def_ins_, live_outs_);
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

    for(auto it = live_outs_.gp_begin(); it != live_outs_.gp_end(); ++it) {
      uint16_t bitwidth = (*it).size();

      // Check the lower bitwidth bits of cpustates are equal.
      uint64_t actual_full = actual.gp[*it].get_fixed_quad(0);
      uint64_t expected_full = expect.gp[*it].get_fixed_quad(0);

      uint64_t mask = (1 << (64-bitwidth)) - 1;
      uint64_t actual_masked = actual_full & mask;
      uint64_t expected_masked = expected_full & mask;

      std::stringstream tmp;
      tmp << "Lower " << bitwidth << " of " << *it << " differ.";
      EXPECT_CPU_EQ_INT(expected_masked, actual_masked, tmp.str());
    }

    for(auto it = live_outs_.sse_begin(); it != live_outs_.sse_end(); ++it) {
      uint16_t bitwidth = (*it).size();
      uint16_t quads = bitwidth/64;

      for(size_t i = 0; i < quads; ++i) {
        std::stringstream tmp;
        tmp << "Bits " << (i*64) <<  ".." << ((i+1)*64) << " of " << *it << " differ.";
        uint64_t actual_v = actual.sse[*it].get_fixed_quad(i);
        uint64_t expect_v = expect.sse[*it].get_fixed_quad(i);
        EXPECT_CPU_EQ_INT(expect_v, actual_v, tmp.str());
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
    if(!v_.is_counterexample_valid()) {
      return;
    }

    ASSERT_EQ(ceg, v_.get_counterexample());

    // Setup a sandbox with testcase
    stoke::Sandbox sb;
    sb.set_abi_check(false)
    .set_max_jumps(2);


    stoke::CpuState s1(v_.get_counterexample());
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
    } else {
    }


    if(cfg_r_->is_sound()) {
      sb.run(*cfg_r_);
      stoke::CpuState sandbox_rewrite_state = *sb.get_result(0);

      std::stringstream tmp;
      tmp << "Sandbox disagrees with validator on final state of the rewrite." << std::endl;
      expect_cpustate_equal_on_liveout(sandbox_rewrite_state,
                                       v_.get_rewrite_final_state(),
                                       tmp.str());
    } else {
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

    std::stringstream expected_string;
    expected_string << "; expected one of: ";
    if (expected & ERROR)
      expected_string << "error  ";
    if (expected & EQUIVALENT)
      expected_string << "equivalent  ";
    if (expected & COUNTEREXAMPLE)
      expected_string << "counterexample  ";
    if (expected & NO_COUNTEREXAMPLE)
      expected_string << "nonequivalent  ";


    switch(actual) {

    case EQUIVALENT:
      ADD_FAILURE() << "Codes found equivalent" << expected_string.str() << std::endl;
      break;

    case COUNTEREXAMPLE: {

      ADD_FAILURE() << "Unexpected counterexample found" << expected_string.str() << std::endl;

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
      ADD_FAILURE() << "Codes were non-equivalent without counterexample"
                    << expected_string.str() << std::endl;
      break;

    case ERROR: {
      size_t line = 0;
      std::string file;
      std::string message = v_.get_error(&line, &file);
      ADD_FAILURE_AT(message.c_str(), line) << "Validator reported unexpected error"
                                            << expected_string.str()
                                            << std::endl << "Message: " << message << std::endl;
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


  void check_codes(int expected, bool do_check_ceg = true) {

    // Run the validator on both codes and check for equivalence
    // Possible outcomes are:
    //  - error
    //  - equivalent
    //  - counterexample
    //  - non-equivalent, no counterexample

    stoke::CpuState ceg;
    Outcome outcome = OTHER;

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

    if(got_ceg && do_check_ceg) {
      check_ceg(ceg);
    }
  }

  /* Called at the start of an "assert" to get the
     target/rewrite the user wants to test, and reset our state for tracking
     what we've reported to the user. */
  bool reset_state(bool target_only = false) {
    if(cfg_t_) {
      delete cfg_t_;
      cfg_t_ = 0;
    }

    if(cfg_r_) {
      delete cfg_r_;
      cfg_r_ = 0;
    }

    codes_shown_ = false;
    ceg_shown_ = false;


    // Build the Cfgs from the given instructions
    cfg_t_ = get_cfg(target_);

    if(target_only) {
      return cfg_t_;
    }

    cfg_r_ = get_cfg(rewrite_);
    return cfg_t_ && cfg_r_;
  }

  /* Used to build a validator */
  stoke::Validator make_validator() {
    stoke::Validator v(s_);
    v.set_mem_out(false);
    return v;
  }

  /* What information we've shown the user */
  bool codes_shown_;
  bool ceg_shown_;

  /* The validator we're using */
  stoke::Validator v_;
  /* The solver we're using */
  stoke::Z3Solver s_;

  /* The set of live outputs for the next test */
  x64asm::RegSet live_outs_;
  /* The set of defined inputs for the next test */
  x64asm::RegSet def_ins_;

  /* The target CFG */
  stoke::Cfg* cfg_t_;
  /* The rewrite CFG */
  stoke::Cfg* cfg_r_;


};

#endif
