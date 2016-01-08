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

bool check(uint64_t a, uint64_t b, const std::string& msg, std::ostream& os) {
  if (a == b) {
    return false;
  }
  os << msg << std::endl;
  os << "  In state 1: 0x" << std::hex << a << std::endl;
  os << "  In state 2: 0x" << std::hex << b << std::endl;
  return true;
}

void report(bool failed, const x64asm::Instruction& instr,
            const stoke::CpuState& a, const stoke::CpuState& b,
            const stoke::CpuState& fa, const stoke::CpuState& fb,
            const std::string& msg) {
  if (failed) {
    std::cout << std::endl << "SpreadsheetReadWriteSetFuzzTest Failed!" << std::endl << std::endl;
    std::cout << "Instruction: " << instr << std::endl;
    std::cout << "  Maybe read set:  " << instr.maybe_read_set() << std::endl;
    std::cout << "  Must read set:   " << instr.must_read_set() << std::endl;
    std::cout << "  Maybe write set: " << instr.maybe_write_set() << std::endl;
    std::cout << "  Must write set:  " << instr.must_write_set() << std::endl;
    std::cout << "  Maybe undef set: " << instr.maybe_undef_set() << std::endl;
    std::cout << "  Must undef set:  " << instr.must_undef_set() << std::endl;
    cout << std::endl;
    std::cout << msg << std::endl;
    std::cout << "State 1:" << std::endl << std::endl;
    std::cout << a << std::endl << std::endl;
    std::cout << "State 2:" << std::endl << std::endl;
    std::cout << b << std::endl << std::endl;
    std::cout << "Final State 1:" << std::endl << std::endl;
    std::cout << fa << std::endl << std::endl;
    std::cout << "Final State 2:" << std::endl << std::endl;
    std::cout << fb << std::endl << std::endl;
    ADD_FAILURE();
  }
}

/** Returns the correct index to use when looking up a general purpose register in Regs. */
size_t gp_reg_index(x64asm::R r) {
  switch (r.type()) {
  case x64asm::Type::RH:
    return r-4;
  default:
    return r;
  }
}

/** This test generates random instructions, and then performs the following
test:  It generates two random states, that agree in all the registers that
the instruction reads (but are both random otherwise), and then executes
the instruction.  The two resulting states are then checked to agree on the
values the instruction writes.
For example, this uncovers errors in the must/maybe read/write/undef sets. */

struct SpreadsheetReadWriteSetFuzzCallbackInfo {
  // Berkeley deserves eternal punishment for the name of this struct.
  size_t success_count;
};

}
