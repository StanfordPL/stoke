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


class ValidatorAdcTest : public ValidatorTest {};

TEST_F(ValidatorAdcTest, Issue280) {

  target_ << "adcb $0x0, %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x0e33;

  check_circuit(cs);
}

TEST_F(ValidatorAdcTest, Issue280_2) {

  target_ << "adcb $0x50, %al" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::ax].get_fixed_quad(0) = 0x0e33;

  check_circuit(cs);
}

