// Copyright 2013-2016 Stanford University
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

#include "src/ext/cpputil/include/io/fail.h"

#include "src/sandbox/sandbox.h"
#include "src/validator/bounded.h"
#include "src/validator/handlers/combo_handler.h"
#include "src/symstate/simplify.h"
#include "tests/solver/test_solver.h"
#include "tests/fuzzer.h"

namespace stoke {

class StraightLineValidatorTest : public ::testing::Test {

public:

  StraightLineValidatorTest() : v_(make_validator()) {
    cfg_t_ = 0;
    cfg_r_ = 0;
  }

  ~StraightLineValidatorTest() {
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

    for (size_t i = 0; i < x64asm::r64s.size(); ++i) {
      rs += x64asm::r64s[i];
    }

    for (size_t i = 0; i < x64asm::xmms.size(); ++i) {
      rs += x64asm::xmms[i];
    }

    return rs;
  }

protected:

  std::stringstream target_;
  std::stringstream rewrite_;

  /** Check the two codes are equivalent */
  void assert_equiv() {
    if (!reset_state())
      return;

    check_codes(EQUIVALENT);
  }

  /** Check the two codes are equivalent or have an error*/
  void assert_equiv_or_error() {
    if (!reset_state())
      return;

    check_codes(EQUIVALENT | ERROR);
  }

  /** Check if an instruction is supported */
  bool is_supported(x64asm::Instruction& instr) {
    return v_.is_supported(instr);
  }

  /** Check that the validator returns false; check the counterexample
      if given */
  void assert_ceg(CpuState* ceg = NULL) {
    if (!reset_state())
      return;

    check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE);
    if (ceg != NULL) {
      *ceg = v_.get_counter_examples()[0];

      // write out the counter-example, and then parse it back in
      std::stringstream ss;
      ss << (*ceg);
      ASSERT_FALSE(ss.fail()) << "Failed to write the counterexample.";
      std::string copy = ss.str();
      CpuState state;
      ss >> state;
      ASSERT_FALSE(ss.fail()) << "Failed to parse the counterexample:" << std::endl << copy << std::endl;
      EXPECT_EQ(*ceg, state) << "Counterexample is not identical after parsing";
    }
  }

  /** Check that the validator returns false, but don't look
      at the counterexample or lack thereof */
  void assert_ceg_nocheck(CpuState* ceg = NULL) {
    if (!reset_state())
      return;

    check_codes(COUNTEREXAMPLE | NO_COUNTEREXAMPLE, false);
    if (ceg != NULL)
      *ceg = v_.get_counter_examples()[0];
  }

  /** Check that the validator encounters an error on these two rewrite s */
  std::string assert_fail() {
    if (!reset_state())
      return "";

    CpuState ceg;
    std::string message;

    check_codes(ERROR);

    return v_.get_error();
  }

