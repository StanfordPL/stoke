
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

TEST_F(ValidatorCmovSetCCTest, DISABLED_SetCCIdentity) {

  for(auto cc : ccs) {
    target_.clear();
    rewrite_.clear();
    std::string instr = "set" + cc + " %al";

    std::cout << "Checking " << instr << std::endl;

    target_ << "movq $0x0, %rax" << std::endl;
    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << "movq $0x0, %rax" << std::endl;
    rewrite_ << instr << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

TEST_F(ValidatorCmovSetCCTest, DISABLED_CmovCCIdentity) {

  for(auto cc : ccs) {
    target_.clear();
    rewrite_.clear();
    std::string instr = "cmov" + cc + "w $0x10, %dx";

    std::cout << "Checking " << instr << std::endl;

    target_ << instr << std::endl;
    target_ << "retq" << std::endl;

    rewrite_ << instr << std::endl;
    rewrite_ << "retq" << std::endl;

    assert_equiv();
  }

}

