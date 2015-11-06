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


#include "src/symstate/memory/deprecated.h"
#include "src/symstate/state.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

uint64_t read_quadword(const Memory& m, uint64_t base, uint64_t i) {

  uint64_t result = 0;

  for (uint64_t j = 0; j < 8; ++j) {
    result = ((uint64_t)m[base+8*i+j] << j*8) | result;
  }

  return result;
}

SymBool DeprecatedMemory::write(SymBitVector address, SymBitVector value, uint16_t size, size_t line_no) {

  //cout << "Writing " << value << " to " << address << " (size " << size << ")" << endl;

  SymBitVector addr_var = SymBitVector::tmp_var(64);
  SymBitVector value_var = SymBitVector::tmp_var(size);

  state_->constraints.push_back(addr_var == address);
  state_->constraints.push_back(value_var == value);
  state_->constraints.push_back(address < SymBitVector::constant(64, 0-size/8-1));

  MemoryAccess mw({ addr_var, value_var, size, line_no });
  writes_.push_back(mw);

  if (heap_.type()) {
    return (addr_var < SymBitVector::constant(64, heap_start_)) |
           (addr_var > SymBitVector::constant(64, heap_start_ + heap_size_ - size/8));
  } else {
    return SymBool::_false();
  }
}

void DeprecatedMemory::init_concrete(const Memory& stack, const Memory& heap) {

  Memory my_mem;
  if (heap.size()) {
    my_mem = heap;
  } else {
    my_mem = stack;
  }

  heap_start_ = my_mem.lower_bound();
  heap_size_  = 8*my_mem.size();

  if (!heap_size_)
    return;

  heap_ = SymBitVector::constant(64, read_quadword(my_mem, heap_start_, 0));
  for (size_t i = 1; i < my_mem.size()/8; ++i) {
    heap_ = SymBitVector::constant(64, read_quadword(my_mem, heap_start_, i)) || heap_;
  }

}

