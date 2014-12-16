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

/* Swaps two (address, size) pairs */
void swap(uint64_t& address1, uint16_t& size1, uint64_t& address2, uint16_t& size2) {
  uint64_t tmpa = address1;
  address1 = address2;
  address2 = tmpa;

  uint64_t tmps = size1;
  size1 = size2;
  size2 = tmps;
}

/** Takes a *sorted* list of addresses along with the size of the read/write.
 * Determines the stack/heap bounds if we put the first 'pos' addresses in the
 * heap and the remaining 'count - pos' addresses in the stack.  Also checks
 * that the split is "valid", i.e. no read is both in the stack/heap; this
 * check is needed because the sorting doesn't account for overlapping reads
 * (this is the boolean returned). */
bool compute_split(vector<pair<uint64_t, uint16_t>> addresses, size_t pos,
                   uint64_t& heap_min, uint64_t& heap_size, 
                   uint64_t& stack_min, uint64_t& stack_size) {

  size_t count = addresses.size();

  // Compute heap bounds
  if(pos) {
    heap_min = addresses[0].first;
    heap_size = addresses[pos-1].first + addresses[pos-1].second - heap_min;
  } else {
    heap_min = 0;
    heap_size = 0;
  }

  // Compute stack bounds
  if(pos == count) {
    stack_min = 0;
    stack_size = 0;
  } else {
    stack_min = addresses[pos].first;
    stack_size = addresses[count-1].first + addresses[count-1].second - stack_min;
  }

  // Check the bounds work
  for(auto p : addresses) {
    if (p.first >= heap_min && (p.first + p.second) <= (heap_min + heap_size - 1))
      continue;
    if (p.first >= stack_min && (p.first + p.second) <= (stack_min + stack_size - 1))
      continue;

    return false;
  }

  return true;
}

void CpuState::convert_from_model(SMTSolver& smt, string& name_suffix, 
                                  SymMemory* memory, SymMemory* memory2) {

  // Get the values of registers
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

  // Figure out error code
  if(smt.get_model_bool("sigbus" + name_suffix)) {
    code = ErrorCode::SIGBUS_;
  } else if (smt.get_model_bool("sigfpe" + name_suffix)) {
    code = ErrorCode::SIGFPE_;
  } else if (smt.get_model_bool("sigsegv" + name_suffix)) {
    code = ErrorCode::SIGSEGV_;
  } else {
    code = ErrorCode::NORMAL;
  }

  // Figure out memory, if needed (this is the last thing).  We can get a list
  // of concrete addresses accessed, and need to split these addresses into
  // heap/stack.  My goal is to just optimize the size of each of the heap and
  // the stack; the algorithm is to just sort the addresses and try every
  // possible place to split them.  This is O(n^2) where n is the number of
  // addresses.  The sorting O(n*log n) is dominated by the loop where we check
  // the goodness of each split; calculating the goodness costs O(n) and we
  // need to do this O(n) times.

  if(!memory && !memory2)
    return;

  auto concrete = vector<pair<uint64_t, uint16_t>>();
  if(memory) {
    for(auto p : memory->get_address_vars()) {
      concrete.push_back(pair<uint64_t, uint16_t>(smt.get_model_bv(p.first, 1).get_fixed_quad(0), p.second));
    }
  }
  if(memory2) {
    for(auto p : memory2->get_address_vars()) {
      concrete.push_back(pair<uint64_t, uint16_t>(smt.get_model_bv(p.first, 1).get_fixed_quad(0), p.second));
    }
  }



  auto compare = [] (const pair<uint64_t, uint16_t>& p1, const pair<uint64_t, uint16_t>& p2) {
    if(p1.first - p2.first == 0)
      return (uint64_t)(p1.second - p2.second);
    return p1.first - p2.first;
  };
  sort(concrete.begin(), concrete.end(), compare);

  uint64_t heap_min, heap_size, stack_min, stack_size;
  bool ok = compute_split(concrete, 0, heap_min, heap_size, stack_min, stack_size);
  assert(ok);

  uint64_t best = heap_size + stack_size;
  size_t best_index = 0;
  for (size_t i = 1; i < concrete.size(); ++i) {
    ok = compute_split(concrete, i, heap_min, heap_size, stack_min, stack_size);
    if(!ok)
      continue;
    uint64_t quality = heap_size + stack_size;
    if(quality < best) {
      best = quality;
      best_index = i;
    }
  }

  ok = compute_split(concrete, best_index, heap_min, heap_size, stack_min, stack_size);
  assert(ok);

  stack.resize(stack_min, stack_size); //base, size
  heap.resize(heap_min, heap_size);  //base, size
  cout << "STACK_MIN= " << stack_min << " STACK_SIZE=" << stack_size << endl;
  cout << "HEAP_MIN= " << heap_min << " HEAP_SIZE=" << heap_size << endl;

  // Now set the defined bits
  for(auto p : concrete) {
    cout << "Checking out " << hex << p.first << " (size " << p.second << ")" << endl;
    if(stack.in_range(p.first) && stack.in_range(p.first + p.second - 1)) {
      cout << " - it's in the stack" << endl;
      for(size_t i = 0; i < p.second; ++i) {
        stack.set_defined(p.first + i, true);
      }
    }
    if(heap.in_range(p.first) && heap.in_range(p.first + p.second - 1)) {
      cout << " - it's in the heap" << endl;
      for(size_t i = 0; i < p.second; ++i) {
        heap.set_defined(p.first + i, true);
      }
    }
  }

}

} // namespace stoke



