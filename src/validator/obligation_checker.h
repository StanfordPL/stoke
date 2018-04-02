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
#include <thread>
#include <atomic>

#include "gtest/gtest_prod.h"

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/dereference_info.h"
#include "src/symstate/memory/cell.h"
#include "src/symstate/memory/flat.h"
#include "src/symstate/memory/arm.h"
#include "src/validator/data_collector.h"
#include "src/validator/invariant.h"
#include "src/validator/filters/default.h"
#include "src/validator/filters/bound_away.h"

//#define DEBUG_CHECKER_PERFORMANCE

#ifdef DEBUG_CHECKER_PERFORMANCE
#include "src/solver/z3solver.h"
#endif

namespace stoke {

class ObligationChecker {
  friend class ObligationCheckerBaseTest;
  FRIEND_TEST(ObligationCheckerBaseTest, WcpcpyA);
  FRIEND_TEST(ObligationCheckerBaseTest, ProveMemoryObligation);
  FRIEND_TEST(ObligationCheckerBaseTest, ProveMemoryObligationFail);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeMemoryNull);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeMemoryNullFail);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeAndProve);
  FRIEND_TEST(ObligationCheckerBaseTest, AssumeAndProveFail);
  FRIEND_TEST(ObligationCheckerBaseTest, NeedMemoryInToProveMemoryOut);
  FRIEND_TEST(ObligationCheckerBaseTest, NeedMemoryInToProveMemoryOut2);
  FRIEND_TEST(ObligationCheckerBaseTest, NeedMemoryInToProveEquality);

public:

  enum AliasStrategy {
    BASIC,             // enumerate all cases, attempt to bound it (SOUND)
    FLAT,              // model memory as an array in the SMT solver (SOUND)
    ARM,               // improved implementation of "STRING" (SOUND)
    ARMS_RACE          // run ARM and FLAT in parallel (SOUND)
  };

  ObligationChecker(SMTSolver& solver, Filter& filter) : 
    solver_(solver),
    filter_(filter)
  {
    set_alias_strategy(AliasStrategy::FLAT);
    set_nacl(false);
    set_basic_block_ghosts(true);
    set_fixpoint_up(false);
    stop_now_ = false;

    oc1_ = NULL;
    oc2_ = NULL;
  }

  ObligationChecker(const ObligationChecker& oc) :
    solver_(oc.solver_),
    filter_(oc.filter_),
    memory_manager_()
  {
    basic_block_ghosts_ = oc.basic_block_ghosts_;
    nacl_ = oc.nacl_;
    fixpoint_up_ = oc.fixpoint_up_;
    alias_strategy_ = oc.alias_strategy_;
    stop_now_ = false;
    oc1_ = NULL;
    oc2_ = NULL;
  }

  ~ObligationChecker() {
  }

  /** Set strategy for aliasing */
  ObligationChecker& set_alias_strategy(AliasStrategy as) {
    alias_strategy_ = as;
    return *this;
  }

  AliasStrategy get_alias_strategy() {
    return alias_strategy_;
  }

  SMTSolver& get_solver() {
    return solver_;
  }

  ObligationChecker& set_fixpoint_up(bool b) {
    fixpoint_up_ = b;
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

  /** Turn on per-basic block ghost variables.  This will track a ghost variable
    for each basic block that gets incremented by one on each execution. */
  ObligationChecker& set_basic_block_ghosts(bool b) {
    basic_block_ghosts_ = b;
    return *this;
  }

  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };

  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const Cfg::id_type start, const CfgPath& P, size_t i);

  /** Check.  This is a wrapper around check_* functions that handles parallelism and fixpoint. */
  bool check(const Cfg& target, const Cfg& rewrite,
             Cfg::id_type target_block, Cfg::id_type rewrite_block,
             const CfgPath& p, const CfgPath& q,
             Invariant& assume, Invariant& prove,
             const std::vector<std::pair<CpuState, CpuState>>& testcases);

  bool has_error() {
    return error_.size() > 0;
  }

  std::string get_error() {
    return error_;
  }

  bool has_ceg() {
    return have_ceg_;
  }

  CpuState get_target_ceg() {
    return ceg_t_;
  }

  CpuState get_rewrite_ceg() {
    return ceg_r_;
  }

  CpuState get_target_ceg_end() {
    return ceg_tf_;
  }

  CpuState get_rewrite_ceg_end() {
    return ceg_rf_;
  }

  /** Can be called from another thread.  Try to stop what you're doing ASAP and cleanup. */
  void interrupt() {
    stop_now_.store(true);
    solver_.interrupt();
    if(oc1_ != NULL)
      oc1_->interrupt();
    if(oc2_ != NULL)
      oc2_->interrupt();
  }

  /** Did ARM beat the flat model? */
  bool arm_won() {
    return arm_won_;
  }

  Filter& get_filter() {
    return filter_;
  }

