
class ValidatorCmovSetCCTest : public ValidatorTest {

protected:
  const std::vector<std::string> ccs
  { "a", "ae", "b", "be", "c", "e", "g", "ge",
    "l", "le", "na", "nae", "nb", "nbe", "nc",
    "ne", "ng", "nge", "nl", "nle", "no", "np",
    "ns", "nz", "o", "p", "pe", "po", "s", "z" };

  std::vector<stoke::CpuState> testcases_;

  stoke::Sandbox* sb_;

private:

  void SetUp() {
    ValidatorTest::SetUp();

    const std::vector<int> flag_indexes
    { 0, 2, 4, 6, 7, 11 };

    sb_ = new stoke::Sandbox();

    // Create one testcase for each combination of the
    // six status eflags. 0b00111111 = 0x3f.
    stoke::StateGen sg(sb_);

    for(size_t i = 0; i <= 0x3f; ++i) {

      // Initialize state to random
      stoke::CpuState tc;
      sg.get(tc);

      // Set the appropriate flags
      for(size_t j = 0; j < 6; ++j) {
        if (i & (1 << j)) {
          tc.rf.set(flag_indexes[j], 1);
        } else {
          tc.rf.set(flag_indexes[j], 0);
        }
      }

      testcases_.push_back(tc);
    }

    // Add the testcases to the sandbox
    for(auto tc : testcases_) {
      sb_->insert_input(tc);
    }
  }

};


TEST_F(ValidatorCmovSetCCTest, SetCCIdentity) {

  for(auto cc : ccs) {
    target_.clear();
    rewrite_.clear();
    std::string instr = "set" + cc + " %al";

    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << instr << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

TEST_F(ValidatorCmovSetCCTest, CmovCCIdentity) {

  for(auto cc : ccs) {
    target_.clear();
    rewrite_.clear();
    std::string instr = "cmov" + cc + "w %cx, %dx";


    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << instr << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

TEST_F(ValidatorCmovSetCCTest, CmovZeroToZeroDoesNothing) {

  for(auto cc : ccs) {
    target_.clear();
    rewrite_.clear();
    std::string instr = "cmov" + cc + "q %rax, %rax";

    target_ << "movq $0x0, %rax" << std::endl;
    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << "movq $0x0, %rax" << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }
}

TEST_F(ValidatorCmovSetCCTest, CmovSetEquivalent) {

  for(auto cc : ccs) {
    target_.clear();
    rewrite_.clear();
    std::string instr = "cmov" + cc + "q %rax, %rax";

    target_ << "movq $0x0, %rax" << std::endl;
    target_ << "movq $0x1, %rcx"  << std::endl;
    target_ << "cmov" << cc << "q %rcx, %rax" << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << "movq $0x0, %rax" << std::endl;
    rewrite_ << "movq $0x1, %rcx"  << std::endl;
    rewrite_ << "set" << cc << " %al" << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

TEST_F(ValidatorCmovSetCCTest, TestSetccAgainstItself) {

  for(auto cc1 : ccs) {
    for(auto cc2 : ccs) {
      if (cc1 <= cc2) // we check identity elsewhere
        continue;

      target_.clear();
      rewrite_.clear();

      target_ << "set" << cc1 << " %al" << std::endl;
      target_ << "retq" << std::endl;

      rewrite_ << "set" << cc2 << " %al" << std::endl;
      rewrite_ << "retq" << std::endl;

      assert_sandbox(*sb_);
    }
  }
}

TEST_F(ValidatorCmovSetCCTest, TestCmovccAgainstItself) {

  for(auto cc1 : ccs) {
    for(auto cc2 : ccs) {
      if (cc1 <= cc2) //we check identity elsewhere
        continue;

      target_.clear();
      rewrite_.clear();

      target_ << "cmov" << cc1 << "l %ebp, %esp" << std::endl;
      target_ << "retq" << std::endl;

      rewrite_ << "cmov" << cc2 << "l %ebp, %esp" << std::endl;
      rewrite_ << "retq" << std::endl;

      assert_sandbox(*sb_);
    }
  }
}

TEST_F(ValidatorCmovSetCCTest, CmovzlCmovsl) {


  target_ << "cmovzl %ebp, %esp" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "cmovsl %ebp, %esp" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
  //assert_sandbox(*sb_);

}