pair<SymBitVector, SymBool> DeprecatedMemory::read(SymBitVector address, uint16_t size, size_t line_no) {

  //cout << "Reading from " << address << " (size " << size << ")" << endl;

  SymBitVector addr_var = SymBitVector::tmp_var(64);
  SymBitVector value = SymBitVector::tmp_var(size);

  state_->constraints.push_back(addr_var == address);

  state_->constraints.push_back(address < SymBitVector::constant(64, 0-size/8-1));


  MemoryAccess mw({ addr_var, value, size, line_no });
  reads_.push_back(mw);

  SymBool segv = SymBool::_false();


  // Check if this value was concretely initialized in heap.
  if (heap_.type() != SymBitVector::NONE) {
    segv = (address < SymBitVector::constant(64, heap_start_)) |
           (address > SymBitVector::constant(64, heap_start_ + heap_size_ - size/8));

    auto offset = (address - SymBitVector::constant(64, heap_start_)) <<
                  SymBitVector::constant(64, 3);

    if (heap_size_ > 64) {
      auto zeros = SymBitVector::constant(heap_size_ - 64, 0);
      value = (heap_ >> (zeros || offset))[size-1][0];
    } else {
      value = (heap_ >> offset)[size-1][0];
    }
  }


  // Loop through the writes one at a time.
  // For each write, figure out how it overlaps with this read.
  // Update the 'value' variable appropriately.

  for (auto write : writes_) {

    bool must_overlap = false;

    if (analysis_) {
      if (!analysis_->may_overlap(write.line_no, line_no)) {
        //cout << "Write @" << write.address << " on line " << write.line_no << " cannot overlap" << std::endl;
        continue;
      }

      must_overlap = analysis_->must_overlap(write.line_no, line_no);
      if (must_overlap && write.size == size) {
        value = write.value;
        //cout << "Write @" << write.address << " on line " << write.line_no << " must overlap" << std::endl;
        continue;
      }
    }

    //cout << "Write @" << write.address << " on line " << write.line_no << " has no aliasing info" << std::endl;

    // Case 0:
    // Write and read are the same address
    // (but possibly a different size)
    if (size == write.size) {
      // Case 0A: write and read are the same size.  Easy!
      // W: __________
      // R: __________

      value = (address == write.address).ite(write.value, value);
    } else if (size > write.size) {
      // Case 0B: read is bigger than the write
      // W: __________
      // R: _________________
      if (must_overlap) {
        value = value[size-1][write.size] || write.value[write.size - 1][0];
        continue;
      }

      value = (address == write.address).ite(
                value[size - 1][write.size] || write.value[write.size - 1][0],
                value
              );
    } else if (write.size > size) {
      // Case 0C: write is bigger than the read
      // W: _________________
      // R: __________
      if (must_overlap) {
        value = write.value[size-1][0];
        continue;
      }

      value = (address == write.address).ite(
                write.value[size - 1][0],
                value
              );
    }



    // Case 1A:
    // There's a section of overlap on the left.
    // W:         _____________
    // R: _____________
    uint16_t min_size = min(write.size, size);
    for (uint16_t i = 8; i < min_size; i = i + 8) {
      value = (address + SymBitVector::constant(64, (size-i)/8) == write.address).ite(
                write.value[i-1][0] || value[size - i - 1][0],
                value);
    }

    // Case 1B:
    // There's a section of overlap on the left, and align on right.
    // W:         _____________
    // R: _____________________
    if (size > write.size) {
      value = (address + SymBitVector::constant(64, (size - write.size)/8) == write.address).ite(
                write.value || value[size - write.size - 1][0],
                value
              );
    }


    // Case 2A:
    // There's a section of overlap on the right.
    // W:         _____________
    // R:               _____________
    //            a     b     c     d
    for (uint16_t i = 8; i < min_size; i += 8) {
      value = (address == write.address + SymBitVector::constant(64, (write.size - i)/8)).ite(
                value[size-1][i] || write.value[write.size-1][write.size-i],
                value);
    }


    // Case 2B:
    // There's a section of overlap on the left, and align on right.
    // W: _____________________
    // R:         _____________
    if (size < write.size) {
      value = (address == SymBitVector::constant(64, (write.size - size)/8) + write.address).ite(
                write.value[write.size-1][write.size - size],
                value
              );
    }


    // Case 3:
    // The write contains the read
    // W:         _________________
    // R:                  _____
    //            |<- i ->|
    if (size < write.size - 8) {
      uint16_t min_x = 8;
      uint16_t max_x = write.size - 1 - size;
      for (uint16_t i = min_x; i <= max_x; i = i + 8) {
        value = (write.address + SymBitVector::constant(64, i/8) == address).ite(
                  write.value[i + size - 1][i],
                  value
                );
      }
    }

    // Case 4:
    // The read contains the write
    // W:              _____
    // R:     _________________
    //        |<- i ->|
    if (write.size < size - 8) {
      int min_x = 8;
      int max_x = size - 1 - write.size;
      for (uint16_t i = min_x; i <= max_x; i = i + 8) {
        value = (address + SymBitVector::constant(64, i/8) == write.address).ite(
                  value[size - 1][i + write.size] || write.value[write.size-1][0] || value[i-1][0],
                  value
                );
      }
    }
  }

  return pair<SymBitVector, SymBool>(value, segv);

}


vector<pair<string, uint16_t>> DeprecatedMemory::get_address_vars() const {
  vector<pair<string, uint16_t>> list;
  for (size_t i = 0; i < writes_.size(); ++i) {
    assert(writes_[i].value.ptr->type() == SymBitVector::VAR);
    const auto* var = static_cast<const SymBitVectorVar*>(writes_[i].address.ptr);
    list.push_back(std::pair<std::string, uint16_t>(var->name_, var->size_));
  }
  for (size_t i = 0; i < reads_.size(); ++i) {
    assert(reads_[i].value.ptr->type() == SymBitVector::VAR);
    const auto* var = static_cast<const SymBitVectorVar*>(reads_[i].address.ptr);
    list.push_back(std::pair<std::string, uint16_t>(var->name_, var->size_));
  }
  return list;
}