  /** Runs the target on the given CpuState in a sandbox, and compares
      with the validator output. */
  bool check_circuit(CpuState cs) {
    if (!reset_state(true))
      return false;
    ceg_shown_ = true;

    auto instr = cfg_t_->get_code()[1];
    auto opcode = instr.get_opcode();

    // Run the sandbox
    Sandbox sb;
    sb.set_abi_check(false)
    .set_max_jumps(1)
    .insert_input(cs);

    sb.run(*cfg_t_);
    CpuState sandbox_final = *sb.get_result(0);

    if (sandbox_final.code != stoke::ErrorCode::NORMAL) {
      fuzz_print() << "Sandbox did not finish normally: " << (int)sandbox_final.code << std::endl;
      return false;
    }

    // build circuits
    ComboHandler ch;
    if (ch.get_support(instr) == Handler::SupportLevel::NONE)
      return false;
    SymState final_validator(cs);
    SymState final_sym(sandbox_final);
    ch.build_circuit(instr, final_validator);
    EXPECT_FALSE(ch.has_error()) << "Error building a circuit: " << ch.error() << endl;

    // set larger solver timeout
    s_.set_timeout(1000);

    // check equivalence of two symbolic states for a given register
    auto is_eq = [this](string name, auto a, auto b, stringstream& explanation, vector<SymBool> constraints_a, vector<SymBool> constraints_b) {
      SymBool eq = a == b;
      vector<SymBool> eqs = { eq };
      for (auto& c : constraints_a) {
        eqs.push_back(c);
      }
      for (auto& c : constraints_b) {
        eqs.push_back(c);
      }
      bool res = s_.is_sat(eqs);
      if (s_.has_error()) {
        explanation << "  solver encountered error: " << s_.get_error() << endl;
        return false;
      }
      if (!res) {
        explanation << "  states do not agree for '" << name << "':" << endl;
        auto simplify = true;
        if (!simplify) {
          explanation << "    validator: " << (a) << endl;
        } else {
          explanation << "    validator: " << SymSimplify().simplify(a) << endl;
        }
        explanation << "    sandbox:   " << b << endl;
        if (name == "memory") {
          // also output constraints
        }
        return false;
      } else {
        return true;
      }
    };

    auto to_string = [](auto& reg) -> string {
      stringstream ss;
      ss << (*reg);
      return ss.str();
    };

    auto rs = RegSet::universe();
    // the af flag is not currently supported by the validator
    rs = rs - (RegSet::empty() + Constants::eflags_af());
    // don't check undefined outputs
    rs = rs - instr.maybe_undef_set();
    auto eq = true;
    stringstream ss;
    ss << "Sandbox and validator do not agree for '" << instr << "' (opcode " << opcode << ")" << endl;
    for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
      eq = eq && is_eq(to_string(gp_it), final_validator.lookup(*gp_it), final_sym.lookup(*gp_it), ss, {}, {});
    }
    for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
      eq = eq && is_eq(to_string(sse_it), final_validator.lookup(*sse_it), final_sym.lookup(*sse_it), ss, {}, {});
    }
    for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
      eq = eq && is_eq(to_string(flag_it), final_validator[*flag_it], final_sym[*flag_it], ss, {}, {});
    }

    auto get_memory = [](auto& state) {
      return (((FlatMemory*)state.memory)->heap_);
    };
    auto get_constraints = [](auto& state) -> vector<SymBool> {
      return (((FlatMemory*)state.memory)->constraints_);
    };

    // check that memory is equivalent
    if (instr.maybe_write_memory()) {
      eq = eq && is_eq("memory", get_memory(final_validator), get_memory(final_sym), ss, get_constraints(final_validator), get_constraints(final_sym));
    }

    if (!eq) {
      ADD_FAILURE() << ss.str() << endl;
    }
    return true;
  }

  /** Runs the target and rewrite against the sandbox.
     If they are the same for all inputs, expect them to be equivalent.
     Otherwise, expect validator to come up with a correct counterexample. */
  void assert_sandbox(Sandbox& sb) {
    if (!reset_state())
      return;

    // Run the sandbox on the inputs
    sb.run(*cfg_t_);
    std::vector<CpuState> target_results;
    for (auto it = sb.result_begin(); it != sb.result_end(); ++it) {
      target_results.push_back(*it);
    }

    sb.run(*cfg_r_);
    std::vector<CpuState> rewrite_results;
    for (auto it = sb.result_begin(); it != sb.result_end(); ++it) {
      rewrite_results.push_back(*it);
    }

    // Figure out if the target/rewrite should be the same
    ASSERT_EQ(target_results.size(), rewrite_results.size());

    bool sandbox_equiv = true;
    for (size_t i = 0; i < target_results.size(); ++i) {
      if (target_results[i] != rewrite_results[i]) {
        sandbox_equiv = false;
      }
    }

    // Run the validator
    CpuState ceg;
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
  bool validate(CpuState& tc) {

    bool b = v_.verify(*cfg_t_, *cfg_r_);
    if (!b && v_.counter_examples_available())
      tc = v_.get_counter_examples()[0];
    return b;
  }

  /* Gets a CFG from astd::string stream */
  Cfg* get_cfg(std::stringstream& ss) {
    x64asm::Code c;
    ss >> c;
    if (ss.fail()) {
      report_error(OTHER, OTHER, true, "Parse error: " + cpputil::fail_msg(ss));
      return 0;
    }
    if (c.size() == 0) {
      report_error(OTHER, OTHER, true, "Target or rewrite was empty.");
      return 0;
    }


    return new Cfg(TUnit(c), def_ins_, live_outs_);
  }

  template <typename T>
  void expect_cpustate_expect(bool& same, T expect, T actual, std::string local, std::string global) {

    if (actual == expect)
      return;

    if (same) {
      report_error(OTHER, OTHER, false, global);

      if (!ceg_shown_) {
        std::cout << "Counterexample:" << std::endl;
        std::cout << v_.get_counter_examples()[0] << std::endl;
        ceg_shown_ = true;
      }

      std::cout << "Here are the differences found: " << std::endl;
      same = false;
    }

    std::cout << "   - " << local
              << " (sandbox: 0x" << std::hex << (uint64_t)expect
              << ", validator: 0x" << (uint64_t)actual << ")" << std::endl;
  }

  void expect_cpustate_equal_on_liveout(
    CpuState expect,CpuState actual,std::string message) {

#define EXPECT_CPU_EQ_INT(A, B, M)  expect_cpustate_expect<uint64_t>(same, A, B, M, message)
#define EXPECT_CPU_EQ_CODE(A, B, M) expect_cpustate_expect<ErrorCode>(same, A, B, M, message)

    bool same = true;

    // BRC -- I don't think we can/should rely on the validator to get this right.
    //EXPECT_CPU_EQ_CODE(expect.code, actual.code, "The error codes differ.");

    for (auto it = live_outs_.gp_begin(); it != live_outs_.gp_end(); ++it) {
      x64asm::R r = *it;
      std::stringstream tmp;
      tmp << "The " << r.size() << " bits of " << *it << " differ.";
      EXPECT_CPU_EQ_INT(expect[r], actual[r], tmp.str());
    }

    for (auto it = live_outs_.sse_begin(); it != live_outs_.sse_end(); ++it) {
      uint16_t bitwidth = (*it).size();
      uint16_t quads = bitwidth/64;

      for (size_t i = 0; i < quads; ++i) {
        std::stringstream tmp;
        tmp << "Bits " << (i*64) <<  ".." << ((i+1)*64) << " of " << *it << " differ.";
        uint64_t actual_v = actual.sse[*it].get_fixed_quad(i);
        uint64_t expect_v = expect.sse[*it].get_fixed_quad(i);
        EXPECT_CPU_EQ_INT(expect_v, actual_v, tmp.str());
      }
    }

    for (size_t i = 0; i < x64asm::eflags.size(); i++)
    {
      auto op = x64asm::eflags[i];

      if (live_outs_.contains(op)) {
        uint64_t actual_flag = actual.rf.is_set(op.index());
        uint64_t expected_flag = expect.rf.is_set(op.index());

        std::stringstream tmp;
        tmp << "Value of flag " << op << " differs.";
        EXPECT_CPU_EQ_INT(expected_flag, actual_flag, tmp.str());
      }
    }

#undef EXPECT_CPU_EQ_INT
#undef EXPECT_CPU_EQ_CODE
  }

  /* Takes the counterexample, and runs the target and the rewrite on it.
     If you get the same thing, we have a validator bug. */
  void check_ceg(CpuState& ceg) {

    // Make sure that a counterexample was intended.
    if (!v_.counter_examples_available())
      return;

    auto other_ceg = v_.get_counter_examples()[0];
    ASSERT_EQ(ceg, other_ceg);

    // Setup a sandbox with testcase
    Sandbox sb;
    sb.set_abi_check(false)
    .set_max_jumps(2);


    CpuState s1(ceg);
    sb.insert_input(s1);

    // Run the sandbox and check the results for each.
    // We only want to do this check if the state isn't undefined.
    if (cfg_t_->is_sound()) {

      sb.run(*cfg_t_);
      CpuState sandbox_target_state = *sb.get_result(0);

      std::stringstream tmp;
      tmp << "Sandbox disagrees with validator on final state of the target." << std::endl;
      expect_cpustate_equal_on_liveout(sandbox_target_state,
                                       v_.get_target_final_state(),
                                       tmp.str());
    }


    if (cfg_r_->is_sound()) {
      sb.run(*cfg_r_);
      CpuState sandbox_rewrite_state = *sb.get_result(0);

      std::stringstream tmp;
      tmp << "Sandbox disagrees with validator on final state of the rewrite." << std::endl;
      expect_cpustate_equal_on_liveout(sandbox_rewrite_state,
                                       v_.get_rewrite_final_state(),
                                       tmp.str());
    }

  }

  void report_error(int expected, Outcome actual, bool fatal=false, std::string message="") {
    if (!codes_shown_) {
      std::cout << "=== StraightLineValidator Test Failed ====================" << std::endl;
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


    switch (actual) {

    case EQUIVALENT:
      ADD_FAILURE() << "Codes found equivalent" << expected_string.str() << std::endl;
      break;

    case COUNTEREXAMPLE: {

      ADD_FAILURE() << "Unexpected counterexample found" << expected_string.str() << std::endl;

      std::cout << "Counterexample:" << std::endl;
      std::cout << v_.get_counter_examples()[0] << std::endl << std::endl;
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
      ADD_FAILURE_AT(message.c_str(), line) << "StraightLineValidator reported unexpected error"
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

    if (fatal)
      FAIL() << "(Encountered errors were fatal)";

  }


  void check_codes(int expected, bool do_check_ceg = true) {

    // Run the validator on both codes and check for equivalence
    // Possible outcomes are:
    //  - error
    //  - equivalent
    //  - counterexample
    //  - non-equivalent, no counterexample

    Outcome outcome = OTHER;

    // Check for equivalence
    bool equiv = v_.verify(*cfg_t_, *cfg_r_);
    // See if an error occurred
    bool error = v_.has_error();
    // See if a counterexample is available
    size_t got_ceg = v_.counter_examples_available();
    // Later, we'll check if CFG is valid
    bool ceg_is_ok = false;

    // See if it all checks out
    if (equiv) {
      if (error) {
        report_error(expected, OTHER, true,
                     "Validator says codes are equivalent, but also returned an error.");
      }
      if (got_ceg) {
        report_error(expected, OTHER, true,
                     "Validator says codes are equivalent, but also returned counterexample.");
      }
      outcome = EQUIVALENT;
    } else {
      if (got_ceg) {
        if (error) {
          report_error(expected, OTHER, true,
                       "Validator produced counterexample, but also returned an error.");
        } else {
          outcome = COUNTEREXAMPLE;
        }
      } else {
        if (error)
          outcome = ERROR;
        else
          outcome = NO_COUNTEREXAMPLE;
      }
    }


    // See what we need to report.
    // If outcome exceeds expected, we're in trouble
    if ((outcome & expected) != outcome)
      report_error(expected, outcome, false);

    if (got_ceg && do_check_ceg) {
      assert(v_.get_counter_examples().size());
      check_ceg(v_.get_counter_examples()[0]);
    }
  }

  /* Called at the start of an "assert" to get the
     target/rewrite the user wants to test, and reset our state for tracking
     what we've reported to the user. */
  bool reset_state(bool target_only = false) {
    if (cfg_t_) {
      delete cfg_t_;
      cfg_t_ = 0;
    }

    if (cfg_r_) {
      delete cfg_r_;
      cfg_r_ = 0;
    }

    codes_shown_ = false;
    ceg_shown_ = false;


    // Build the Cfgs from the given instructions
    cfg_t_ = get_cfg(target_);

    if (target_only) {
      return cfg_t_;
    }

    cfg_r_ = get_cfg(rewrite_);
    return cfg_t_ && cfg_r_;
  }

  /* Used to build a validator */
  BoundedValidator make_validator() {
    BoundedValidator v(s_);
    // historically these tests have not been used to check
    // equivalence of final heap states
    v.set_heap_out(false);
    v.set_stack_out(false);
    return v;
  }

  /* What information we've shown the user */
  bool codes_shown_;
  bool ceg_shown_;

  /* The validator we're using */
  BoundedValidator v_;
  /* The solver we're using */
  Cvc4Solver s_;

  /* The set of live outputs for the next test */
  x64asm::RegSet live_outs_;
  /* The set of defined inputs for the next test */
  x64asm::RegSet def_ins_;

  /* The target CFG */
  Cfg* cfg_t_;
  /* The rewrite CFG */
  Cfg* cfg_r_;


};

}

#endif
