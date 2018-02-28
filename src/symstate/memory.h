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


#ifndef _STOKE_SRC_SYMSTATE_SYM_MEMORY_H
#define _STOKE_SRC_SYMSTATE_SYM_MEMORY_H

#include "src/symstate/bitvector.h"
#include "src/symstate/dereference_info.h"

namespace stoke {

class SymState;

class SymMemory {

public:

  SymMemory() : state_(NULL) {}

  virtual ~SymMemory() { }

  /** Set the parent symbolic state */
  SymMemory& set_parent(SymState* ss) {
    state_ = ss;
    return *this;
  }

  /** Updates the memory with a write.
   *  Returns condition for segmentation fault */
  virtual SymBool write(SymBitVector address, SymBitVector value, uint16_t size, DereferenceInfo deref) = 0;

  /** Reads from the memory.  Returns value and segv condition. */
  virtual std::pair<SymBitVector,SymBool> read(SymBitVector address, uint16_t size, DereferenceInfo deref) = 0;

  /** Get list of accesses accessed (via read or write).  This is needed for
   * marking relevant cells valid in the counterexample. */
  virtual std::map<const SymBitVectorAbstract*, uint64_t> get_access_list() = 0;

protected:

  SymState* state_;

};

};

#endif
