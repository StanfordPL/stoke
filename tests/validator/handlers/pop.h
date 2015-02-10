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


class ValidatorPopTest : public ValidatorTest {};

TEST_F(ValidatorPopTest, PopSp) {

  target_ << ".test:"   << std::endl;
  target_ << "popw %sp" << std::endl;
  target_ << "retq"     << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::rsp].get_fixed_quad(0) = 0x7fffffff9a2f6800;
  uint64_t lower = 0x7fffffff9a2f67e0;
  cs.stack.resize(lower, 40);
  for(uint64_t i = lower; i < lower + 40; ++i) {
    cs.stack.set_valid(i, true);
    cs.stack.set_defined(i, true);
  }

  check_circuit(cs);
}

TEST_F(ValidatorPopTest, PopRsp) {

  target_ << ".test:"   << std::endl;
  target_ << "popq %rsp" << std::endl;
  target_ << "retq"     << std::endl;

  stoke::CpuState cs;
  cs.gp[x64asm::rsp].get_fixed_quad(0) = 0x7fffffff9a2f6800;
  uint64_t lower = 0x7fffffff9a2f67e0;
  cs.stack.resize(lower, 40);
  for(uint64_t i = lower; i < lower + 40; ++i) {
    cs.stack.set_valid(i, true);
    cs.stack.set_defined(i, true);
  }

  check_circuit(cs);
}

