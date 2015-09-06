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

  vector<Memory> segments;

  // Create memory segments as needed so that there's no 16-byte invalid gap.
  Memory* last_segment = NULL;
  uint64_t max_addr = 0;

  // Build the first segment
  Memory first_segment;
  uint64_t first_address = concrete_vector[0].first;
  size_t size = concrete_vector[0].second.num_fixed_bytes();

  first_segment.resize(first_address, size+1);
  for(size_t i = 0; i < size; ++i) {
    first_segment.set_valid(first_address + i, true);
    first_segment[first_address + i] = concrete_vector[0].second.get_fixed_byte(i);
  }

  max_addr = first_address + size;
  segments.push_back(first_segment);
  last_segment = &segments[0];

  // Build remaining segments
  for(size_t i = 1; i < concrete_vector.size(); ++i) {
    auto pair = concrete_vector[i];
    uint64_t address = pair.first;
    size_t size = pair.second.num_fixed_bytes();

    if(address - max_addr < 32) {
      uint64_t new_size = address + size - last_segment->lower_bound() + 1;
      last_segment->resize(last_segment->lower_bound(), new_size);
    } else {
      Memory m;
      m.resize(address, size + 1);
      segments.push_back(m);
      last_segment = &segments[segments.size()-1];
    }

    for(size_t i = 0; i < size; ++i) {
      last_segment->set_valid(address + i, true);
      (*last_segment)[address + i] = pair.second.get_fixed_byte(i);
    }
    max_addr = address+size;
  }

  // If there's no segment corresponding to the stack, create one.
  switch(segments.size()) {
  case 3:
    cs.data = segments[2];
  case 2:
    cs.stack = segments[1];
  case 1:
    cs.heap = segments[0];
  default:
    break;
  }

  for(size_t i = 3; i < segments.size(); ++i) {
    cs.segments.push_back(segments[i]);
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

