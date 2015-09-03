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

#include <string>
#include <iostream>
#include <sstream>
#include <vector>
#include <map>
#include <list>
#include <cassert>
#include <initializer_list>

#include "src/state/cpu_state.h"
#include "src/symstate/bitvector.h"
#include "src/validator/validator.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;


bool Validator::is_supported(Instruction& i) const {

  return is_supported(i.get_opcode());
}

bool Validator::is_supported(const Opcode& op) const {
  return support_table_[(int)op];
}

void Validator::setup_support_table() {

  vector<string> att_opcodes = handler_.full_support_opcodes();

  for(size_t i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    Opcode op = (Opcode)i;
    string att = Handler::att_[op];
    support_table_[i] = false;
    if(find(att_opcodes.begin(), att_opcodes.end(), att) == att_opcodes.end()) {
      continue;
    }
    auto instr = Instruction(op);
    size_t arity = instr.arity();
    bool args_ok = true;
    for(size_t i = 0; i < arity; ++i) {
      auto type = instr.type(i);
      switch(type) {
      case Type::IMM_8:
      case Type::IMM_16:
      case Type::IMM_32:
      case Type::IMM_64:
      case Type::ZERO:
      case Type::ONE:
      case Type::THREE:
      case Type::M_8:
      case Type::M_16:
      case Type::M_32:
      case Type::M_64:
      case Type::M_128:
      case Type::M_256:
      case Type::R_8:
      case Type::R_16:
      case Type::R_32:
      case Type::R_64:
      case Type::RH:
      case Type::AL:
      case Type::CL:
      case Type::AX:
      case Type::DX:
      case Type::EAX:
      case Type::RAX:
      case Type::XMM:
      case Type::XMM_0:
      case Type::YMM:
        break;
      default:
        args_ok = false;
        break;
      }
    }
    if(args_ok)
      support_table_[i] = true;
  }

}

void Validator::sanity_checks(const Cfg& target, const Cfg& rewrite) const {
  // Check to make sure def-ins/live-outs agree
  if (target.def_ins() != rewrite.def_ins()) {
    throw VALIDATOR_ERROR("Def-ins of target/rewrite CFGs differ");
  }
  if (target.live_outs() != rewrite.live_outs()) {
    throw VALIDATOR_ERROR("Live-outs of target/rewrite CFGs differ");
  }
  // Check that the regsets are supported, throw an error otherwise
  if(!handler_.regset_is_supported(target.def_ins())) {
    throw VALIDATOR_ERROR("Target def-in not supported.");
  }
  if(!handler_.regset_is_supported(target.live_outs())) {
    throw VALIDATOR_ERROR("Target live-out not supported.");
  }

  // Check that all the instructions are supported in target/rewrite
  for(size_t i = 0; i < 2; ++i) {
    auto& cfg = i ? target : rewrite;
    for(auto instr : cfg.get_code()) {
      if(instr.is_label_defn() || instr.is_any_jump() || instr.is_ret()) {
        continue;
      }
      else if(!is_supported(instr)) {
        stringstream ss;
        ss << "Instruction " << instr << " is unsupported.";
        throw VALIDATOR_ERROR(ss.str());
      }
    }
  }

}

/** Takes a *sorted* list of addresses along with the size of the read/write.
 * Determines the stack/heap bounds if we put the first 'pos' addresses in the
 * heap and the remaining 'count - pos' addresses in the stack.  Also checks
 * that the split is "valid", i.e. no read is both in the stack/heap; this
 * check is needed because the sorting doesn't account for overlapping reads
 * (this is the boolean returned). */
bool compute_split(vector<pair<uint64_t, BitVector>> addresses, size_t pos,
                   uint64_t& heap_min, uint64_t& heap_size,
                   uint64_t& stack_min, uint64_t& stack_size) {

  size_t count = addresses.size();

  cout << "Splitting: @ " << pos << endl;
  for(auto it : addresses) {
    cout << it.first << " -> " << it.second.num_fixed_bytes() << endl;
  }

  // Compute heap bounds
  if(pos) {
    heap_min = addresses[0].first;
    heap_size = addresses[pos-1].first + addresses[pos-1].second.num_fixed_bytes() - heap_min;
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
    stack_size = addresses[count-1].first + addresses[count-1].second.num_fixed_bytes() - stack_min;
  }

  cout << "Initial heap: " << hex << heap_min << "+" << heap_size << " stack: " << stack_min << "+" << stack_size << endl;

  // Check the bounds work
  for(auto p : addresses) {
    if (p.first >= heap_min && (p.first + p.second.num_fixed_bytes()) <= (heap_min + heap_size))
      continue;
    if (p.first >= stack_min && (p.first + p.second.num_fixed_bytes()) <= (stack_min + stack_size))
      continue;

    cout << "A: " << (p.first >= heap_min) << endl;
    cout << "B: " << ((p.first + p.second.num_fixed_bytes() <= heap_min + heap_size)) << endl;
    cout << "C: " << ((p.first >= stack_min)) << endl;
    cout << "D: " << ((p.first + p.second.num_fixed_bytes()) <= (stack_min + stack_size)) << endl;
    cout << "p.first + p.second.num_fixed_bytes() = " << (p.first + p.second.num_fixed_bytes()) << endl;
    cout << "heap_min + heap_size = " << (heap_min + heap_size) << endl;
    cout << "stack_min + stack_size = " << (stack_min + stack_size) << endl;
    cout << "Address " << p.first << " of size " << p.second.num_fixed_bytes() << " didn't fit." << endl;
    return false;
  }

  cout << "Final heap: " << heap_min << "+" << heap_size << " stack: " << stack_min << "+" << stack_size << endl;

  return true;
}

