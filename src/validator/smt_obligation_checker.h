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

#ifndef STOKE_SRC_VALIDATOR_SMT_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_SMT_OBLIGATION_CHECKER_H

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
#include "src/symstate/simplify.h"
#include "src/validator/data_collector.h"
#include "src/validator/invariant.h"
#include "src/validator/line_info.h"
#include "src/validator/filters/default.h"
#include "src/validator/filters/bound_away.h"
#include "src/validator/obligation_checker.h"

//#define DEBUG_CHECKER_PERFORMANCE

#ifdef DEBUG_CHECKER_PERFORMANCE
#include "src/solver/z3solver.h"
#endif

namespace stoke {

class SmtObligationChecker : public ObligationChecker {

public:

  SmtObligationChecker(SMTSolver& solver, Filter& filter) : 
    ObligationChecker(),
    solver_(solver),
    filter_(filter)
  {
  }

  SmtObligationChecker(const SmtObligationChecker& oc) :
    ObligationChecker(),
    solver_(oc.solver_),
    filter_(oc.filter_),
    memory_manager_()
  {
  }

  ~SmtObligationChecker() {
  }

  SMTSolver& get_solver() {
    return solver_;
  }

  /** Check.  This is a wrapper around check_* functions that handles parallelism and fixpoint. */
  void check(const Cfg& target, const Cfg& rewrite,
             Cfg::id_type target_block, Cfg::id_type rewrite_block,
             const CfgPath& p, const CfgPath& q,
             std::shared_ptr<Invariant> assume, std::shared_ptr<Invariant> prove,
             const std::vector<std::pair<CpuState, CpuState>>& testcases,
             Callback& callback,
             bool override_separate_stack,
             void* optional) override;

  Filter& get_filter() {
    return filter_;
  }

private:

  SymSimplify simplifier_;

  /** Trigger callback with error message. */
  void return_error(Callback& callback, std::string& s, void* optional, uint64_t smt_time, uint64_t gen_time) const;

  /** SMT Solver */
  SMTSolver& solver_;

  /** Sandbox and Data Collector for working with test cases */
  Sandbox oc_sandbox_;

  /** Extract a CPU state from SMT solver */
  CpuState state_from_model(const std::string& name_suffix);


  /** Populate a CPU state with memory from the model. */
  bool build_testcase_from_array(CpuState&, SymArray heap, const std::vector<SymArray>& stacks,
                            const std::map<const SymBitVectorAbstract*, uint64_t>& others,
                            uint64_t stack_pointer) const;
  /** Helper for build_testcase_from_array.  Extracts model from an array. */
  cpputil::BitVector add_to_map(const SymArray& array, std::unordered_map<uint64_t, cpputil::BitVector>& mem_map) const;

  /** Make test case for ARM, if possible. */
  bool generate_arm_testcases(
    const Cfg& target,
    const Cfg& rewrite,
    const x64asm::Code& target_unroll,
    const x64asm::Code& rewrite_unroll,
    const LineMap& target_linemap,
    const LineMap& rewrite_linemap,
    bool separate_stack,
    const std::shared_ptr<Invariant> assume,
    std::vector<std::pair<CpuState,CpuState>>& testcases);


  /** Create a vector of line numbers with memory dereferences */
  std::vector<size_t> enumerate_accesses(const Cfg& cfg);

  /** Filter out symbolic accesses depending on target/rewrite. */
  std::vector<CellMemory::SymbolicAccess> split_sym_accesses(const std::vector<CellMemory::SymbolicAccess>&, bool);

  /** (see description in .cc file) */
  std::vector<std::vector<int>> compute_offset_vectors(size_t*, size_t, size_t);

  /////////////// These methods handle paths and circuit building ////////////////


  /** Add ghost variables into symbolic state for a CFG. */
  void add_basic_block_ghosts(SymState& ss, const Cfg& cfg, std::string suffix);

  /** Build the circuit for a single basic block */
  void build_circuit(const Cfg&, Cfg::id_type, JumpType, SymState&, size_t& line_no, const LineMap& line_map, bool ignore_last_line);

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

  /** Check if a counterexample actually works.  Updates the output states
    (ceg_expected, ceg_expected2) with data from the sandbox. */
  bool check_counterexample(const Cfg& target, const Cfg& rewrite, 
                            const x64asm::Code& target_unroll, 
                            const x64asm::Code& rewrite_unroll,
                            const CfgPath& P, const CfgPath& Q,
                            const LineMap& target_linemap, const LineMap& rewrite_linemap,
                            const std::shared_ptr<Invariant> assume, const std::shared_ptr<Invariant> prove, 
                            const CpuState& ceg, const CpuState& ceg2,
                            CpuState& ceg_expected, CpuState& ceg_expected2,
                            bool separate_stack);

  /** Run the sandbox on a state, cfg along a path.  Used for checking counterexamples. */
  CpuState run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state);

  /** Rewrite a CFG so that it always executes a particular path, replacing
    jumps with NOPs.  Fill a map that contains information relating the new
    line numbers with the original ones. */
  void generate_linemap(const Cfg&, const CfgPath& p, LineMap& to_populate, bool is_rewrite, x64asm::Code& code);


  std::shared_ptr<Invariant> get_jump_inv(const Cfg& cfg, Cfg::id_type, const CfgPath& p, bool is_rewrite);

  /** Rules to transform instructions for a custom purpose */
  Filter& filter_;

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
