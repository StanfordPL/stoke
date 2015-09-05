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
#include <regex>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/symstate/memory.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {


/** Get the memory address corresponding to a memory operand */
uint64_t CpuState::get_addr(M8 ref) const {

  uint64_t address = 0;

  // get the displacement
  uint32_t displacement = ref.get_disp();

  // sign extend to 64 bits
  if(displacement & 0x80000000) {
    address = 0xffffffff00000000 | (uint64_t)displacement;
  } else {
    address = (uint64_t) displacement;
  }

  // check if memory has base
  if(ref.contains_base()) {
    address = address + gp[ref.get_base()].get_fixed_quad(0);
  }

  // check for index
  if (ref.contains_index()) {
    uint64_t index = gp[ref.get_index()].get_fixed_quad(0);

    switch(ref.get_scale()) {
    case Scale::TIMES_1:
      address = address + index;
      break;
    case Scale::TIMES_2:
      address = address + (index << 1);
      break;
    case Scale::TIMES_4:
      address = address + (index << 2);
      break;
    case Scale::TIMES_8:
      address = address + (index << 3);
      break;
    default:
      assert(false);
      break;
    }
  }

  // check for 32-bit override
  if(ref.addr_or()) {
    address = address & 0xffffffff;
  }

  return address;

}

/** Get the memory address corresponding to an instruction */
uint64_t CpuState::get_addr(x64asm::Instruction instr) const {
  assert(instr.is_memory_dereference());

  if(instr.is_explicit_memory_dereference()) {
    return get_addr(instr.get_operand<M8>(instr.mem_index()));
  } else if (instr.is_push()) {
    auto arg = instr.get_operand<Operand>(0);
    return gp[x64asm::rsp].get_fixed_quad(0) - arg.size()/8;
  } else if (instr.is_pop()) {
    return gp[x64asm::rsp].get_fixed_quad(0);
  } else if (instr.is_ret()) {
    return gp[x64asm::rsp].get_fixed_quad(0);
  }

  // instruction not supported
  assert(false);
  return 0;
}



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
  os << endl;
  os << endl;

  os << segments.size() << " more segment(s)" << endl;

  for(auto seg: segments) {
    os << endl;
    os << endl;
    seg.write_text(os);
  }

  return os;
}

// This reads the rest of the memory of the testcase.  We only do this if the
// segments are listed for backward compatibility.  One day someone can merge
// this code into the main algorithm, once we no longer need old files -- BRC.
istream& CpuState::read_text_segments(istream& is) {
  string s;

  int n;
  is >> n;
  getline(is, s);
  if(s != " more segment(s)") {
    fail(is) << "Expected segment count.  Got \"" << s << "\"." << endl;
    return is;
  }

  for(int i = 0; i < n; ++i) {
    Memory m;
    is >> ws;
    m.read_text(is);
    segments.push_back(m);
  }
  is >> ws;

  return is;
}

istream& CpuState::read_text(istream& is) {
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

  string s;
  int temp;

  is >> s >> temp;
  if(!regex_match(s, regex("SIGNAL"))) {
    fail(is) << "Expected \"SIGNAL\" but got \"" << s << "\"" << endl;
    return is;
  }
  getline(is, s);
  if(!regex_match(s, regex(" *\\[.*\\]"))) {
    fail(is) << "Expected '[" << readable_error_code(code) << "]' (or similar) but got "
             << "'" << s << "'" << endl;
    return is;
  }

  code = static_cast<ErrorCode>(temp);
  is >> ws;

  gp.read_text(is, gps);
  is >> ws;

  sse.read_text(is, sses);
  is >> ws;

  rf.read_text(is, rflags);
  is >> ws;

  stack.read_text(is);
  is >> ws;

  heap.read_text(is);
  is >> ws;

  data.read_text(is);
  is >> ws;

  // Figure out of we're reading an old version of the testcase format (in
  // which case we're done), or if there's more to do.  One day we can skip the
  // check and just assume the new version. -- BRC
  char future = is.peek();
  if(future >= '0' && future <= '9') {
    read_text_segments(is);
  }

  return is;
}

ostream& CpuState::write_bin(ostream& os) const {
  os.write((const char*)&code, sizeof(ErrorCode));
  gp.write_bin(os);
  sse.write_bin(os);
  rf.write_bin(os);
  stack.write_bin(os);
  heap.write_bin(os);
  data.write_bin(os);

  // Write other segments
  size_t seg_count = segments.size();
  os.write((const char*)&seg_count, sizeof(size_t));
  for(auto seg : segments)
    seg.write_bin(os);

  return os;
}

istream& CpuState::read_bin(istream& is) {
  is.read((char*)&code, sizeof(ErrorCode));
  gp.read_bin(is);
  sse.read_bin(is);
  rf.read_bin(is);
  stack.read_bin(is);
  heap.read_bin(is);
  data.read_bin(is);

  // Read other segments
  size_t seg_count;
  is.read((char*)&seg_count, sizeof(size_t));
  for(size_t i = 0; i < seg_count; ++i) {
    Memory seg;
    seg.read_bin(is);
    segments.push_back(seg);
  }


  return is;
}

} // namespace stoke



