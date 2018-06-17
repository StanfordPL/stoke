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

#ifndef STOKE_TOOLS_GADGETS_CLASS_CHECKER_H
#define STOKE_TOOLS_GADGETS_CLASS_CHECKER_H

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
#include "src/validator/class_checker.h"
#include "src/validator/control_learner.h"
#include "src/validator/data_collector.h"
#include "src/validator/learner.h"
#include "src/validator/local_class_checker.h"
#include "src/validator/postgres_class_checker.h"

#include "tools/args/verifier.inc"
#include "tools/args/ddec_validator.inc"

namespace stoke {

class ClassCheckerGadget : public ClassChecker {

public:

  ClassCheckerGadget(DataCollector& dc, ControlLearner& cl, ObligationChecker& oc, InvariantLearner& il) : 
    ClassChecker(dc, cl, target_bound_arg.value(), rewrite_bound_arg.value()), child_(NULL)
  {
    auto cc_type = class_checker_arg.value();
    if(cc_type == "local") {
      child_ = new LocalClassChecker(dc, cl, target_bound_, rewrite_bound_, oc, il);
    } else if (cc_type == "postgres") {
      child_ = new PostgresClassChecker(dc, cl, target_bound_, rewrite_bound_, postgres_arg.value());
    } 
  }

  ~ClassCheckerGadget() {
    if(child_)
      delete child_;
  }

  ClassChecker& set_stop_early(bool b) {
    child_->set_stop_early(b);
    return *this;
  }

  ClassChecker& add_pointer_range(x64asm::M8 begin, x64asm::M8 end) {
    child_->add_pointer_range(begin, end);
    return *this;
  }

  ClassChecker& assume(Invariant* assumption) {
    return child_->assume(assumption);
  }

  ClassChecker& assume_always(Invariant* assumption) {
    return child_->assume(assumption);
  }

  /** Check.  This performs the requested obligation check, and depending on the implementation may
    choose to either:
      (1) block, call the callback (in the same thread/process), and then return; or
      (2) start an asynchronous job (which will later invoke the callback) and return; or
      (3) block, then start an asyncrhonous job (which will call the callback) and return. */
  virtual int check(const DualAutomata& template_pod,
                     const DualBuilder::EquivalenceClassMap& equivalence_class,
                     Callback& callback,
                     void* optional = NULL) {
    return child_->check(template_pod, equivalence_class, callback, optional);
  }

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete() {
    child_->block_until_complete();
  }

private:

  ClassChecker* child_;

};

} //namespace stoke

#endif