bool Validator::memory_map_to_testcase(std::map<uint64_t, BitVector> concrete, CpuState& cs) {

  // We can get a list of concrete addresses accessed, and need to split these
  // addresses into heap/stack.  My goal is to just optimize the size of each
  // of the heap and the stack; the algorithm is to just sort the addresses and
  // try every possible place to split them.  This is O(n^2) where n is the
  // number of addresses.  The sorting O(n*log n) is dominated by the loop
  // where we check the goodness of each split; calculating the goodness costs
  // O(n) and we need to do this O(n) times.

  cs.stack.resize(0x700000000, 0);
  cs.heap.resize(0x100000000, 0);
  cs.data.resize(0x000000000, 0);

  if (concrete.size() == 0) {
    // no memory
    return true;
  }

  vector<pair<uint64_t, BitVector>> concrete_vector;
  concrete_vector.insert(concrete_vector.begin(), concrete.begin(), concrete.end());

  auto compare = [] (const pair<uint64_t, BitVector>& p1, const pair<uint64_t, BitVector>& p2) {
    if(p1.first == p2.first)
      return p1.second.num_fixed_bytes() < p2.second.num_fixed_bytes();
    return p1.first < p2.first;
  };
  sort(concrete_vector.begin(), concrete_vector.end(), compare);

  uint64_t heap_min, heap_size, stack_min, stack_size;
  bool ok = compute_split(concrete_vector, 0, heap_min, heap_size, stack_min, stack_size);
  assert(ok);

  uint64_t best = heap_size + stack_size;
  size_t best_index = 0;
  for (size_t i = 1; i <= concrete_vector.size(); ++i) {
    ok = compute_split(concrete_vector, i, heap_min, heap_size, stack_min, stack_size);
    if(!ok)
      continue;
    uint64_t quality = heap_size + stack_size;
    if(quality < best && heap_size < quality && stack_size < quality) {
      best = quality;
      best_index = i;
    }
  }

  ok = compute_split(concrete_vector, best_index, heap_min, heap_size, stack_min, stack_size);
  assert(ok);

  if(stack_size > 4096 || heap_size > 4096) {
    // Failed to allocate memory, oh well.
    cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
    cout << "Allocating heap/stack failed for these addresses:" << endl;
    for(auto pair : concrete_vector) {
      cout << pair.first << " (of size " << pair.second.num_fixed_bytes() << ")" << endl;
    }
    cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
    return false;
  }

  cs.stack.resize(stack_min, stack_size); //base, size
  cs.heap.resize(heap_min, heap_size);  //base, size

  // Now set the defined bits
  for(auto p : concrete) {
    for(size_t k = 0; k < 2; ++k) {
      auto& mem = k ? cs.stack : cs.heap;
      if(mem.in_range(p.first) && mem.in_range(p.first + p.second.num_fixed_bytes() - 1)) {
        for(size_t i = 0; i < p.second.num_fixed_bytes(); ++i) {
          mem.set_valid(p.first + i, true);
          mem[p.first+i] = p.second.get_fixed_byte(i);
        }
      }
    }
  }

  return true;

}

CpuState Validator::state_from_model(SMTSolver& smt, const string& name_suffix) {
  CpuState cs;

  // Get the values of registers
  for(size_t i = 0; i < r64s.size(); ++i) {
    stringstream name;
    name << r64s[i] << name_suffix;
    cs.gp[r64s[i]] = smt.get_model_bv(name.str(), 64);
  }

  for(size_t i = 0; i < ymms.size(); ++i) {
    stringstream name;
    name << ymms[i] << name_suffix;
    cs.sse[ymms[i]] = smt.get_model_bv(name.str(), 256);
  }

  for(size_t i = 0; i < eflags.size(); ++i) {
    if(!cs.rf.is_status(eflags[i].index()))
      continue;

    stringstream name;
    name << eflags[i] << name_suffix;
    cs.rf.set(eflags[i].index(), smt.get_model_bool(name.str()));
  }

  // Figure out error code
  if(smt.get_model_bool("sigbus" + name_suffix)) {
    cs.code = ErrorCode::SIGBUS_;
  } else if (smt.get_model_bool("sigfpe" + name_suffix)) {
    cs.code = ErrorCode::SIGFPE_;
  } else if (smt.get_model_bool("sigsegv" + name_suffix)) {
    cs.code = ErrorCode::SIGSEGV_;
  } else {
    cs.code = ErrorCode::NORMAL;
  }

  return cs;
}

