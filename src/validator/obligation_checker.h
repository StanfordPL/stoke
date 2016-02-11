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

#ifndef STOKE_SRC_VALIDATOR_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_OBLIGATION_CHECKER_H

#include <iostream>
#include <vector>
#include <string>

#include "gtest/gtest_prod.h"

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/memory/cell.h"
#include "src/symstate/memory/flat.h"
#include "src/validator/invariant.h"
#include "src/validator/validator.h"

//#define DEBUG_CHECKER_PERFORMANCE

#ifdef DEBUG_CHECKER_PERFORMANCE
#include "src/solver/z3solver.h"
#endif

namespace stoke {

class ObligationChecker : public Validator {

public:

  enum AliasStrategy {
    BASIC,            // enumerate all cases, attempt to bound it (SOUND)
    FLAT,             // model memory as an array in the SMT solver (SOUND)
    STRING,           // look for continugous memory accesses and combine them (SOUND)
    STRING_NO_ALIAS   // assume strings don't overlap (UNSOUND)
  };

  ObligationChecker(SMTSolver& solver) : Validator(solver) {
    set_alias_strategy(AliasStrategy::STRING);
  }

  ~ObligationChecker() {}


  /** Set strategy for aliasing */
  ObligationChecker& set_alias_strategy(AliasStrategy as) {
    alias_strategy_ = as;
    return *this;
  }
  /** If every memory reference in your code is of the form (r15,r*x,1), then
    setting this option to 'true' is logically equivalent to adding constraints
    that bound the index register away from the top/bottom of the 32-bit
    address space.  It is unsound for NaCl code only if you have a memory
    dereference of (r15,r*x,k) where k = 2, 4 or 8.  This does not come up in
    any of our NaCl examples, and sould be rare to find since no compilers
    generate code that use an index besides 1 for NaCl; and STOKE won't do this
    transformation. */
  ObligationChecker& set_nacl(bool b) {
    nacl_ = b;
    return *this;
  }

  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };
  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const CfgPath& P, size_t i);

protected:
  /** Check. */
  bool check(const Cfg& target, const Cfg& rewrite, const CfgPath& p, const CfgPath& q,
             const Invariant& assume, const Invariant& prove);

  bool checker_has_ceg() {
    return have_ceg_;
  }

  CpuState checker_get_target_ceg() {
    return ceg_t_;
  }

  CpuState checker_get_rewrite_ceg() {
    return ceg_r_;
  }

  /** Note -- this won't be right for memory. */
  CpuState checker_get_target_ceg_end() {
    return ceg_tf_;
  }
  /** Note -- this won't be right for memory. */
  CpuState checker_get_rewrite_ceg_end() {
    return ceg_rf_;
  }



private:

  ///////////// These methods handle memory ///////////////////


  /** Given target, rewrite, and two paths, returns CellMemory* pairs for every way that aliasing can occur. */
  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove);
  std::vector<std::pair<CellMemory*, CellMemory*>> enumerate_aliasing_string(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove);

  /** Recursive helper function for enumerate_aliasing.  target_con_access and
   * rewrite_con_access list the lines of code where target_unroll and
   * rewrite_unroll have memory accesses.  symbolic_access_list tells you how
   * each memory access corresponds to a cell of the memory; this list is
   * incomplete.  Each call to enumerate_aliasing_helper used
   * find_arrangements() to come up with all the ways the next symbolic memory
   * access can be added to this list.  Once the list is full, we can generate
   * a CellMemory object. */
  std::vector<std::vector<CellMemory::SymbolicAccess>> enumerate_aliasing_helper(const Cfg& target, const Cfg& rewrite,
      const Cfg& target_unroll, const Cfg& rewrite_unroll,
      const CfgPath& P, const CfgPath& Q,
      const std::vector<CellMemory::SymbolicAccess>& todo,
      const std::vector<CellMemory::SymbolicAccess>& done,
      size_t sym_accesses_done,
      const Invariant& assume);


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

  /** Populate a testcase with memory. */
  bool build_testcase_cell_memory(CpuState& ceg, const CellMemory* target_memory, const CellMemory* rewrite_memory, const Cfg& target, const Cfg& rewrite) const;
  bool build_testcase_flat_memory(CpuState&, FlatMemory&, const std::map<const SymBitVectorAbstract*, uint64_t>& others) const;

  /** Go through lists of pairs of pointers and free all the memory. */
  void delete_memories(std::vector<std::pair<CellMemory*, CellMemory*>>& memories);

  /** Create a vector of line numbers with memory dereferences */
  std::vector<size_t> enumerate_accesses(const Cfg& cfg);

  /** Filter out symbolic accesses depending on target/rewrite. */
  std::vector<CellMemory::SymbolicAccess> split_sym_accesses(const std::vector<CellMemory::SymbolicAccess>&, bool);

  /** (see description in .cc file) */
  std::vector<std::vector<int>> compute_offset_vectors(size_t*, size_t, size_t);

  /////////////// These methods handle paths and circuit building ////////////////


  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&, size_t& line_no);

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

  /** Check if a counterexample actually works. */
  bool check_counterexample(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove, const CpuState& ceg, const CpuState& ceg2);

  /** Run the sandbox on a state, cfg along a path.  Used for checking counterexamples. */
  CpuState run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state);



  /////////////// Bookkeeping //////////////////

  /** Target counterexample and end state */
  CpuState ceg_t_;
  CpuState ceg_tf_;
  /** Rewrite counterexample and end state */
  CpuState ceg_r_;
  CpuState ceg_rf_;
  /** Do we have a counterexample? */
  bool have_ceg_;



  /** How to handle aliasing */
  AliasStrategy alias_strategy_;
  /** Add NaCl constraint for memory? */
  bool nacl_;


#ifdef DEBUG_CHECKER_PERFORMANCE
  static uint64_t number_queries_;
  static uint64_t number_cases_;

  static uint64_t constraint_gen_time_;
  static uint64_t solver_time_;
  static uint64_t aliasing_time_;
  static uint64_t ceg_time_;

  void print_performance() {
    std::cout << "====== Obligation Checker Performance Report ======" << std::endl;
    std::cout << "Number queries: "<< number_queries_ << std::endl;
    std::cout << "Number aliasing cases: "<< number_cases_ << std::endl;
    std::cout << "Alias case enumeration time (ms): " << (aliasing_time_ / 1000) << std::endl;
    std::cout << "Constraint generation time (ms): " << (constraint_gen_time_ / 1000) << std::endl;
    std::cout << "Solver time (ms): " << (solver_time_ / 1000) << std::endl;
    std::cout << "Counterexample extraction time (ms): " << (ceg_time_ / 1000) << std::endl;
    std::cout << "Total time accounted for (ms): " << ((ceg_time_ + solver_time_ + constraint_gen_time_ + aliasing_time_)/1000) << std::endl;
    Z3Solver::print_performance();
  }
#endif

};



} // namespace stoke

#endif
