// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_MEMORY_EQUALITY_H
#define STOKE_SRC_VALIDATOR_INVARIANT_MEMORY_EQUALITY_H

#include "src/ext/x64asm/include/x64asm.h"
#include "src/symstate/memory/flat.h"
#include "src/symstate/memory/arm.h"
#include "src/validator/invariant.h"

namespace stoke {

class MemoryEqualityInvariant : public Invariant {

public:
  using Invariant::check;

  MemoryEqualityInvariant() {
  }

  MemoryEqualityInvariant(const std::vector<Variable>& locations) : excluded_locations_(locations) {

  }

  SymBool operator()(SymState& left, SymState& right, size_t& number) {

    set_di(left, number, false);
    set_di(right, number, true);

    if (left.memory == 0 && right.memory == 0)
      return SymBool::_true();

    auto flat_left = dynamic_cast<FlatMemory*>(left.memory);
    if (flat_left != 0) {
      assert(dynamic_cast<FlatMemory*>(right.memory) != 0);
      return flat_left->equality_constraint(*static_cast<FlatMemory*>(right.memory));
    }

    auto arm_left = dynamic_cast<ArmMemory*>(left.memory);
    if (arm_left != 0) {
      assert(dynamic_cast<ArmMemory*>(right.memory) != 0);
      return arm_left->equality_constraint(*static_cast<ArmMemory*>(right.memory));
    }

    return SymBool::_true();
  }

  std::ostream& write(std::ostream& os) const {
    if(excluded_locations_.size() == 0)
      os << "(t/r agree on memory)";
    else {
      os << "(t/r agree on memory except at ";
      for(auto v : excluded_locations_)
        os << v << " ";
      os << ")";
    }
    return os;
  }

  bool check(const CpuState& target, const CpuState& rewrite) const {

    if (target.segments.size() != rewrite.segments.size())
      return false;
    for (size_t i = 0; i < target.segments.size(); ++i) {
      if (!check_segment(target.segments[i], rewrite.segments[i], target, rewrite)) {
        return false;
      }
    }
    return check_segment(target.heap, rewrite.heap, target, rewrite) &&
           check_segment(target.data, rewrite.data, target, rewrite);
    /*       target.stack == rewrite.stack && */
  }

  virtual std::ostream& serialize(std::ostream& out) const {
    out << "MemoryEqualityInvariant" << std::endl;
    out << excluded_locations_.size() << std::endl;
    for(auto it : excluded_locations_) {
      it.serialize(out);
    }
    return out;
  }

  MemoryEqualityInvariant(std::istream& is) { 
    CHECK_STREAM(is);
    size_t count;
    is >> count;
    CHECK_STREAM(is);
    for(size_t i = 0; i < count; ++i) {
      Variable v(is);
      excluded_locations_.push_back(v);
      CHECK_STREAM(is);
    }

  }

  std::shared_ptr<Invariant> clone() const override {
    return std::make_shared<MemoryEqualityInvariant>(excluded_locations_);
  }

  virtual bool is_critical() {
    return true;
  }


  std::vector<Variable> get_excluded_locations() const {
    return excluded_locations_;
  }


  std::vector<SymBitVector> get_excluded_addresses(SymState& left, SymState& right) const {
    std::vector<SymBitVector> excluded_addrs;
    for(auto v : excluded_locations_) {
      auto start = v.get_addr(left, right);
      for(size_t i = 0; i < v.size; ++i) {
        auto excluded = start + SymBitVector::constant(64, i);
        excluded_addrs.push_back(excluded);
      }
    }
    return excluded_addrs;
  }


private:

  /** Check if two segments are equal, except on specified locations. */
  bool check_segment(const Memory& a, const Memory& b, const CpuState& target, const CpuState& rewrite) const {
    if(a.lower_bound() != b.lower_bound())
      return false;
    if(a.size() != b.size())
      return false;
    for(uint64_t i = 0; i < a.size(); ++i) {
      uint64_t addr = a.lower_bound() + i;
      if(!a.is_valid(addr))
        continue;
      
      bool excluded = false;
      for(auto v : excluded_locations_) {
        uint64_t start = v.get_addr(target, rewrite);
        uint64_t end = start + v.size;

        if(addr >= start && addr < end) {
          excluded = true;
          break;
        }
      }
      
      if(!excluded)
        if(a[addr] != b[addr])
          return false;
    }

    return true;
  }

  std::vector<Variable> excluded_locations_;

};

} // namespace stoke



#endif
