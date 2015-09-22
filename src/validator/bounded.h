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

#ifndef STOKE_SRC_VALIDATOR_BOUNDED_H
#define STOKE_SRC_VALIDATOR_BOUNDED_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/validator/alias_miner.h"
#include "src/validator/validator.h"


namespace stoke {

class BoundedValidator : public Validator {

public:

  enum AliasStrategy {
    BASIC,            // enumerate all cases, attempt to bound it (SOUND)
    STRING,           // look for continugous memory accesses and combine them (SOUND)
    STRING_NO_ALIAS   // assume strings don't overlap (UNSOUND)
  };

  BoundedValidator(SMTSolver& solver) : Validator(solver) {
    set_bound(2);
    set_alias_strategy(AliasStrategy::STRING);
    set_nacl(true);
  }

  ~BoundedValidator() {}

  /** Set bound. */
  BoundedValidator& set_bound(size_t n) {
    bound_ = n;
    return *this;
  }
  /** Set strategy for aliasing */
  BoundedValidator& set_alias_strategy(AliasStrategy as) {
    alias_strategy_ = as;
    return *this;
  }
  /** If set to true, weakens process to learn aliasing constraints
    with assumption of a 32-bit address space. */
  BoundedValidator& set_nacl(bool b) {
    nacl_ = b;
    return *this;
  }

  /** Evalue if the target and rewrite are the same */
  bool verify(const Cfg& target, const Cfg& rewrite);

  /** Returns whether the last counterexample made sense */
  size_t counter_examples_available() {
    return counterexamples_.size();
  }
  /** Gets the counterexample */
  virtual std::vector<CpuState> get_counter_examples() {
    return counterexamples_;
  }

private:

  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };

  /** The bound on iterations */
  size_t bound_;
  /** How to handle aliasing */
  AliasStrategy alias_strategy_;
  /** Add NaCl constraint for memory? */
  bool nacl_;


  /** Verify a pair of paths. */
  bool verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q);
  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&, size_t& line_no);
  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const CfgPath& P, size_t i);

  /** For learning aliasing relationships */
  AliasMiner am;

  /** Traces for the target/rewrite. */
  std::vector<CfgPath> paths_[2];

  /** The set of counterexamples (one per pair) that we've found. */
  std::vector<CpuState> counterexamples_;

  // This is to print out Cfg paths easily (for debugging purposes).
  static std::string print(const CfgPath& p) {
    std::stringstream os;
    for (size_t i = 0; i < p.size(); ++i) {
      os << p[i];
      if (i != p.size() - 1)
        os << " ";
    }
    return os.str();
  }


  /** Given target, rewrite, and two paths, returns CellMemory* pairs for every way that aliasing can occur. */
  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q);
  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing_basic(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q);
  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing_string(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q);

  /** Recursive helper function for enumerate_aliasing.  target_con_access and
   * rewrite_con_access list the lines of code where target_unroll and
   * rewrite_unroll have memory accesses.  symbolic_access_list tells you how
   * each memory access corresponds to a cell of the memory; this list is
   * incomplete.  Each call to enumerate_aliasing_helper used
   * find_arrangements() to come up with all the ways the next symbolic memory
   * access can be added to this list.  Once the list is full, we can generate
   * a CellMemory object. */
  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing_helper(const Cfg& target, const Cfg& rewrite,
      const Cfg& target_unroll, const Cfg& rewrite_unroll,
      const CfgPath& P, const CfgPath& Q,
      const std::vector<size_t>& target_con_access,
      const std::vector<size_t>& rewrite_con_access,
      const std::vector<CellMemory::SymbolicAccess>& symbolic_access_list,
      size_t sym_accesses_done);


  /** Helper for enumerate_aliasing_helper.  Builds CellMemory objects for
   * partial description of which memory cells overlap, builds circuits, and
   * checks to see if such executions are possible. */
  bool check_feasibility(const Cfg& target, const Cfg& rewrite,
                         const Cfg& target_unroll, const Cfg& rewrite_unroll,
                         const CfgPath& P, const CfgPath& Q,
                         const std::vector<CellMemory::SymbolicAccess>& symbolic_access_list);


  /** Used for CellArrangement (see below) */
  struct OverlapDescriptor {
    bool is_empty;
    size_t size;
    size_t cell;
  };

  /** CellArrangements are used to describe how a collection of cells could overlap an existing cell.
    For example, say you have cell X of size 8, and there are two other non-overlapping cells Y (size 4) and Z (size 4).
    There are a few ways X could overlap Y and Z:
     (i) It doesn't overlap at all
     (ii) X overlaps the beginning of Y, but not Z
     (iii) X overlaps Z, then Y
     (iv) ... many more
    Each of these cases is represented as a CellArrangement:
     (i)  one "OverlapDescriptor" with is_empty=1, size=8.
     (ii) first "OverlapDescriptor" with is_empty=0, size=4, cell=Y; second with is_empty=1, size=4
     (iii) first with is_empty=0, size=4, cell=Y; second with is_empty=0, size=4, cell=Z
     (iv) ... etc. */
  typedef std::vector<OverlapDescriptor> CellArrangement;

  /** Given a prefix of a CellArrangement (start), a list of available cells,
   * and a maximum size, find a list of all possible CellArrangements. */
  std::vector<CellArrangement> find_arrangements(
    std::vector<OverlapDescriptor*>& start,
    std::vector<OverlapDescriptor>& available_cells, size_t max_size);

};



} // namespace stoke

#endif
