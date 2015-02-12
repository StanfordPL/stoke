// Copyright 2013-2015 Stanford University
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

#include <algorithm>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/symstate/memory.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

ostream& CpuState::write_text(ostream& os) const {
  const char* gps[] = {
    "%rax", "%rcx", "%rdx", "%rbx", "%rsp", "%rbp", "%rsi", "%rdi",
    "%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15"
  };

  // SSE register names will vary depending on target
  const char* sses[] = {
    "%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5", "%ymm6", "%ymm7",
    "%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14", "%ymm15"
  };

  const char* rflags[] = {
    "%cf", "%1", "%pf", "%0", "%af", "%0", "%zf", "%sf", "%tf", "%if",
    "%df", "%of", "%iopl[0]", "%iopl[1]", "%nt", "%0", "%rf", "%vm", "%ac", "%vif",
    "%vip", "%id"
  };

  os << "SIGNAL " << static_cast<int>(code) << " [" << readable_error_code(code) << "]";
  os << endl;
  os << endl;

  sym_table.write_text(os);
  os << endl;
  os << endl;

  gp.write_text(os, gps, 5);
  os << endl;
  os << endl;

  sse.write_text(os, sses, 3);
  os << endl;
  os << endl;

  rf.write_text(os, rflags, 1);
  os << endl;
  os << endl;

  stack.write_text(os);
  os << endl;
  os << endl;

  heap.write_text(os);
  os << endl;
  os << endl;

  data.write_text(os);

  return os;
}

istream& CpuState::read_text(istream& is) {
  string ignore;

  int temp;
  is >> ignore >> temp;
  code = static_cast<ErrorCode>(temp);
  while (is.peek() != 10 && is.good()) is.get();
  getline(is, ignore);
  getline(is, ignore);

  sym_table.read_text(is);
  getline(is, ignore);
  getline(is, ignore);

  gp.read_text(is);
  getline(is, ignore);
  getline(is, ignore);

  sse.read_text(is);
  getline(is, ignore);
  getline(is, ignore);

  rf.read_text(is);
  getline(is, ignore);
  getline(is, ignore);

  stack.read_text(is);
  getline(is, ignore);
  getline(is, ignore);

  heap.read_text(is);
  getline(is, ignore);
  getline(is, ignore);

  data.read_text(is);

  if (!check()) {
    is.setstate(ios::failbit);
  }

  return is;
}

ostream& CpuState::write_bin(ostream& os) const {
  os.write((const char*)&code, sizeof(ErrorCode));
  sym_table.write_bin(os);
  gp.write_bin(os);
  sse.write_bin(os);
  rf.write_bin(os);
  stack.write_bin(os);
  heap.write_bin(os);
  data.write_bin(os);

  return os;
}

istream& CpuState::read_bin(istream& is) {
  is.read((char*)&code, sizeof(ErrorCode));
  sym_table.read_bin(is);
  gp.read_bin(is);
  sse.read_bin(is);
  rf.read_bin(is);
  stack.read_bin(is);
  heap.read_bin(is);
  data.read_bin(is);

  if (!check()) {
    is.setstate(ios::failbit);
  }

  return is;
}

bool CpuState::check() const {
  // Stack addresses should be strictly greater than heap addresses
  if (stack.lower_bound() <= heap.upper_bound()) {
    return false;
  }
  // Heap addresses should be strictly greater than data addresses
  if (heap.lower_bound() <= data.upper_bound()) {
    return false;
  }

  return true;
}

} // namespace stoke



