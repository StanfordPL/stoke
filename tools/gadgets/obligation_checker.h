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

#ifndef STOKE_TOOLS_GADGETS_OBLIGATION_CHECKER_H
#define STOKE_TOOLS_GADGETS_OBLIGATION_CHECKER_H

#include <functional>
#include <iostream>
#include <ostream>
#include <istream>
#include <vector>
#include <string>
#include <thread>
#include <atomic>

#include "gtest/gtest_prod.h"

#include "src/solver/smtsolver.h"
#include "src/validator/demo_obligation_checker.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/smt_obligation_checker.h"
#include "src/validator/postgres_obligation_checker.h"
#include "src/validator/filters/bound_away.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/args/in_out.inc"
#include "tools/args/verifier.inc"
#include "tools/gadgets/solver.h"

namespace stoke {

class ObligationCheckerGadget : public ObligationChecker {

public:

  ObligationCheckerGadget() : solver_(NULL), child_(NULL), handler_(NULL), filter_(NULL)
  {
    auto oc_type = obligation_checker_arg.value();
    if(oc_type == "smt" || oc_type == "postgres") {
      handler_ = new ComboHandler();
      filter_ = new BoundAwayFilter(*handler_, (uint64_t)0x1000, (uint64_t)(-0x1000));
      solver_ = new SolverGadget();
      child_ = new SmtObligationChecker(*solver_, *filter_);
    } 
    if (oc_type == "postgres") {
      set_alias_strategy(parse_alias());
      set_fixpoint_up(false);
      set_nacl(false);
      set_basic_block_ghosts(true);
      set_separate_stack(!stack_out_arg.value());

      if(verify_nacl_arg.value())
        set_nacl(true);
      if(fixpoint_up_arg.value())
        set_fixpoint_up(true);


      SmtObligationChecker smt_checker = *static_cast<SmtObligationChecker*>(child_);
      child_ = new PostgresObligationChecker(postgres_arg.value(), smt_checker);
    } 
    if (oc_type == "demo") {
      child_ = new DemoObligationChecker();
    }

    set_alias_strategy(parse_alias());
    set_fixpoint_up(false);
    set_nacl(false);
    set_basic_block_ghosts(true);
    set_separate_stack(!stack_out_arg.value());

    if(verify_nacl_arg.value())
      set_nacl(true);
    if(fixpoint_up_arg.value())
      set_fixpoint_up(true);
  }

  ~ObligationCheckerGadget() {
    if(child_)
      delete child_;
    if(handler_)
      delete handler_;
    if(filter_)
      delete filter_;
    if(solver_)
      delete solver_;
  }

  /** Set strategy for aliasing */
  ObligationChecker& set_alias_strategy(AliasStrategy as) override {
    child_->set_alias_strategy(as);
    return *this;
  }

  AliasStrategy get_alias_strategy() override {
    return child_->get_alias_strategy();
  }

  ObligationChecker& set_fixpoint_up(bool b) override {
    child_->set_fixpoint_up(b);
    return *this;
  }

  ObligationChecker& set_separate_stack(bool b) override {
    child_->set_separate_stack(b);
    return *this;
  }

  ObligationChecker& set_nacl(bool b) override {
    child_->set_nacl(b);
    return *this;
  }

  ObligationChecker& set_basic_block_ghosts(bool b) override {
    child_->set_basic_block_ghosts(b);
    return *this;
  }

  /** Check.  This performs the requested obligation check, and depending on the implementation may
    choose to either:
      (1) block, call the callback (in the same thread/process), and then return; or
      (2) start an asynchronous job (which will later invoke the callback) and return; or
      (3) block, then start an asyncrhonous job (which will call the callback) and return. */
  virtual void check(const Cfg& target, const Cfg& rewrite,
                     Cfg::id_type target_block, Cfg::id_type rewrite_block,
                     const CfgPath& p, const CfgPath& q,
                     std::shared_ptr<Invariant> assume, std::shared_ptr<Invariant> prove,
                     const std::vector<std::pair<CpuState, CpuState>>& testcases,
                     Callback& callback,
                     bool override_separate_stack,
                     void* optional = NULL) override {
    child_->check(target, rewrite, target_block, rewrite_block, p, q, assume, prove, testcases, callback, override_separate_stack, optional);
  }

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete() override {
    child_->block_until_complete();
  }

  virtual void check_for_callbacks() override {
    child_->check_for_callbacks();
  }

  virtual void delete_all() override {
    child_->delete_all();
  }

  /** Get the filter */
  virtual Filter& get_filter() {
    return child_->get_filter();
  }


private:

  ObligationChecker::AliasStrategy parse_alias() {
    std::string alias = alias_strategy_arg.value();

    if (alias == "flat" || alias == "array") {
      return ObligationChecker::AliasStrategy::FLAT;
    } else if (alias == "arm") {
      return ObligationChecker::AliasStrategy::ARM;
    } else if (alias == "arms_race") {
      return ObligationChecker::AliasStrategy::ARMS_RACE;
    } else if (alias == "dummy") {
      return ObligationChecker::AliasStrategy::DUMMY; 
    } else {
      std::cerr << "Unrecognized alias strategy \"" << alias << "\"" << std::endl;
      exit(1);
    }
  }

  SMTSolver* solver_;
  ObligationChecker* child_;
  Handler* handler_;
  Filter* filter_;

};

} //namespace stoke

#endif
