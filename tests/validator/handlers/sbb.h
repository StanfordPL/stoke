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

class ValidatorSbbTest : public ValidatorTest {};

TEST_F(ValidatorSbbTest, Identity) {

  target_ << ".foo:" << std::endl;
  target_ << "sbbq $0x10, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "sbbq $0x10, %rax" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_equiv();

}

TEST_F(ValidatorSbbTest, NotANoop) {

  target_ << ".foo:" << std::endl;
  target_ << "sbbq $0x10, %rax" << std::endl;
  target_ << "retq" << std::endl;

  rewrite_ << ".foo:" << std::endl;
  rewrite_ << "retq" << std::endl;

  assert_ceg();

}


TEST_F(ValidatorSbbTest, Issue238) {

  target_ << ".foo:" << std::endl;
  target_ << "sbbw $0xfffb, %ax" << std::endl;
  target_ << "retq" << std::endl;

  CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0xb0a02d08;

  check_circuit(cs);
}

TEST_F(ValidatorSbbTest, Issue238_2) {

  target_ << ".foo:" << std::endl;
  target_ << "sbbw $0xfffb, %ax" << std::endl;
  target_ << "retq" << std::endl;

  CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x80000000b0a02d08;

  check_circuit(cs);
}
} //namespace stoke
