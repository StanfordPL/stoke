// Copyright 2013-2015 Stanford University
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


#include "src/ext/x64asm/include/x64asm.h"
#include "src/target/cpu_info.h"
#include "src/transform/pools.h"

#include "tests/fuzzer.h"

namespace stoke {

class ValidatorFuzzTest : public StraightLineValidatorTest {

public:

  ValidatorFuzzTest() : sg_(&sb_) {
    sb_.set_abi_check(false)
    .set_max_jumps(1);

    sg_.set_max_memory(1024)
    .set_max_attempts(40);
  }

  /** Checks a CFG against an input state. */
  void callback(const Cfg& cfg) {

    // Build a state at random, if possible
    CpuState cs;
    if(!sg_.get(cs, cfg)) {
      fuzz_print() << "Could not generate state: " << sg_.get_error() << std::endl;
      return;
    }

    // Do the test
    // If we did the comparison, then we performed the test right
    auto ins = cfg.get_code()[1];
    target_.clear();
    target_.str("");
    target_ << ".target:" << std::endl;
    target_ << ins << " # OPC=" << std::dec << ins.get_opcode() << std::endl;
    target_ << "retq" << std::endl;

    set_def_ins(cfg.def_ins());
    set_live_outs(cfg.live_outs());

    if(check_circuit(cs))
      success_count_++;
  }

protected:

  size_t success_count_ = 0;

  ComboHandler ch_;
  Z3Solver z3_;
  Sandbox sb_;
  StateGen sg_;
};

void validator_fuzz_callback(const Cfg& cfg, void* callback_info) {
  static_cast<ValidatorFuzzTest*>(callback_info)->callback(cfg);
}

/** This test is vicious.  It picks random instructions, random states, runs
 * the validator on it, runs the sandbox on it, and compares the results.
 * While it's for testing the validator handlers, it implicitly also tests a
 * ton of other functionality. */
TEST_F(ValidatorFuzzTest, RandomInstructionRandomState) {

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT");
  if(iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if(iterations == 0)
    iterations = 100;

  const size_t min_success = iterations/4;
  success_count_ = 0;

  // Setup transforms pool
  Validator v(z3_, ch_);

  TransformPools tp = default_fuzzer_pool();
  tp.set_validator(&v);
  tp.set_memory_write(false);
  tp.recompute_pools();

  fuzz(tp, iterations, &validator_fuzz_callback, (void*)this);


  // Make sure we supported enough of the instructions
  EXPECT_GE(success_count_, min_success);

}

} //namespace stoke