private:

  SMTSolver& solver_;

  bool arm_won_;

  /** Sandbox and Data Collector for working with test cases */
  Sandbox oc_sandbox_;

  /** Check. */
  bool check_core(const Cfg& target, const Cfg& rewrite,
                  Cfg::id_type target_block, Cfg::id_type rewrite_block,
                  const CfgPath& p, const CfgPath& q,
                  Invariant& assume, Invariant& prove,
                  const std::vector<std::pair<CpuState, CpuState>>& testcases);

  /** A checking routine that calls check_core in parallel for ARM/Flat memory models. */
  bool check_race(const Cfg& target, const Cfg& rewrite,
             Cfg::id_type target_block, Cfg::id_type rewrite_block,
             const CfgPath& p, const CfgPath& q,
             Invariant& assume, Invariant& prove,
             const std::vector<std::pair<CpuState, CpuState>>& testcases);

  /** Split an invariant into memory/non-memory parts. */
  void split_invariant(const ConjunctionInvariant& assume,
                       ConjunctionInvariant& memory,
                       ConjunctionInvariant& nonmemory);


  struct LineInfo {
    size_t line_number;
    uint64_t rip_offset;
    DereferenceInfo deref;
  };


  typedef std::map<size_t,LineInfo> LineMap;

  /** Extract a CPU state from SMT solver */
  CpuState state_from_model(const std::string& name_suffix,
                            std::vector<std::string> shadow_vars);


  bool build_testcase_flat_memory(CpuState&, SymArray variable,
                                  const std::map<const SymBitVectorAbstract*, uint64_t>& others) const;

  /** Create a vector of line numbers with memory dereferences */
  std::vector<size_t> enumerate_accesses(const Cfg& cfg);

  /** Filter out symbolic accesses depending on target/rewrite. */
  std::vector<CellMemory::SymbolicAccess> split_sym_accesses(const std::vector<CellMemory::SymbolicAccess>&, bool);

  /** (see description in .cc file) */
  std::vector<std::vector<int>> compute_offset_vectors(size_t*, size_t, size_t);

  /////////////// These methods handle paths and circuit building ////////////////


  /** Add ghost variables into symbolic state for a CFG. */
  void add_basic_block_ghosts(SymState& ss, const Cfg& cfg, std::string suffix);
  /** Get names of basic block ghosts for a CFG. */
  std::vector<std::string> get_ghost_names(const Cfg& cfg);

  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&, size_t& line_no, const LineMap& line_map, bool ignore_last_line);

  /** Get constraint expressing that a particular path is taken from some state. */
  SymBool get_path_constraint(const Cfg& cfg, SymState& state_orig, Cfg::id_type cfg_start, const CfgPath& P, size_t& invariant_no);

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
  bool check_counterexample(const Cfg& target, const Cfg& rewrite, const CfgPath& P,
                            const CfgPath& Q, Invariant& assume,
                            Invariant& prove, 
                            const CpuState& ceg, const CpuState& ceg2,
                            const CpuState& ceg_expected, const CpuState& ceg_expected2);

  /** Run the sandbox on a state, cfg along a path.  Used for checking counterexamples. */
  CpuState run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state);

  /** Rewrite a CFG so that it always executes a particular path, replacing
    jumps with NOPs.  Fill a map that contains information relating the new
    line numbers with the original ones. */
  void generate_linemap(const Cfg&, const CfgPath& p, LineMap& to_populate, bool is_rewrite, x64asm::Code& code);


  Invariant* get_jump_inv(const Cfg& cfg, Cfg::id_type, const CfgPath& p, bool is_rewrite);

  /////////////// FOR ARMS RACE MODE ///////////

  ObligationChecker* oc1_;
  ObligationChecker* oc2_;

  /////////////// Bookkeeping //////////////////

  /** Rules to transform instructions for a custom purpose */
  Filter& filter_;

  /** Target counterexample and end state */
  CpuState ceg_t_;
  CpuState ceg_tf_;
  /** Rewrite counterexample and end state */
  CpuState ceg_r_;
  CpuState ceg_rf_;

  /** Do we have a counterexample? */
  bool have_ceg_;
  bool fixpoint_up_;

  /** How to handle aliasing */
  AliasStrategy alias_strategy_;
  /** Add NaCl constraint for memory? */
  bool nacl_;

  /** Track ghost variables per basic block? */
  bool basic_block_ghosts_;

  /** Used for interrupts. */
  std::atomic<bool> stop_now_;
  std::atomic<ArmMemory*> arm_interrupt_;

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

  /** Push a new memory manager onto the stack. */
  void init_mm() {
    auto manager = new SymMemoryManager();
    SymBitVector::set_memory_manager(manager);
    SymBool::set_memory_manager(manager);
    memory_manager_.push(manager);
  }
  /** Pop a memory manager off the stack */
  void stop_mm() {
    assert(memory_manager_.size());
    auto manager = memory_manager_.top();
    manager->collect();
    delete manager;

    memory_manager_.pop();

    if (memory_manager_.size()) {
      auto manager = memory_manager_.top();
      SymBitVector::set_memory_manager(manager);
      SymBool::set_memory_manager(manager);
    } else {
      SymBitVector::set_memory_manager(NULL);
      SymBool::set_memory_manager(NULL);
    }

  }
  /** Discard and reset all memory managers. */
  void reset_mm() {
    while (memory_manager_.size())
      stop_mm();
  }
  /** The memory manager */
  std::stack<SymMemoryManager*> memory_manager_;

  std::string error_;

};



} // namespace stoke

#endif
