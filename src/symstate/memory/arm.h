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


#ifndef STOKE_SRC_SYMSTATE_MEMORY_ARM_H
#define STOKE_SRC_SYMSTATE_MEMORY_ARM_H

#include <map>
#include <vector>
#include <thread>
#include <atomic>


#include "src/symstate/bitvector.h"
#include "src/symstate/memory.h"
#include "src/solver/smtsolver.h"

namespace stoke {

/** Models memory as a giant array */
class ArmMemory : public SymMemory {

public:

  ArmMemory(bool separate_stack, SMTSolver& solver) : SymMemory(separate_stack), solver_(solver) {
    heap_ = SymArray::tmp_var(64, 8);
    stack_ = SymArray::tmp_var(64, 8);
    start_variable_ = heap_;
    final_heap_ = SymArray::tmp_var(64, 8);
    finalize_ = false;
    set_interrupt_var(NULL);
  }

  ArmMemory(ArmMemory& other) : SymMemory(other.separate_stack_), solver_(other.solver_) {
    heap_ = other.heap_;
    stack_ = other.stack_;
    start_variable_ = other.start_variable_;
    final_heap_ = other.final_heap_;
    finalize_ = other.finalize_;
    set_interrupt_var(other.stop_now_);
  }

  SymArray get_end_variable() {
    return final_heap_;
  }

  SymArray get_start_variable() {
    return start_variable_;
  }

  SymArray get_variable() {
    if (finalize_)
      return get_end_variable();
    else
      return heap_;
  }

  void finalize_heap() {
    finalize_ = true;
  }

  /** Updates the memory with a write.
   *  Returns condition for segmentation fault */
  SymBool write(SymBitVector address, SymBitVector value, uint16_t size, DereferenceInfo deref) {

    if (separate_stack_ && deref.stack_dereference) {
      for (size_t i = 0; i < size/8; ++i) {
        stack_ = stack_.update(address + SymBitVector::constant(64, i), value[8*i+7][8*i]);
      }
      return SymBool::_false();
    }

    auto access_var = SymBitVector::tmp_var(64);
    constraints_.push_back(access_var == address);
    access_list_[access_var.ptr] = size;

    MemAccess m;
    m.deref = deref;
    m.address = address;
    m.value = value;
    m.size = size;
    m.write = true;
    accesses_.push_back(m);

    return SymBool::_false();
  }

  /** Reads from the memory.  Returns value and segv condition. */
  std::pair<SymBitVector,SymBool> read(SymBitVector address, uint16_t size, DereferenceInfo deref) {

    if (separate_stack_ && deref.stack_dereference) {
      SymBitVector value = stack_[address];
      for (size_t i = 1; i < size/8; ++i) {
        value = stack_[address + SymBitVector::constant(64, i)] || value;
      }
      return std::pair<SymBitVector,SymBool>(value, SymBool::_false());
    }

    auto access_var = SymBitVector::tmp_var(64);
    constraints_.push_back(access_var == address);
    access_list_[access_var.ptr] = size;

    MemAccess m;
    m.deref = deref;
    m.address = address;
    m.value = SymBitVector::tmp_var(size);
    m.size = size;
    m.write = false;
    accesses_.push_back(m);

    return std::pair<SymBitVector, SymBool>(m.value, SymBool::_false());
  }

  /** Do the hard work of ARM and generate constraints needed to extract equality constraints */
  void generate_constraints(ArmMemory* am, std::vector<SymBool>&, const DereferenceMaps& deref_map);

  /** Create a formula expressing these memory cells with another set. Also generates all the
    constraints needed for this contraint to make sense (retrievable through get_constraints().
    This can be computationally expensive. */
  SymBool equality_constraint(ArmMemory& other) {
    return get_variable() == other.get_variable();
  }

  std::vector<SymBool> get_constraints() {
    return constraints_;
  }

  /** Get list of accesses accessed (via read or write).  This is needed for
   * marking relevant cells valid in the counterexample. */
  std::map<const SymBitVectorAbstract*, uint64_t> get_access_list() {
    return access_list_;
  }

  void set_interrupt_var(std::atomic<bool>* stop) {
    stop_now_ = stop;
  }

private:


  /** Helper function for generate_constraints. */
  void generate_constraints_enumerate_cells();
  void generate_constraints_given_cells(ArmMemory*);
  bool generate_constraints_given_one_cell(ArmMemory* am);
  void generate_constraints_offsets_nodata(std::vector<SymBool>&);
  void generate_constraints_offsets_data(std::vector<SymBool>&, DereferenceMap&);

  std::atomic<bool>* stop_now_;

  struct Cell {

    Cell(SymBitVector a) {
      dirty = false;
      other_dirty = false;
      address = a;
      tmp_min_offset = 0;
      tmp_max_offset = 0;
    }

    SymBitVector address;
    SymBitVector cache;
    SymBitVector other_cache;
    size_t size;
    bool dirty;
    bool other_dirty;
    int64_t tmp_min_offset;
    int64_t tmp_max_offset;
    size_t index;
  };

  struct MemAccess {
    SymBitVector address;
    SymBitVector value;
    size_t size;
    bool write;
    size_t cell;
    int64_t cell_offset;
    bool is_other;
    size_t index;
    DereferenceInfo deref;
  };

  /** Solver for performing ARM queries. */
  SMTSolver& solver_;

  /** Generated constraints needed to make everything work. */
  std::vector<SymBool> constraints_;
  /** Variables that represents the heap state */
  SymArray heap_;
  SymArray start_variable_;
  SymArray final_heap_;
  SymArray stack_;
  bool finalize_;

  /** map of (symbolic address, size) pairs accessed. */
  std::map<const SymBitVectorAbstract*, uint64_t> access_list_;
  /** List of memory accesses. */
  std::vector<MemAccess> accesses_;

  /** List of cells */
  std::vector<Cell> cells_;
  /** List of memory accesses across two programs */
  std::vector<MemAccess> all_accesses_;
  /** Offsets between memory accesses. */
  std::map<size_t, std::map<size_t, int64_t>> access_offsets_;

  /** Once "all_accesses_" and "access_offsets_" are populated,
    * recursively fill in the assignment of accesses to cells. */
  void recurse_cell_assignment(size_t access_index);

};

};

#endif
