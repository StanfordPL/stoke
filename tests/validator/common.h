
#ifndef TESTS_VALIDATOR_COMMON_H
#define TESTS_VALIDATOR_COMMON_H

class ValidatorTest : public ::testing::Test {

  protected:

    std::stringstream target_;
    std::stringstream rewrite_;

    bool validate(stoke::CpuState& tc) {

      stoke::Validator v;
      v.set_mem_out(false)
       .set_timeout(1000);

      stoke::CpuState ceg;

      x64asm::Code t, r;
      target_ >> t;
      rewrite_ >> r;

      stoke::Cfg cfg_t(t, x64asm::RegSet::universe(), x64asm::RegSet::universe());
      stoke::Cfg cfg_r(r, x64asm::RegSet::universe(), x64asm::RegSet::universe());

      return v.validate(cfg_t, cfg_r, tc);
    } 

    void assert_equiv() {
      stoke::CpuState ceg;
      EXPECT_TRUE(validate(ceg)) << "Validation failed.  Counterexample:"
                                 << std::endl << ceg << std::endl;
    }

    void assert_ceg(stoke::CpuState& ceg) {
      EXPECT_FALSE(validate(ceg)) << "Codes were found equivalent.";
    }

    void assert_ceg() {
      stoke::CpuState ceg;
      EXPECT_FALSE(validate(ceg)) << "Codes were found equivalent.";
    }

    std::string assert_fail() {
      stoke::CpuState ceg;
      EXPECT_THROW(validate(ceg), validator_error);

      try {
        validate(ceg);
      } catch (validator_error e) {
        return e.get_message();
      }
    }

  private:

    void SetUp() {

      target_.clear();
      rewrite_.clear();
    }

};

#endif
