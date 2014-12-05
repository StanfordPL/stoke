// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


class ValidatorIncTest : public ValidatorTest {};

TEST_F(ValidatorIncTest, Issue280) {

  target_ << "incb %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x2d01;

  check_circuit(cs);
}

TEST_F(ValidatorIncTest, Issue280_2) {

  target_ << "incb %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x2d00;

  check_circuit(cs);
}

TEST_F(ValidatorIncTest, Issue280_3) {

  target_ << "incb %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x2dff;

  check_circuit(cs);
}

TEST_F(ValidatorIncTest, Issue280_4) {

  target_ << "incb %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x2d81;

  check_circuit(cs);
}

TEST_F(ValidatorIncTest, Issue280_5) {

  target_ << "incb %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x2d80;

  check_circuit(cs);
}

TEST_F(ValidatorIncTest, Issue280_6) {

  target_ << "incb %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x2d7f;

  check_circuit(cs);
}
