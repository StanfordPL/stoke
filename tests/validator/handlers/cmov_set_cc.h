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

namespace stoke {

class ValidatorCmovSetCCTest : public ValidatorTest {

protected:
  const std::vector<std::string> ccs
  { "a", "ae", "b", "be", "c", "e", "g", "ge",
    "l", "le", "na", "nae", "nb", "nbe", "nc",
    "ne", "ng", "nge", "nl", "nle", "no", "np",
    "ns", "nz", "o", "p", "pe", "po", "s", "z" };

  std::vector<CpuState> testcases_;

  Sandbox* sb_;

private:

  void SetUp() {
    ValidatorTest::SetUp();

    const std::vector<int> flag_indexes
    { 0, 2, 4, 6, 7, 11 };

    sb_ = new Sandbox();

    // Create one testcase for each combination of the
    // six status eflags. 0b00111111 = 0x3f.
    StateGen sg(sb_);

    for(size_t i = 0; i <= 0x3f; ++i) {

      // Initialize state to random
      CpuState tc;
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

    target_ << ".foo:" << std::endl;
    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << ".foo:" << std::endl;
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

    target_ << ".foo:" << std::endl;
    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << ".foo:" << std::endl;
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

    target_ << ".foo:" << std::endl;
    target_ << "movq $0x0, %rax" << std::endl;
    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << ".foo:" << std::endl;
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

    target_ << ".foo:" << std::endl;
    target_ << "movq $0x0, %rax" << std::endl;
    target_ << "movq $0x1, %rcx"  << std::endl;
    target_ << "cmov" << cc << "q %rcx, %rax" << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << ".foo:" << std::endl;
    rewrite_ << "movq $0x0, %rax" << std::endl;
    rewrite_ << "movq $0x1, %rcx"  << std::endl;
    rewrite_ << "set" << cc << " %al" << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

TEST_F(ValidatorCmovSetCCTest, DISABLED_TestSetccAgainstItself) {

  for(auto cc1 : ccs) {
    for(auto cc2 : ccs) {
      if (cc1 <= cc2) // we check identity elsewhere
        continue;

      target_.clear();
      rewrite_.clear();

      target_ << ".foo:" << std::endl;
      target_ << "set" << cc1 << " %al" << std::endl;
      target_ << "retq" << std::endl;

      rewrite_ << ".foo:" << std::endl;
      rewrite_ << "set" << cc2 << " %al" << std::endl;
      rewrite_ << "retq" << std::endl;

      assert_sandbox(*sb_);
    }
  }
}

TEST_F(ValidatorCmovSetCCTest, DISABLED_TestCmovccAgainstItself) {

  for(auto cc1 : ccs) {
    for(auto cc2 : ccs) {
      if (cc1 <= cc2) //we check identity elsewhere
        continue;

      target_.clear();
      rewrite_.clear();

      target_ << ".foo:" << std::endl;
      target_ << "cmov" << cc1 << "l %ebp, %esp" << std::endl;
      target_ << "retq" << std::endl;

      rewrite_ << ".foo:" << std::endl;
      rewrite_ << "cmov" << cc2 << "l %ebp, %esp" << std::endl;
      rewrite_ << "retq" << std::endl;

      assert_sandbox(*sb_);
    }
  }
}

TEST_F(ValidatorCmovSetCCTest, CmovzlCmovsl) {

  target_ << ".foo:" << std::endl;
  target_ << "cmovzl %ebp, %esp" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "cmovsl %ebp, %esp" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();
  //assert_sandbox(*sb_);

}
} //namespace stoke
