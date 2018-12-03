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

#include "src/symstate/memory/flat.h"

using namespace stoke;
using namespace std;

/** Updates the memory with a write. */
SymBool FlatMemory::write(SymBitVector address, SymBitVector value, uint16_t size, DereferenceInfo deref) {

  // Ensure we don't bypass bounds
  constraints_.push_back(address <= SymBitVector::constant(64, -0x3f - size/8));
  constraints_.push_back(address >= SymBitVector::constant(64, 0x40));


  if (separate_stack_ && deref.stack_dereference) {
    stack_.write(address, value, size);
    return SymBool::_false();
  }

  //cout << "[flat] HEAP WRITE" << endl;
  // Little Endian
  // The least significant bit of value (i.e. the lowest bits) go in the lowest addresses

  for (size_t i = 0; i < size/8; ++i) {
    heap_ = heap_.update(address + SymBitVector::constant(64, i), value[8*i+7][8*i]);
  }

  // Update the access list
  auto access_var = SymBitVector::tmp_var(64);
  if (!no_constraints_)
    constraints_.push_back(access_var == address);
  access_list_[access_var.ptr] = size;

  // Get a new array variable and update the heap
  if (!no_constraints_) {
    auto new_arr = SymArray::tmp_var(64, 8);
    auto constr = heap_ == new_arr;
    constraints_.push_back(constr);
    heap_ = new_arr;
  }

  return SymBool::_false();
}

/** Reads from the memory.  Returns value and segv condition. */
std::pair<SymBitVector,SymBool> FlatMemory::read(SymBitVector address, uint16_t size, DereferenceInfo deref) {

  if (separate_stack_ && deref.stack_dereference) {
    return pair<SymBitVector,SymBool>(stack_.read(address, size), SymBool::_false());
  }

  //cout << "[flat] HEAP READ" << endl;
  // Update the access list
  auto access_var = SymBitVector::tmp_var(64);
  constraints_.push_back(access_var == address);
  access_list_[access_var.ptr] = size;

  SymBitVector value = heap_[address];

  for (size_t i = 1; i < size/8; ++i) {
    value = heap_[address + SymBitVector::constant(64, i)] || value;
  }

  return pair<SymBitVector,SymBool>(value, SymBool::_false());
}

/** Create a formula expressing these memory cells with another set. */
SymBool FlatMemory::equality_constraint(FlatMemory& other) {
  return (heap_ == other.heap_);
  //if(exclusions.size() == 0)
  
  /*
  auto& my_heap = heap_;
  auto& their_heap = other.heap_;
  auto tmp = SymBitVector::tmp_var(64);
  SymBool tmp_is_excluded = SymBool::_false();
  for(auto e : exclusions) {
    tmp_is_excluded = tmp_is_excluded | (e == tmp);
  }

  return (tmp_is_excluded | (my_heap[tmp] == their_heap[tmp])).forall({tmp}, {}); */
  //return ((heap_[tmp] != other.heap_[tmp]).implies(tmp_is_excluded)).forall({tmp},{});
}


