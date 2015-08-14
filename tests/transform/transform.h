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

#include "src/transform/all_transforms.h"

#include "tests/fuzzer.h"

namespace stoke {

class TransformsTest : public CodeFixtureTest {

public:

  TransformsTest() {
    tp_ = default_fuzzer_pool();
  }

  virtual void SetUp() {
    CodeFixtureTest::SetUp();

    iterations_ = 10000;

    struct timeval tv;
    gettimeofday(&tv, NULL);
    seed_ = (std::default_random_engine::result_type)(tv.tv_sec * 1000000 + tv.tv_usec);
    tp_.set_seed(seed_);

    code_ = GetParam().get_code();
    cfg_ = new Cfg(TUnit(code_), x64asm::RegSet::universe(), x64asm::RegSet::empty());
  }

protected:

  void check_move_reversible(Transform& transform) {

    int success = 0;
    x64asm::Code original(code_);

    transform.set_seed(seed_);
    TransformInfo ti;

    if(!cfg_->check_invariants()) {
      std::cout << "[----------] Invaraints failed at beginning; can't check this one." << std::endl;
      return;
    }

    for (size_t i = 0; i < iterations_; ++i) {

      ti = transform(*cfg_);
      if(ti.success) {
        success++;
        ASSERT_TRUE(check_cfg());
        transform.undo(*cfg_, ti);
        ASSERT_TRUE(check_cfg());
      }
      ASSERT_TRUE(check_cfg());

      ASSERT_EQ(original, cfg_->get_code()) <<
                                            "and the seed was: " << seed_ << std::endl;
    }
  }

  bool check_cfg() {
    bool b = cfg_->check_invariants();
    EXPECT_TRUE(b) << "CFG:" << std::endl << cfg_->get_code() << std::endl
                   << "seed: " << seed_ << std::endl;
    return b;
  }

  TransformPools tp_;

