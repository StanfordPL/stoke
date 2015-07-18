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


#include <sys/time.h>
#include "src/cfg/cfg.h"
#include "src/cost/latency.h"
#include "src/cost/correctness.h"
#include "src/cost/size.h"
#include "src/stategen/stategen.h"
#include "src/transform/pools.h"
#include "src/transform/transforms.h"

namespace stoke {

class TransformsTest : public CodeFixtureTest {

public:

  TransformsTest() : transforms_(*(new TransformPools())) { }

  virtual void SetUp() {
    CodeFixtureTest::SetUp();

    iterations_ = 10000;

    struct timeval tv;
    gettimeofday(&tv, NULL);

    seed_ = (std::default_random_engine::result_type)(tv.tv_sec * 1000000 + tv.tv_usec);
    transforms_.set_seed(seed_);

    code_ = GetParam().get_code();

    // Note: we only want to do this once.
    if (!transforms_init_) {
      transforms_.set_opcode_pool(Cfg(TUnit(code_)), x64asm::FlagSet::universe(), 0, x64asm::RegSet::empty(), {}, {});
      transforms_init_ = true;
    }

    transforms_.set_operand_pool(Cfg(TUnit(code_)), x64asm::RegSet::empty());
    cfg_ = new Cfg(TUnit(code_), x64asm::RegSet::universe(), x64asm::RegSet::empty());
  }

protected:

  Transforms transforms_;

  size_t iterations_;
  std::default_random_engine::result_type seed_;
  x64asm::Code code_;
  Cfg* cfg_;

private:
  static bool transforms_init_;
};

bool TransformsTest::transforms_init_ = false;

TEST_P(TransformsTest, InstructionMoveIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if (transforms_.instruction_move(*cfg_)) {
      success++;
      transforms_.undo_instruction_move(*cfg_);
    }

    ASSERT_EQ(original, cfg_->get_code()) <<
                                          "and the seed was: " << seed_ << std::endl;

  }
}

TEST_P(TransformsTest, OpcodeMoveIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if (transforms_.opcode_move(*cfg_)) {
      success++;
      transforms_.undo_opcode_move(*cfg_);
    }

    ASSERT_EQ(original, cfg_->get_code()) <<
                                          "and the seed was: " << seed_ << std::endl;

  }
}

TEST_P(TransformsTest, OperandMoveIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if (transforms_.operand_move(*cfg_)) {
      success++;
      transforms_.undo_operand_move(*cfg_);
    }

    ASSERT_EQ(original, cfg_->get_code()) <<
                                          "and the seed was: " << seed_ << std::endl;

  }
}

TEST_P(TransformsTest, ResizeMoveIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if (transforms_.resize_move(*cfg_)) {
      success++;
      transforms_.undo_resize_move(*cfg_);
    }

    ASSERT_EQ(original, cfg_->get_code()) <<
                                          "and the seed was: " << seed_ << std::endl;

  }
}

TEST_P(TransformsTest, LocalSwapIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if (transforms_.local_swap_move(*cfg_)) {
      success++;
      transforms_.undo_local_swap_move(*cfg_);
    }

    ASSERT_EQ(original, cfg_->get_code()) <<
                                          "and the seed was: " << seed_ << std::endl;

  }
}

TEST_P(TransformsTest, GlobalSwapIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if (transforms_.global_swap_move(*cfg_)) {
      success++;
      transforms_.undo_global_swap_move(*cfg_);
    }

    ASSERT_EQ(original, cfg_->get_code()) <<
                                          "and the seed was: " << seed_ << std::endl;

  }
}

TEST_P(TransformsTest, CostInvariantAfterUndo) {
  // This set can be used to introduce the dataflow fact that function calls don't
  // perform any reads. This is useful for testcases that used to ignore undefined
  // reads, which we now check for as an invariant.
  TUnit::MayMustSets mms = {
    x64asm::RegSet::empty(),
    x64asm::Instruction(x64asm::CALL_LABEL).must_write_set(),
    x64asm::Instruction(x64asm::CALL_LABEL).must_undef_set(),
    x64asm::RegSet::empty(),
    x64asm::Instruction(x64asm::CALL_LABEL).maybe_write_set(),
    x64asm::Instruction(x64asm::CALL_LABEL).maybe_undef_set(),
  };

  code_.push_back(x64asm::Instruction(x64asm::RET));
  x64asm::Code original(code_);
  cfg_ = new Cfg(TUnit(code_), x64asm::RegSet::universe(), x64asm::RegSet::empty());
  cfg_->add_summary(x64asm::Label(".L4"), mms);

  Sandbox sb;
  sb.set_max_jumps(30).set_abi_check(false);

  //attempt to make a testcase
  // there's an underlying bug here in stoke testcase.
  CpuState tc;
  StateGen sg(&sb);
  sb.insert_input(tc);

  //make cost function
  stoke::CorrectnessCost correctness(&sb);
  correctness.set_target(*cfg_, true, true)
  .set_relax(true, false, false)
  .set_penalty(3,5);

  stoke::LatencyCost latency;
  latency.set_nesting_penalty(7);

  stoke::SizeCost size;

  stoke::Cfg original_cfg(TUnit(original), x64asm::RegSet::universe(), x64asm::RegSet::empty());
  original_cfg.add_summary(x64asm::Label(".L4"), mms);

  auto correct_orig = correctness(original_cfg);
  auto latency_orig = latency(original_cfg);
  auto size_orig    = size(original_cfg);

  //loop and check
  for (size_t i = 0; i < iterations_; ++i) {

    Move m = (Move)(i % 6);
    if (transforms_.modify(*cfg_, m)) {
      transforms_.undo(*cfg_, m);
    }

    ASSERT_EQ(correct_orig, correctness(*cfg_)) <<
        "the original code: " << std::endl << original << std::endl <<
        "the modified code: " << std::endl << cfg_->get_code() << std::endl <<
        "and the seed was: " << seed_ << std::endl;

    ASSERT_EQ(correctness(*cfg_), correctness(*cfg_)) << "evaluating cost twice failed.";

    ASSERT_EQ(latency_orig, latency(*cfg_)) <<
                                            "the original code: " << std::endl << original << std::endl <<
                                            "the modified code: " << std::endl << cfg_->get_code() << std::endl <<
                                            "and the seed was: " << seed_ << std::endl;

    ASSERT_EQ(latency(*cfg_), latency(*cfg_)) << "evaluating cost twice failed.";

    ASSERT_EQ(size_orig, size(*cfg_)) <<
                                      "the original code: " << std::endl << original << std::endl <<
                                      "the modified code: " << std::endl << cfg_->get_code() << std::endl <<
                                      "and the seed was: " << seed_ << std::endl;

    ASSERT_EQ(size(*cfg_), size(*cfg_)) << "evaluating cost twice failed.";

  }


}


INSTANTIATE_TEST_CASE_P(
  AllFixtures,
  TransformsTest,
  ::testing::ValuesIn(CodeFixtureTestInit::get_fixtures())
);

} //namespace
