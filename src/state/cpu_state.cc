// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"

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

  return os;
}

istream& CpuState::read_text(istream& is) {
  string ignore;

  code = ErrorCode::NORMAL;

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

  // Stack addresses should be strictly greater than heap addresses
  if (stack.lower_bound() <= heap.upper_bound()) {
    is.setstate(ios::failbit);
  }

  return is;
}

void CpuState::convert_from_model(SMTSolver& smt, string& name_suffix) {

  stack.resize(0, 0); //base, size
  heap.resize(0, 0);  //base, size

  for(size_t i = 0; i < r64s.size(); ++i) {
    stringstream name;
    name << r64s[i] << name_suffix;
    gp[r64s[i]] = smt.get_model_bv(name.str(), 1);
  }

  for(size_t i = 0; i < ymms.size(); ++i) {
    stringstream name;
    name << ymms[i] << name_suffix;
    sse[ymms[i]] = smt.get_model_bv(name.str(), 4);
  }

  for(size_t i = 0; i < eflags.size(); ++i) {
    if(!rf.is_status(eflags[i].index()))
      continue;

    stringstream name;
    name << eflags[i] << name_suffix;
    rf.set(eflags[i].index(), smt.get_model_bool(name.str()));
  }

}

} // namespace stoke



