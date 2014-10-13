
#include <sys/time.h>
#include "src/cfg/cfg.h"
#include "src/search/transforms.h"

class TransformsTest : public CodeFixtureTest {

  public:

    virtual void SetUp() {
      CodeFixtureTest::SetUp();

      iterations_ = 10000;

      struct timeval tv;
      gettimeofday(&tv, NULL);

      seed_ = (std::default_random_engine::result_type)(tv.tv_sec*1000000 + tv.tv_usec);
      transforms_.set_seed(seed_);

      // Note: we only want to do this once.
      if (!transforms_init_) {
        transforms_.set_opcode_pool(x64asm::FlagSet::universe(), 0, true, true);
        transforms_init_ = true;
      }

      /* set operands based on the target */
      transforms_.set_operand_pool(GetParam().get_code(), x64asm::RegSet::empty());

      code_ = GetParam().get_code();
      cfg_ = new stoke::Cfg(code_, x64asm::RegSet::universe(), x64asm::RegSet::empty());
    }

  protected:

    static stoke::Transforms transforms_;

    size_t iterations_;
    std::default_random_engine::result_type seed_;
    x64asm::Code code_;
    stoke::Cfg* cfg_;

  private:
    static bool transforms_init_;
};

bool TransformsTest::transforms_init_ = false;
stoke::Transforms TransformsTest::transforms_;

TEST_P(TransformsTest, InstructionMoveIsReversible) {

  int success = 0;
  x64asm::Code original(code_);

  for (size_t i = 0; i < iterations_; ++i) {

    if(transforms_.instruction_move(*cfg_)) {
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

    if(transforms_.opcode_move(*cfg_)) {
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

    if(transforms_.operand_move(*cfg_)) {
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

    if(transforms_.resize_move(*cfg_)) {
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

    if(transforms_.local_swap_move(*cfg_)) {
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

    if(transforms_.global_swap_move(*cfg_)) {
      success++; 
      transforms_.undo_global_swap_move(*cfg_); 
    } 

    ASSERT_EQ(original, cfg_->get_code()) << 
      "and the seed was: " << seed_ << std::endl;

  }
}




INSTANTIATE_TEST_CASE_P(
  AllFixtures,
  TransformsTest,
  ::testing::ValuesIn(CodeFixtureTestInit::get_fixtures())
);
