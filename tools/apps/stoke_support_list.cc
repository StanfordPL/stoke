// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <iostream>

#include "tools/gadgets/solver.h"
#include "tools/gadgets/validator.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;


int main(int argc, char** argv) {

  auto solver = new Z3Solver();
  auto validator_ = new Validator(*solver);
  for (size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto op = (Opcode)i;
    string att_ = opcode_write_att(op);
    string intel_ = opcode_write_intel(op);
    std::string str;
    std::stringstream ss(str);
    opcode_write_text(ss, op);

    std::cout << i << ":" << att_ << ":" << intel_ << ":" << ss.str() << ":" << validator_->is_supported(op) << "\n";
  }

  return 0;
}
