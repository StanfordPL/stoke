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


class ValidatorPcmpeqbTest : public ValidatorTest {};

TEST_F(ValidatorPcmpeqbTest, AllZeros) {

  target_ << "vpcmpeqb %ymm0, %ymm1, %ymm2" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  check_circuit(cs);
}


TEST_F(ValidatorPcmpeqbTest, OneMatch) {

  target_ << "vpcmpeqb %ymm0, %ymm1, %ymm2" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.sse[x64asm::ymm0].get_fixed_quad(0) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(0) = 0xffffffffffffffff;

  cs.sse[x64asm::ymm0].get_fixed_quad(1) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(1) = 0xffffffffffffffff;

  cs.sse[x64asm::ymm0].get_fixed_quad(2) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(2) = 0xffffffffffffff00;

  cs.sse[x64asm::ymm0].get_fixed_quad(3) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(3) = 0xffffffffffffffff;

  check_circuit(cs);
}

TEST_F(ValidatorPcmpeqbTest, WordMatch) {

  target_ << "vpcmpeqb %ymm0, %ymm1, %ymm2" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.sse[x64asm::ymm0].get_fixed_quad(0) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(0) = 0xffffffffffffffff;

  cs.sse[x64asm::ymm0].get_fixed_quad(1) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(1) = 0xffffffffffffffff;

  cs.sse[x64asm::ymm0].get_fixed_quad(2) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(2) = 0xffffffffffff0000;

  cs.sse[x64asm::ymm0].get_fixed_quad(3) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(3) = 0xffffffffffffffff;

  check_circuit(cs);
}

TEST_F(ValidatorPcmpeqbTest, SeveralMatch) {

  target_ << "vpcmpeqb %ymm0, %ymm1, %ymm2" << std::endl;
  target_ << "retq" << std::endl;

  stoke::CpuState cs;
  cs.sse[x64asm::ymm0].get_fixed_quad(0) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(0) = 0x00ff00ff00ff00ff;

  cs.sse[x64asm::ymm0].get_fixed_quad(1) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(1) = 0xffff00ff00ff00ff;

  cs.sse[x64asm::ymm0].get_fixed_quad(2) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(2) = 0xffff00ff00ff00ff;

  cs.sse[x64asm::ymm0].get_fixed_quad(3) = 0x0;
  cs.sse[x64asm::ymm1].get_fixed_quad(3) = 0xffff00ff00ff00ff;

  check_circuit(cs);
}

