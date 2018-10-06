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

#ifndef STOKE_SRC_VALIDATOR_CLASS_CHECKER_H
#define STOKE_SRC_VALIDATOR_CLASS_CHECKER_H

#include <functional>
#include <iostream>
#include <ostream>
#include <istream>
#include <vector>
#include <string>
#include <thread>
#include <atomic>

#include "src/validator/control_learner.h"
#include "src/validator/dual_builder.h"
#include "src/validator/dual.h"
#include "src/validator/dual_builder.h"

namespace stoke {

class ClassChecker {

public:

  struct Result {
    bool verified;
    bool has_error;
    std::string error_message;
    std::string source_version;

    // (not serialized)
    std::string comments;

    std::istream& read_text(std::istream& is);
    std::ostream& write_text(std::ostream& os) const;

    Result() { }
  };

  struct Problem {
    DualAutomata template_pod;
    DualBuilder::EquivalenceClassMap equivalence_class;
    size_t target_bound;
    size_t rewrite_bound;
    std::vector<std::pair<x64asm::M8, x64asm::M8>> pointer_ranges;
    std::vector<Invariant*> extra_assumptions;
    std::vector<Invariant*> assume_always;
    bool separate_stack;

    static Problem deserialize(std::istream& is);
    std::ostream& serialize(std::ostream& os) const;

    Problem(const DualAutomata& da, 
            const DualBuilder::EquivalenceClassMap& equ_class,
            size_t tb, size_t rb,
            const std::vector<std::pair<x64asm::M8, x64asm::M8>>& ptr_rng,
            const std::vector<Invariant*>& assume,
            const std::vector<Invariant*>& always,
            bool sstack) : 
      template_pod(da),
      equivalence_class(equ_class),
      target_bound(tb),
      rewrite_bound(rb),
      pointer_ranges(ptr_rng),
      extra_assumptions(assume),
      assume_always(always),
      separate_stack(sstack)
    {

    }
  };

  
  typedef std::function<bool (Result&, void*)> Callback;

  ClassChecker(DataCollector& data_collector,
               ControlLearner& control_learner,
               size_t target_bound,
               size_t rewrite_bound) : 
    data_collector_(data_collector),
    control_learner_(control_learner),
    target_bound_(target_bound),
    rewrite_bound_(rewrite_bound)
  {
    set_stop_early(true);
  }

  virtual ~ClassChecker() {
  }

  /** Set strategy for aliasing */
  virtual ClassChecker& set_stop_early(bool b) {
    stop_early_ = b;
    return *this;
  }

  /** Set that a range of input locations must be pointers */
  virtual ClassChecker& add_pointer_range(x64asm::M8 begin, x64asm::M8 end) {
    pointer_ranges_.push_back({begin, end});
    return *this;
  }

  /** Add an extra assumption at beginning. */
  virtual ClassChecker& assume(Invariant* assumption) {
    for(auto curr : extra_assumptions_)
      if(curr == assumption)
        return *this;

    extra_assumptions_.push_back(assumption);
    return *this;
  }

  /** Add an assumption that holds at every point (e.g. read-only memory) */
  virtual ClassChecker& assume_always(Invariant* assumption) {
    for(auto curr : assume_always_)
      if(curr == assumption)
        return *this;

    std::cout << "ClassChecker getting assume always: " << *assumption << std::endl;
    assume_always_.push_back(assumption);
    return *this;
  }

  /** Check.  This performs the requested obligation check, and depending on the implementation may
    choose to either:
      (1) block, call the callback (in the same thread/process), and then return; or
      (2) return, and then invoke the callback on a future invocation to this same function 
          or to 'block_until_complete' */
  virtual int check(const DualAutomata& template_pod,
                     const DualBuilder::EquivalenceClassMap& equivalence_class,
                     Callback& callback,
                     bool override_separate_stack,
                     void* optional) = 0;

  void check(const Problem& problem, Callback& callback, void* optional) {
    check(problem.template_pod, problem.equivalence_class, callback, problem.separate_stack, optional);
  }

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete() {
    return;
  }

protected:

  DataCollector& data_collector_;
  ControlLearner& control_learner_;
  size_t target_bound_;
  size_t rewrite_bound_;
  std::vector<std::pair<x64asm::M8, x64asm::M8>> pointer_ranges_;
  /** Extra invariants to assume at the beginning. */
  std::vector<Invariant*> extra_assumptions_;
  std::vector<Invariant*> assume_always_;

  bool stop_early_;
};

} //namespace stoke

namespace std{

std::ostream& operator<<(std::ostream&, const stoke::ClassChecker::Result&);
std::istream& operator>>(std::istream&, stoke::ClassChecker::Result&);
std::ostream& operator<<(std::ostream&, const stoke::ClassChecker::Problem&);
std::istream& operator>>(std::istream&, stoke::ClassChecker::Problem&);

}


#endif
