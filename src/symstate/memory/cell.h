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

  struct SymbolicAccess {
    size_t line;          // line number?
    size_t size;          // how many bytes are we accessing?
    size_t cell;          // which bitvector do we hold the value in?
    size_t cell_offset;   // do we need to take an offset into the cell?
    size_t cell_size;     // tracks the total size of the cell
    bool is_rewrite;      // not used by CellMemory -- useful field for client
  };

  /** Takes a map from the line number of a target/rewrite to a "cell number" along with
    the size of the write. */
  CellMemory(std::map<size_t, SymbolicAccess> memory_map) : map_(memory_map) {
    for(auto p : memory_map) {
      auto access = p.second;
      if(!cells_.count(access.cell)) {

        std::stringstream addr_name;
        addr_name << "CELL_" << access.cell << "_ADDR";

        auto new_cell = SymBitVector::tmp_var(access.cell_size*8);
        cells_[access.cell] = new_cell;
        init_cells_[access.cell] = new_cell;
        cell_sizes_[access.cell] = access.cell_size;
        cell_addrs_[access.cell] = SymBitVector::var(64, addr_name.str());
      }
    }
  }

  /** Retrieve the map of line -> (cell#, size) */
  std::map<size_t, SymbolicAccess> get_line_cell_map() const {
    return map_;
  }

  /** Updates the memory with a write.
   *  Returns condition for segmentation fault */
  SymBool write(SymBitVector address, SymBitVector value, uint16_t size, size_t line_no);

  /** Reads from the memory.  Returns value and segv condition. */
  std::pair<SymBitVector,SymBool> read(SymBitVector address, uint16_t size, size_t line_no);

  /** Create a formula expressing these memory cells with another set. */
  SymBool equality_constraint(CellMemory& other);

  /** Create a formula expressing that the aliasing rules were followed. */
  SymBool aliasing_formula(CellMemory& other);

private:

  /** Make sure that the other CellMemory has the same cells as me. */
  void equalize_cells(CellMemory& other);

  /** Map from line# -> (cell index, write size) */
  std::map<size_t, SymbolicAccess> map_;

  /** The values initially allocated (used for extracting from model later) */
  std::map<size_t, SymBitVector> init_cells_;
  /** The memory cells we're using */
  std::map<size_t, SymBitVector> cells_;
  /** The size of the cells. */
  std::map<size_t, size_t> cell_sizes_;

  /** Map from cell -> starting address. */
  std::map<size_t, SymBitVector> cell_addrs_;

};

};

#endif
