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

    std::istream& read_text(std::istream& is);
    std::ostream& write_text(std::ostream& os) const;

    Result() { }
  };

  struct Problem {
    DualAutomata template_pod;
    DualBuilder::EquivalenceClassMap equivalence_class;
    size_t target_bound;
    size_t rewrite_bound;

    static Problem deserialize(std::istream& is, DataCollector& dc);
    std::ostream& serialize(std::ostream& os) const;

    Problem(const DualAutomata& da, 
            const DualBuilder::EquivalenceClassMap& equ_class,
            size_t tb, size_t rb) : 
      template_pod(da),
      equivalence_class(equ_class),
      target_bound(tb),
      rewrite_bound(rb)
    {

    }
  };

  
  typedef std::function<void (Result&, void*)> Callback;

  ClassChecker(ControlLearner& control_learner,
               size_t target_bound,
               size_t rewrite_bound) : 
    control_learner_(control_learner),
    target_bound_(target_bound),
    rewrite_bound_(rewrite_bound)
  {
    set_stop_early(true);
  }

  virtual ~ClassChecker() {
  }

  /** Set strategy for aliasing */
  ClassChecker& set_stop_early(bool b) {
    stop_early_ = b;
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
                     void* optional = NULL) = 0;

  void check(const Problem& problem, Callback& callback, void* optional = NULL) {
    check(problem.template_pod, problem.equivalence_class, callback, optional);
  }

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete() {
    return;
  }

protected:

  ControlLearner& control_learner_;
  size_t target_bound_;
  size_t rewrite_bound_;

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
