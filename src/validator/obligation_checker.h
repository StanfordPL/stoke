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

#include <functional>
#include <iostream>
#include <ostream>
#include <istream>
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
    BASIC = 0,             // enumerate all cases, attempt to bound it (SOUND)
    FLAT = 1,              // model memory as an array in the SMT solver (SOUND)
    ARM = 2,               // improved implementation of "STRING" (SOUND)
    ARMS_RACE = 3          // run ARM and FLAT in parallel (SOUND)
  };

  struct Result {
    /** output of verification */
    bool verified;
    bool has_ceg;

    /** error data */
    bool has_error;
    std::string error_message;

    /** counterexample details */
    CpuState target_ceg;
    CpuState rewrite_ceg;
    CpuState target_final_ceg;
    CpuState rewrite_final_ceg;

    /** metadata on solver */
    uint64_t gen_time_microseconds;
    uint64_t smt_time_microseconds;
    Solver solver;
    AliasStrategy strategy;
    std::string source_version;
    std::string info;  // for anything else (e.g. hash)

    /** placeholder for local use (not serialized/deserialized) */
    std::string comments;

    std::istream& read_text(std::istream& is);
    std::ostream& write_text(std::ostream& os) const;

    Result() { }
  };

  struct Obligation {
    Cfg target;
    Cfg rewrite;
    Cfg::id_type target_block;
    Cfg::id_type rewrite_block;
    CfgPath P;
    CfgPath Q;
    Invariant* assume;
    Invariant* prove;
    std::vector<std::pair<CpuState, CpuState>> testcases;
    bool separate_stack;

    std::istream& read_text(std::istream& is);
    std::ostream& write_text(std::ostream& os) const;

    Obligation() : 
      target(TUnit(), x64asm::RegSet::empty(), x64asm::RegSet::empty()),
      rewrite(TUnit(), x64asm::RegSet::empty(), x64asm::RegSet::empty())
    {

    }
  };

  
  typedef std::function<void (Result&, void*)> Callback;

  ObligationChecker() 
    {
    set_alias_strategy(AliasStrategy::FLAT);
    set_nacl(false);
    set_basic_block_ghosts(true);
    set_fixpoint_up(false);
    set_separate_stack(false);
  }

  ObligationChecker(const ObligationChecker& oc) 
  {
    basic_block_ghosts_ = oc.basic_block_ghosts_;
    nacl_ = oc.nacl_;
    fixpoint_up_ = oc.fixpoint_up_;
    alias_strategy_ = oc.alias_strategy_;
    separate_stack_ = oc.separate_stack_;
  }

  virtual ~ObligationChecker() {
  }

  /** Set strategy for aliasing */
  ObligationChecker& set_alias_strategy(AliasStrategy as) {
    alias_strategy_ = as;
    return *this;
  }

  AliasStrategy get_alias_strategy() {
    return alias_strategy_;
  }

  /** Set whether we are going to use separate stack. */
  ObligationChecker& set_separate_stack(bool b) {
    separate_stack_ = b;
    return *this;
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

  /** Turn checking into a synchronous operation. */
  Result check_wait(const Cfg& target, const Cfg& rewrite,
                    Cfg::id_type target_block, Cfg::id_type rewrite_block,
                    const CfgPath& p, const CfgPath& q,
                    Invariant& assume, Invariant& prove,
                    const std::vector<std::pair<CpuState, CpuState>>& testcases,
                    bool override_separate_stack) {

    Result await_result;
    
    Callback callback = [&] (Result& result, void*) {
      std::cout << "[check_wait] got callback" << std::endl;
      await_result = result;
    };

    std::cout << "[check_wait] calling check" << std::endl;
    check(target, rewrite, target_block, rewrite_block, p, q, assume, prove, testcases,
          callback, override_separate_stack, NULL);

    std::cout << "[check_wait] blocking" << std::endl;
    block_until_complete();
    
    return await_result;
  }

  /** Check.  This performs the requested obligation check, and depending on the implementation may
    choose to either:
      (1) block, call the callback (in the same thread/process), and then return; or
      (2) start an asynchronous job (which will later invoke the callback) and return; or
      (3) block, then start an asyncrhonous job (which will call the callback) and return. */
  virtual void check(const Cfg& target, const Cfg& rewrite,
                     Cfg::id_type target_block, Cfg::id_type rewrite_block,
                     const CfgPath& p, const CfgPath& q,
                     Invariant& assume, Invariant& prove,
                     const std::vector<std::pair<CpuState, CpuState>>& testcases,
                     Callback& callback,
                     bool override_separate_stack,
                     void* optional) = 0;

  void check(const Obligation& problem, Callback& callback, void* optional = NULL) {
    check(problem.target, problem.rewrite, problem.target_block, problem.rewrite_block,
          problem.P, problem.Q, *problem.assume, *problem.prove, problem.testcases,
          callback, problem.separate_stack, optional);
  }

  /** Check to see if anything is finished for us to look at. */
  virtual void check_for_callbacks() {
    return;
  }

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete() {
    return;
  }

  /** Forget about everything that has been started. */
  virtual void delete_all() {
    return;
  }

  /** Below are hacks due to legacy non-existence of a type hierarchy for obligation checkers. */
  enum JumpType {
    NONE, // jump target is the fallthrough
    FALL_THROUGH,
    JUMP
  };

  /** Get the filter */
  virtual Filter& get_filter() = 0;

  /** Is there a jump in the path following this basic block? */
  static JumpType is_jump(const Cfg&, const Cfg::id_type start, const CfgPath& P, size_t i);


protected:

  AliasStrategy alias_strategy_;
  bool basic_block_ghosts_;
  bool nacl_;
  bool fixpoint_up_;
  bool separate_stack_;

};

} //namespace stoke

namespace std{

std::ostream& operator<<(std::ostream&, const stoke::ObligationChecker::Result&);
std::istream& operator>>(std::istream&, stoke::ObligationChecker::Result&);
std::ostream& operator<<(std::ostream&, const stoke::ObligationChecker::Obligation&);
std::istream& operator>>(std::istream&, stoke::ObligationChecker::Obligation&);

}


#endif
