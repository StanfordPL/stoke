// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#include "src/symstate/memory.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

uint64_t SymMemory::temp_ = 0;

void SymMemory::write(SymBitVector address, SymBitVector value, uint16_t size) {
  MemoryWrite mw({ address, value, size });
  writes_.push_back(mw);
}

SymBitVector SymMemory::read(SymBitVector address, uint16_t size) const {

  // At the beginning, we know nothing, so initialize to undefined
  SymBitVector value = SymBitVector::var(size, "READ_" + to_string(temp()));


  // Loop through the writes one at a time.
  // For each write, figure out how it overlaps with this read.
  // Update the 'value' variable appropriately.

  for (auto write : writes_) {

    // Case 0:
    // Write and read are the same address
    // (but possibly a different size)
    if(size == write.size) {
      // Case 0A: write and read are the same size.  Easy!
      // W: __________
      // R: __________

      value = (address == write.address).ite(write.value, value);
    } else if (size > write.size) {
      // Case 0B: read is bigger than the write
      // W: __________
      // R: _________________

      value = (address == write.address).ite(
                value[size - 1][write.size] || write.value[write.size - 1][0],
                value
              );
    } else if (write.size > size) {
      // Case 0C: write is bigger than the read
      // W: _________________
      // R: __________

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
    for(uint16_t i = 8; i < min_size; i = i + 8) {
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
    for(uint16_t i = 8; i < min_size; i += 8) {
      value = (address == write.address + SymBitVector::constant(64, i/8)).ite(
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
      for(uint16_t i = min_x; i <= max_x; i = i + 8) {
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
      for(uint16_t i = min_x; i <= max_x; i = i + 8) {
        value = (address + SymBitVector::constant(64, i/8) == write.address).ite(
                  value[size - 1][i + write.size] || write.value[write.size-1][0] || value[i-1][0],
                  value
                );
      }
    }
  }


  return value;

}

