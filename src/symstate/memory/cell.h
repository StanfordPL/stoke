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


#ifndef STOKE_SRC_SYMSTATE_MEMORY_CELL_H
#define STOKE_SRC_SYMSTATE_MEMORY_CELL_H

#include "src/symstate/bitvector.h"
#include "src/symstate/memory.h"

namespace stoke {

/** Keeps track of a fixed, finite number of symbolic memory locations ("cells") */
class CellMemory : public SymMemory {
  friend class AliasMiner;

public:

  /** Takes a map from the line number of a target/rewrite to a "cell number" along with
    the size of the write. */
  CellMemory(std::map<size_t, std::pair<size_t, size_t>>& memory_map) : map_(memory_map) {
    for(auto p : memory_map) {
      if(!cells_.count(p.second.first)) {
        cells_[p.second.first] = SymBitVector::tmp_var(p.second.second);
        init_cells_[p.second.first] = cells_[p.second.first];
        cell_sizes_[p.second.first] = p.second.second;
      }
    }
  }

  /** Retrieve the map of line -> (cell#, size) */
  std::map<size_t, std::pair<size_t, size_t>> get_line_cell_map() {
    return map_;
  }

  /** Updates the memory with a write.
   *  Returns condition for segmentation fault */
  SymBool write(SymBitVector address, SymBitVector value, uint16_t size, size_t line_no);

  /** Reads from the memory.  Returns value and segv condition. */
  std::pair<SymBitVector,SymBool> read(SymBitVector address, uint16_t size, size_t line_no);

  /** Create a constraint expressing these memory cells with another set. */
  SymBool equality_constraint(CellMemory& other);

private:

  /** Map from line# -> (cell index, write size) */
  std::map<size_t, std::pair<size_t, size_t>> map_;

  /** The values initially allocated (used for extracting from model later) */
  std::map<size_t, SymBitVector> init_cells_;
  /** The memory cells we're using */
  std::map<size_t, SymBitVector> cells_;
  /** The size of the cells. */
  std::map<size_t, size_t> cell_sizes_;

};

};

#endif
