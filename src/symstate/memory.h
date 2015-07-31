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


#ifndef _STOKE_SRC_SYMSTATE_SYM_MEMORY_H
#define _STOKE_SRC_SYMSTATE_SYM_MEMORY_H

#include "src/analysis/alias.h"
#include "src/state/memory.h"
#include "src/symstate/bitvector.h"

namespace stoke {

class SymState;

class SymMemory {

public:

  SymMemory() : state_(NULL), analysis_(NULL) {}

  /** Set the parent symbolic state */
  SymMemory& set_parent(SymState* ss) {
    state_ = ss;
    return *this;
  }
  /** Setup an aliasing analysis */
  SymMemory& set_analysis(AliasAnalysis* aa) {
    analysis_ = aa;
    return *this;
  }

  /** Updates the memory with a write.
   *  Returns condition for segmentation fault */
  SymBool write(SymBitVector address, SymBitVector value, uint16_t size, size_t line_no);

  /** Reads from the memory.  Returns value and segv condition. */
  std::pair<SymBitVector,SymBool> read(SymBitVector address, uint16_t size, size_t line_no);

  /** Set concrete initialization values */
  void init_concrete(const Memory& stack, const Memory& heap);

  /** Get variables holding all addresses encountered so far.  Good for extracting data from
    * a model. */
  std::vector<std::pair<std::string, uint16_t>> get_address_vars() const;
private:

  /** Concrete valid heap locations at start.  Stored big-endian.  Optional.*/
  SymBitVector heap_;
  /** Concrete heap starting address */
  uint64_t heap_start_;
  /** Concrete heap size */
  uint64_t heap_size_;

  /** Data structure for saving reads/writes */
  struct MemoryAccess {
    SymBitVector address;
    SymBitVector value;
    uint16_t size;
    size_t line_no;
  };

  /** Keep track of all the memory writes */
  std::vector<MemoryAccess> writes_;
  /** Keep track of all the memory reads */
  std::vector<MemoryAccess> reads_;

  /** Optional aliasing analysis for simplication */
  AliasAnalysis* analysis_;
  /** Reference back to symbolic state */
  SymState* state_;


};

};

#endif
