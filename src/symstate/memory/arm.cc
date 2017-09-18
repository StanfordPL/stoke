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

#include <iomanip>

#include "src/symstate/memory/arm.h"

using namespace std;
using namespace stoke;

#define DEBUG_ARM(X) { }

void ArmMemory::generate_constraints(ArmMemory* am, std::vector<SymBool>& initial_constraints) {

  all_accesses_.clear();
  cells_.clear();
  access_offsets_.clear();

  // 0. Get all the memory accesses in one place to look at.
  auto other_accesses = am->accesses_;
  all_accesses_.insert(all_accesses_.begin(), accesses_.begin(), accesses_.end());
  for (auto& it : all_accesses_) {
    it.is_other = false;
  }
  for (auto& it : other_accesses) {
    it.is_other = true;
    all_accesses_.push_back(it);
  }

  if (stop_now_ && *stop_now_) return;
  // 1. For every pair of memory accesses, perform up to three queries to determine if they belong in the same cell
  DEBUG_ARM(cout << "==== ARM ON " << all_accesses_.size() << " ACCESSES " << endl;)
  for (size_t i = 0; i < all_accesses_.size(); ++i) {
    for (size_t j = i+1; j < all_accesses_.size(); ++j) {
      auto a1 = all_accesses_[i];
      auto a2 = all_accesses_[j];

      // check if initial_constraints => a1 == a2
      auto check_same = !(a1.address == a2.address);

      initial_constraints.push_back(check_same);
      if (stop_now_ && *stop_now_) return;
      bool is_same = !solver_.is_sat(initial_constraints);
      initial_constraints.pop_back();
      if (is_same) {
        access_offsets_[i][j] = 0;
        access_offsets_[j][i] = 0;
        DEBUG_ARM(cout << "-> accesses " << i << " , " << j << " are the same" << endl;)
        continue;
      }

      // chack if initial_constraints => a1+size == a2
      assert(a1.size % 8 == 0);
      auto check_a1first = !(a1.address + SymBitVector::constant(64, a1.size/8) == a2.address);
      initial_constraints.push_back(check_a1first);
      if (stop_now_ && *stop_now_) return;
      bool is_a1first = !solver_.is_sat(initial_constraints);
      initial_constraints.pop_back();
      if (is_a1first) {
        access_offsets_[i][j] = a1.size/8;
        access_offsets_[j][i] = (int64_t)-a1.size/8;
        DEBUG_ARM(cout << "-> accesses " << i << " , " << j << " are offset by " << a1.size/8 << endl;)
        continue;
      }

      // check if initial_constraints => a2+size == a1
      assert(a2.size % 8 == 0);
      auto check_a2first = !(a2.address + SymBitVector::constant(64, a2.size/8) == a1.address);
      initial_constraints.push_back(check_a2first);
      if (stop_now_ && *stop_now_) return;
      bool is_a2first = !solver_.is_sat(initial_constraints);
      initial_constraints.pop_back();
      if (is_a2first) {
        access_offsets_[i][j] = (int64_t)-a2.size/8;
        access_offsets_[j][i] = a2.size/8;
        DEBUG_ARM(cout << "-> accesses " << i << " , " << j << " are offset by " << (int64_t)-a2.size/8 << endl;)
        continue;
      }
      DEBUG_ARM(cout << "-> accesses " << i << " , " << j << " not related." << endl;)
    }
  }

  DEBUG_ARM(
  for (size_t i = 0; i < access_offsets_.size(); ++i) {
  for (size_t j = 0; j < access_offsets_.size(); ++j) {
      if (access_offsets_[i].count(j))
        cout << setw(2) << access_offsets_[i][j] << "  ";
      else
        cout << " X  ";
    }
    cout << endl;
  })

  // 2. Enumerate cells

  if (stop_now_ && *stop_now_) return;
  // (a) initialize all accesses to be associated to no cell
  for (size_t i = 0; i < all_accesses_.size(); ++i) {
    all_accesses_[i].cell = (size_t)(-1);
    all_accesses_[i].cell_offset = 0;
    all_accesses_[i].index = i;
  }

  if (stop_now_ && *stop_now_) return;
  // (b) work out the associations for each cell
  for (size_t i = 0; i < all_accesses_.size(); ++i) {
    if (all_accesses_[i].cell != (size_t)(-1))
      continue;

    Cell initial_cell(all_accesses_[i].address);
    initial_cell.index = cells_.size();;
    cells_.push_back(initial_cell);
    all_accesses_[i].cell = cells_.size()-1;
    all_accesses_[i].cell_offset = 0;
    cells_[cells_.size()-1].tmp_min_offset = 0;
    cells_[cells_.size()-1].tmp_max_offset = all_accesses_[i].size/8;

    recurse_cell_assignment(i);
  }

  if (stop_now_ && *stop_now_) return;
  // (c) calculate the size of each cell and the offsets of each access
  for (auto& cell : cells_) {
    cell.size = cell.tmp_max_offset - cell.tmp_min_offset;
    cell.address = cell.address + SymBitVector::constant(64, cell.tmp_min_offset);

    for (auto& access : all_accesses_) {
      if (access.cell == cell.index)
        access.cell_offset = access.cell_offset - cell.tmp_min_offset;
    }

  }

  if (stop_now_ && *stop_now_) return;
  // (d) check for debugging
  DEBUG_ARM(
  for (auto& cell : cells_) {
  cout << "Cell " << cell.index << " has size " << cell.size << endl;
  cout << "   tmp_min_offset " << cell.tmp_min_offset << " max " << cell.tmp_max_offset << endl;
  for (auto& access : all_accesses_) {
      if (access.cell != cell.index)
        continue;
      cout << "  Access " << access.index << " has size " << access.size/8 << " and offset " << access.cell_offset << endl;
    }
  }

  for (size_t i = 0; i < all_accesses_.size(); ++i) {
  auto& access = all_accesses_[i];
    cout << "i=" << i << " access " << access.index << " size " << access.size/8 << " cell " << access.cell << " offset " << access.cell_offset << endl;
  })

  // 3. Simulate execution
  //      ... each "cell" is like a cache.
  //      ... You don't write it unless you need to read from another cell.
  //      ... You don't read it unless another cell performed a write.

  if (stop_now_ && *stop_now_) return;
  // to setup, let's "cache" the result of each cell.
  for (auto& cell : cells_) {
    cell.cache = SymBitVector();
    for (size_t i = 0; i < cell.size; ++i)
      cell.cache = cell.cache || heap_[cell.address + SymBitVector::constant(64, cell.size - i - 1)];

    cell.other_cache = SymBitVector();
    for (size_t i = 0; i < cell.size; ++i)
      cell.other_cache = cell.other_cache || am->heap_[cell.address + SymBitVector::constant(64, cell.size - i - 1)];
  }

  auto debug_state = [&]() {
    DEBUG_ARM(
      cout << "HEAP 1: " << heap_ << endl;
    for (auto cell : cells_) {
    cout << "  cell " << cell.index << ": dirty " << cell.dirty << " : " << cell.cache << endl;
  }
  cout << "HEAP 2: " << am->heap_ << endl;
  for (auto cell : cells_) {
    cout << "  cell " << cell.index << ": dirty " << cell.other_dirty << " : " << cell.other_cache << endl;
  })
  };

  auto flush_dirty = [&](size_t skip_index = (size_t)(-1)) -> bool{
    /** write all dirty cells back into the heap */
    bool update_required = false;
    for (auto& cell : cells_) {
      if (stop_now_ && *stop_now_)
        break;

      if (cell.index == skip_index)
        continue;

      if (cell.dirty) {
        update_required = true;
        for (size_t i = 0; i < cell.size; ++i)
          heap_ = heap_.update(cell.address + SymBitVector::constant(64, i), cell.cache[8*i+7][8*i]);
        cell.dirty = false;
      }
      if (cell.other_dirty) {
        update_required = true;
        for (size_t i = 0; i < cell.size; ++i)
          am->heap_ = am->heap_.update(cell.address + SymBitVector::constant(64, i), cell.other_cache[8*i+7][8*i]);
        cell.other_dirty = false;
      }
    }
    return update_required;
  };

  // now symbolically execute each of the accesses
  for (auto& access : all_accesses_) {
    DEBUG_ARM(
      cout << "==================== PROCESSING ACCESS " << access.index
      << " IS OTHER: " << access.is_other
      << " IS WRITE: " << access.write
      << " CELL: " << access.cell
      << " OFFSET: " << access.cell_offset << endl;
      debug_state();
    )
    if (stop_now_ && *stop_now_) return;

    auto& cell = cells_[access.cell];
    bool& dirty = access.is_other ? cell.other_dirty : cell.dirty;
    auto& cache = access.is_other ? cell.other_cache : cell.cache;
    auto& heap = access.is_other ? am->heap_ : heap_;

    DEBUG_ARM(cout << "==================== WRITING DIRTY CELLS INTO HEAP" << endl;)
    bool needs_update = flush_dirty(cell.index);
    debug_state();

    DEBUG_ARM(cout << "==================== UPDATING OUR CELL IF NEEDED : " << needs_update << endl;)
    /** if a dirty cell got written into the heap, read out this cell */
    if (stop_now_ && *stop_now_) return;
    if (needs_update) {
      DEBUG_ARM(cout << "Heap updated with dirty cells flushed: " << heap << endl;)
      cache = SymBitVector();
      for (size_t i = 0; i < cell.size; ++i)
        cache = cache || heap[cell.address + SymBitVector::constant(64, cell.size - i - 1)];
      DEBUG_ARM(cout << "Updated cell " << cell.index << " cache: " << cache;)

      debug_state();
    }

    /* perform the read/write on the cached copy; set dirty bit if needed. */
    if (stop_now_ && *stop_now_) return;
    if (access.write) {

      SymBitVector prefix, suffix;
      if (access.cell_offset + access.size/8 < cell.size) {
        prefix = cache[cell.size*8-1][access.cell_offset*8 + access.size];
      }
      if (access.cell_offset > 0) {
        suffix = cache[access.cell_offset*8-1][0];
      }
      cache = prefix || access.value || suffix;
      dirty = true;
      DEBUG_ARM(cout << "==================== PERFORMED WRITE " << endl;)
      debug_state();
    } else {
      constraints_.push_back(access.value ==
                             cache[access.cell_offset*8+access.size-1][access.cell_offset*8]);
      DEBUG_ARM(
        cout << "==================== PERFORMED READ "  << endl;
        cout << access.value << " : " << cache[access.cell_offset*8+access.size-1][access.cell_offset*8] << endl;)
    }
  }

  if (stop_now_ && *stop_now_) return;
  flush_dirty();
  DEBUG_ARM(
    cout << "==================== FINAL: WRITE DIRTY CELLS BACK INTO HEAP" << endl;
    cout << "==================== ALL DONE" << endl;
    debug_state();)

  /** get a final heap variable for reading out a model */
  constraints_.push_back(final_heap_ == heap_);
  constraints_.push_back(am->final_heap_ == am->heap_);

  DEBUG_ARM(
    cout << "[arm] Adding constraints " << final_heap_ << " = " << heap_ << endl;
    cout << "[arm] Adding constraint " << am->final_heap_ << " = " << am->heap_ << endl;
  )

}

void ArmMemory::recurse_cell_assignment(size_t access_index) {

  if (stop_now_ && *stop_now_)
    return;

  auto& access = all_accesses_[access_index];
  auto cell_index = access.cell;
  auto& cell = cells_[cell_index];

  for (size_t i = 0; i < all_accesses_.size(); ++i) {

    if (stop_now_ && *stop_now_)
      return;

    // check if this access belongs to a cell
    if (all_accesses_[i].cell != (size_t)(-1))
      continue;

    // check if access is related at all
    if (!access_offsets_[access_index].count(i))
      continue;

    // now we have another offset to put into this cell
    all_accesses_[i].cell = cell_index;
    all_accesses_[i].cell_offset = access.cell_offset + access_offsets_[access_index][i];

    // update the cell min/max offsets
    if (all_accesses_[i].cell_offset < cell.tmp_min_offset)
      cell.tmp_min_offset = all_accesses_[i].cell_offset;
    if (all_accesses_[i].cell_offset + (int64_t)all_accesses_[i].size/8 > cell.tmp_max_offset)
      cell.tmp_max_offset = all_accesses_[i].cell_offset + all_accesses_[i].size/8;

    // recurse
    recurse_cell_assignment(i);
  }

}
