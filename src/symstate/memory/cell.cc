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

#include "src/symstate/state.h"
#include "src/symstate/memory/cell.h"

using namespace std;
using namespace stoke;

/** Updates the memory with a write.
 *  Returns condition for segmentation fault */
SymBool CellMemory::write(SymBitVector address, SymBitVector value, uint16_t size, size_t line_no) {
  assert(map_.count(line_no));

  auto access = map_[line_no];

  assert(access.cell_offset + access.size <= access.cell_size);

  auto addr_constraint = (address == cell_addrs_[access.cell] + SymBitVector::constant(64, access.cell_offset));
  state_->constraints.push_back(addr_constraint);

  if(access.size == access.cell_size) {
    assert(access.cell_offset == 0);
    cells_[access.cell] = value;
  } else {
    auto old_value = cells_[access.cell];

    if(access.cell_offset == 0) {
      cells_[access.cell] = old_value[access.cell_size*8-1][access.size*8] || value;
    } else if(access.cell_offset == access.cell_size - access.size) {
      cells_[access.cell] = value || old_value[access.cell_offset*8-1][0];
    } else {
      cells_[access.cell] = old_value[access.cell_size*8-1][access.size*8 + access.cell_offset*8] ||
                            value ||
                            old_value[access.cell_offset*8-1][0];
    }
  }

  return SymBool::_false();
}

/** Reads from the memory.  Returns value and segv condition. */
std::pair<SymBitVector,SymBool> CellMemory::read(SymBitVector address, uint16_t size, size_t line_no) {
  assert(map_.count(line_no));

  auto access = map_[line_no];

  auto addr_constraint = (address == cell_addrs_[access.cell] + SymBitVector::constant(64, access.cell_offset));
  state_->constraints.push_back(addr_constraint);

  SymBitVector value;

  if(access.size == access.cell_size) {
    assert(access.cell_offset == 0);
    value = cells_[access.cell];
  } else {
    SymBitVector cell_value = cells_[access.cell];
    value = cell_value[access.size*8 + access.cell_offset*8 - 1][access.cell_offset*8];
  }

  return std::pair<SymBitVector,SymBool>(value, SymBool::_false());
}



void CellMemory::equalize_cells(CellMemory& other) {

  for(auto p : cells_) {
    bool found = false;
    for(auto q : other.cells_) {
      if(p.first == q.first) {
        found = true;
        break;
      }
    }
    if(!found) {
      // need to add new, unconstrained cell to other.
      other.cells_[p.first] = SymBitVector::tmp_var(cell_sizes_[p.first]*8);
      other.init_cells_[p.first] = other.cells_[p.first];
      other.cell_sizes_[p.first] = cell_sizes_[p.first];
      other.cell_addrs_[p.first] = cell_addrs_[p.first];
    }
  }

  // We need to look for cells of other that aren't found in self.
  for(auto q : other.cells_) {
    bool found = false;
    for(auto p : cells_) {
      if(p.first == q.first) {
        found = true;
        break;
      }
    }
    if(!found) {
      // need to add new, unconstrained cell to self.
      cells_[q.first] = SymBitVector::tmp_var(other.cell_sizes_[q.first]*8);
      init_cells_[q.first] = cells_[q.first];
      cell_sizes_[q.first] = other.cell_sizes_[q.first];
      cell_addrs_[q.first] = other.cell_addrs_[q.first];
    }
  }


}

SymBool CellMemory::aliasing_formula(CellMemory& other) {

  equalize_cells(other);
  SymBool condition = SymBool::_true();

  for(auto p : cells_) {
    size_t cell = p.first;
    size_t cell_size = cell_sizes_[cell];
    auto cell_addr = cell_addrs_[cell];

    assert(other.cells_.count(cell));
    assert(other.cell_sizes_[cell] == cell_size);

    // By the way, don't overlap address 0xffffffffffffffff.  Idiot.
    // In fact, for my sanity, let's keep it under 0xffffffffffffffc0,
    // to prevent overflow conditions.
    condition = condition & (cell_addr <= SymBitVector::constant(64, -cell_size-0x3f));
    condition = condition & (cell_addr >= SymBitVector::constant(64, 0x40));

    condition = condition & (cell_addr == other.cell_addrs_[cell]);

    // Assert no overlaps with other cells
    for(auto q : cells_) {
      if(q.first > cell) {
        // we want to assert that these don't overlap
        size_t other_cell = q.first;
        auto other_addr = cell_addrs_[other_cell];
        size_t other_size = cell_sizes_[other_cell];

        auto curr_lt_other = cell_addr + SymBitVector::constant(64, cell_size) <= other_addr;
        auto other_lt_curr = other_addr + SymBitVector::constant(64, other_size) <= cell_addr;
        condition = condition & (curr_lt_other | other_lt_curr);
      }
    }

  }

  return condition;

}

/** Create a constraint expressing these memory cells with another set. */
SymBool CellMemory::equality_constraint(CellMemory& other) {

  SymBool condition = SymBool::_true();
  equalize_cells(other);

  for(auto p : cells_) {
    size_t cell = p.first;
    assert(other.cells_.count(cell));
    condition = condition & (p.second == other.cells_[cell]);
  }

  return condition;

}

