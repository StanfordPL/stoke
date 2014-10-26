
class ValidatorCmovSetCCTest : public ValidatorTest {

  protected:
    const std::vector<std::string> ccs 
      { "a", "ae", "b", "be", "c", "e", "g", "ge",
        "l", "le", "na", "nae", "nb", "nbe", "nc",
        "ne", "ng", "nge", "nl", "nle", "no", "np",
        "ns", "nz", "o", "p", "pe", "po", "s", "z" };
};

TEST_F(ValidatorCmovSetCCTest, SetZIdentity) {

  target_ << "movq $0x0, %rax" << std::endl;
  target_ << "sete %al" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << "movq $0x0, %rax" << std::endl;
  rewrite_ << "sete %al" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();
}

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
    target_ << "movw $0x1, %cx"  << std::endl;
    target_ << "cmov" << cc << "w %cx, %ax" << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << "movq $0x0, %rax" << std::endl;
    rewrite_ << "movw $0x1, %cx"  << std::endl;
    rewrite_ << "set" << cc << " %al" << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}
