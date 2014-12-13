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


#ifndef _STOKE_SRC_SYMSTATE_SYM_MEMORY_H
#define _STOKE_SRC_SYMSTATE_SYM_MEMORY_H

#include "src/state/memory.h"
#include "src/symstate/bitvector.h"

namespace stoke {

class SymState;

class SymMemory {

public:

  void set_parent(SymState* ss) {
    state_ = ss;
  }

  /** Updates the memory with a write.
   *  Returns condition for segmentation fault */
  SymBool write(SymBitVector address, SymBitVector value, uint16_t size);

  /** Reads from the memory.  Returns value and segv condition. */
  std::pair<SymBitVector,SymBool> read(SymBitVector address, uint16_t size) const;

  /** Set concrete initialization values */
  void init_concrete(const Memory& stack, const Memory& heap);

private:

  /** Concrete valid heap locations at start.  Stored big-endian.  Optional.*/
  SymBitVector heap_;
  /** Concrete heap starting address */
  uint64_t heap_start_;
  /** Concrete heap size */
  uint64_t heap_size_;

  /** Data structure for saving writes */
  struct MemoryWrite {
    SymBitVector address;
    SymBitVector value;
    uint16_t size;
  };

  /** Keep track of all the memory writes */
  std::vector<MemoryWrite> writes_;


  /** Track a unique counter value */
  static uint64_t temp_;
  /** Return unique counter value */
  static uint64_t temp() {
    return temp_++;
  }

  /** Reference back to symbolic state */
  SymState* state_;


};

};

#endif
