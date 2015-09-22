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
#include "tools/io/tunit.h"

#include "tests/fuzzer.h"

namespace stoke {

class ValidatorPseudoFuzzTest : public ValidatorTest {

public:

  ValidatorPseudoFuzzTest() : sg_(&sb_) {
    sb_.set_abi_check(false)
    .set_max_jumps(100);

    sg_.set_max_memory(1024)
    .set_max_attempts(40);

    // get functions
    stoke::TUnit tunit;
    const char* dirname = "specgen/workdir/functions";
    DIR *dp = opendir(dirname);
    if (dp == NULL) {
      assert(false);// << "functions folder not found";
    }
    struct dirent *dirp;
    while ((dirp = readdir(dp))) {
      std::string filepath = std::string(dirname) + "/" + dirp->d_name;

      struct stat filestat;
      if (stat(filepath.c_str(), &filestat)) continue;
      if (S_ISDIR(filestat.st_mode)) continue;

      std::ifstream ifs(filepath);
      if (!ifs.is_open()) {
        assert(false);// "cannot read " << filepath;
      } else {
        stoke::TUnit temp = stoke::TUnit();
        stoke::TUnitReader()(ifs, temp);

        if (ifs.fail()) {
          assert(false);// "failed to parse " << filepath;
        } else {
          aux_fxns_.push_back(temp);
          sb_.insert_function(Cfg(temp, x64asm::RegSet::empty(), x64asm::RegSet::empty()));
        }
      }
    }
    closedir(dp);
  }

  /** Checks a CFG against an input state. */
  void callback(const Cfg& cfg) {

    // Build a state at random, if possible
    CpuState cs;
    if (!sg_.get(cs, cfg)) {
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

    if (check_circuit(cs, aux_fxns_))
      success_count_++;
  }

protected:

  size_t success_count_ = 0;

  ComboHandler ch_;
  Z3Solver z3_;
  Sandbox sb_;
  StateGen sg_;

  std::vector<TUnit> aux_fxns_;
};

void validator_pseudo_fuzz_callback(const Cfg& cfg, void* callback_info) {
  static_cast<ValidatorPseudoFuzzTest*>(callback_info)->callback(cfg);
}

TEST_F(ValidatorPseudoFuzzTest, RandomInstructionRandomState) {

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT_PSEUDO");
  if (iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if (iterations == 0)
    iterations = 100;

  const size_t min_success = iterations/4;
  success_count_ = 0;

  // Setup transforms pool
  Validator v(z3_, ch_);

  TransformPools tp = default_fuzzer_pool();
  tp.set_validator(&v);

  // add function labels
  for (const auto& fxn : aux_fxns_) {
    auto lbl = fxn.get_code()[0].get_operand<x64asm::Label>(0);
    tp.insert_label(lbl);
  }

  // remove everything but calls
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    tp.remove_opcode((x64asm::Opcode)i);
  }
  tp.insert_opcode(x64asm::CALL_LABEL);

  tp.recompute_pools();

  fuzz(tp, iterations, &validator_pseudo_fuzz_callback, (void*)this, 1, aux_fxns_);

  // Make sure we supported enough of the instructions
  EXPECT_GE(success_count_, min_success);

}

} //namespace stoke

