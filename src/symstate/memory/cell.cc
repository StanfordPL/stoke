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

#include "src/symstate/memory/cell.h"

using namespace std;
using namespace stoke;

/** Updates the memory with a write.
 *  Returns condition for segmentation fault */
SymBool CellMemory::write(SymBitVector address, SymBitVector value, uint16_t size, size_t line_no) {
  if(!map_.count(line_no)) {
    //something is missing from the map
    //cout << "WARNING!  (write) Memory map missing entry for line " << line_no << endl;
    return SymBool::_false();
  }

  auto access = map_[line_no];

  assert(access.cell_offset + access.size <= access.cell_size);

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
  if(!map_.count(line_no)) {
    //something is missing from the map
    //cout << "WARNING!  (read) Memory map missing entry for line " << line_no << endl;
    return pair<SymBitVector,SymBool>(SymBitVector::tmp_var(size), SymBool::_false());
  }

  auto access = map_[line_no];

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

SymBool CellMemory::aliasing_formula(CellMemory& other) {

  equalize_cells(other);
  SymBool condition = SymBool::_true();

  return condition;

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
      other.cell_addrs_[p.first] = SymBitVector::tmp_var(64);
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
      cell_addrs_[q.first] = SymBitVector::tmp_var(64);
    }
  }


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