  size_t iterations_;
  std::default_random_engine::result_type seed_;
  x64asm::Code code_;
  Cfg* cfg_;
  bool do_check_; //if cfg doesn't pass invariants in beginning, don't check them.

};


TEST_P(TransformsTest, AddNopsMoveIsReversible) {
  auto transform = AddNopsTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, DeleteMoveIsReversible) {
  auto transform = DeleteTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, InstructionMoveIsReversible) {
  auto transform = InstructionTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, OpcodeMoveIsReversible) {
  auto transform = OpcodeTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, OpcodeWidthMoveIsReversible) {
  auto transform = OpcodeWidthTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, OperandMoveIsReversible) {
  auto transform = OperandTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, ReplaceNopMoveIsReversible) {
  auto transform = ReplaceNopTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, RotateMoveIsReversible) {
  auto transform = RotateTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, LocalSwapMoveIsReversible) {
  auto transform = LocalSwapTransform(tp_);
  check_move_reversible(transform);
}

TEST_P(TransformsTest, GlobalSwapMoveIsReversible) {
  auto transform = GlobalSwapTransform(tp_);
  check_move_reversible(transform);
}


TEST_P(TransformsTest, WeightedIsReversible) {
  auto transform = WeightedTransform(tp_);

  std::vector<Transform*> transforms;
  transforms.push_back(new AddNopsTransform(tp_));
  transforms.push_back(new DeleteTransform(tp_));
  transforms.push_back(new InstructionTransform(tp_));
  transforms.push_back(new OpcodeTransform(tp_));
  transforms.push_back(new OpcodeWidthTransform(tp_));
  transforms.push_back(new OperandTransform(tp_));
  transforms.push_back(new LocalSwapTransform(tp_));
  transforms.push_back(new GlobalSwapTransform(tp_));
  transforms.push_back(new ReplaceNopTransform(tp_));
  transforms.push_back(new RotateTransform(tp_));

  for(auto t : transforms)
    transform.insert_transform(t);

  check_move_reversible(transform);

  for(auto t : transforms) {
    delete t;
  }
}

TEST_P(TransformsTest, MultiIsReversible) {
  auto wtransform = WeightedTransform(tp_);

  std::vector<Transform*> transforms;
  transforms.push_back(new AddNopsTransform(tp_));
  transforms.push_back(new DeleteTransform(tp_));
  transforms.push_back(new InstructionTransform(tp_));
  transforms.push_back(new OpcodeTransform(tp_));
  transforms.push_back(new OpcodeWidthTransform(tp_));
  transforms.push_back(new OperandTransform(tp_));
  transforms.push_back(new LocalSwapTransform(tp_));
  transforms.push_back(new GlobalSwapTransform(tp_));
  transforms.push_back(new ReplaceNopTransform(tp_));
  transforms.push_back(new RotateTransform(tp_));

  for(auto t : transforms)
    wtransform.insert_transform(t);

  auto transform = MultiTransform(tp_, wtransform, 2);
  check_move_reversible(transform);

  for(auto t : transforms) {
    delete t;
  }
}


TEST_P(TransformsTest, CostInvariantAfterUndo) {

  // Setup weighted transform
  auto transform = WeightedTransform(tp_);
  auto sub_transform = WeightedTransform(tp_);

  std::vector<Transform*> transforms;
  transforms.push_back(new InstructionTransform(tp_));
  transforms.push_back(new OpcodeTransform(tp_));
  transforms.push_back(new OperandTransform(tp_));
  transforms.push_back(new LocalSwapTransform(tp_));
  transforms.push_back(new GlobalSwapTransform(tp_));
  transforms.push_back(new RotateTransform(tp_));
  transforms.push_back(new AddNopsTransform(tp_));

  for(auto t : transforms) {
    transform.insert_transform(t);
    sub_transform.insert_transform(t);
  }

  auto dual_transform = new MultiTransform(tp_, sub_transform, 2);
  transform.insert_transform(dual_transform);


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

  //make cost functions
  std::vector<CostFunction*> functions;
  std::vector<stoke::CostFunction::result_type> original_costs;

  stoke::CorrectnessCost correctness(&sb);
  correctness.set_target(*cfg_, true, true)
  .set_relax(true, false, false)
  .set_penalty(3,5);
  functions.push_back(&correctness);

  stoke::LatencyCost latency;
  latency.set_nesting_penalty(7);
  functions.push_back(&latency);

  stoke::SizeCost size;
  functions.push_back(&size);

  stoke::BinSizeCost binsize;
  functions.push_back(&binsize);

  stoke::Cfg original_cfg(TUnit(original), x64asm::RegSet::universe(), x64asm::RegSet::empty());
  original_cfg.add_summary(x64asm::Label(".L4"), mms);

  for(auto fxn : functions) {
    original_costs.push_back((*fxn)(original_cfg));
  }

  //loop and check
  for (size_t i = 0; i < iterations_; ++i) {

    TransformInfo ti;
    ti = transform(*cfg_);
    if (ti.success) {
      transform.undo(*cfg_, ti);
    }

    for(size_t i = 0; i < functions.size(); ++i) {
      auto orig_cost = original_costs[i];
      auto fxn = functions[i];
      ASSERT_EQ(orig_cost, (*fxn)(*cfg_)) <<
                                          "the original code: " << std::endl << original << std::endl <<
                                          "the modified code: " << std::endl << cfg_->get_code() << std::endl <<
                                          "and the seed was: " << seed_ << std::endl;

      ASSERT_EQ((*fxn)(*cfg_), (*fxn)(*cfg_)) << "evaluating cost twice failed.";
    }
  }

  for(auto t : transforms) {
    delete t;
  }

}


INSTANTIATE_TEST_CASE_P(
  AllFixtures,
  TransformsTest,
  ::testing::ValuesIn(CodeFixtureTestInit::get_fixtures())
);

} //namespace
