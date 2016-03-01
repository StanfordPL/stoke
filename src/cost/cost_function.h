// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_COST_COST_FUNCTION_H
#define STOKE_SRC_COST_COST_FUNCTION_H

#include <cassert>
#include <stdint.h>

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"
#include "src/sandbox/sandbox.h"

namespace stoke {

class CostFunction {
public:
  /** Result type; cost and whether correctness term equals zero. */
  typedef std::pair<bool, Cost> result_type;

  /** The maximum cost that any rewrite should produce. */
  static constexpr auto max_cost = (Cost)(0x1ull << 62);

  /** By default, run the sandbox unless we're told otherwise. */
  CostFunction() {
    set_run_test_sandbox(true);
    set_run_perf_sandbox(true);
    test_sandbox_ = NULL;
    perf_sandbox_ = NULL;
  }

  virtual ~CostFunction() { }

  /** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
    result would equal or exceed that value.  When you implement this method, you
    must call run_sandbox() to ensure that the sandbox was run, either by the client
    of the CostFunction or by the CostFunction itself.*/
  virtual result_type operator()(const Cfg& cfg, const Cost max = max_cost) = 0;

  /** Does this CostFunction require a test Sandbox object?
      Contract for clients:

        If this function returns true, you must call setup_test_sandbox() with a
        good sandbox before running the cost function.

      Contract for subclasses:

        If this function returns true, you must invoke run_test_sandbox() inside
        the operator() function.
   */
  virtual bool need_test_sandbox() {
    return false;
  }

  /** Does this CostFunction require a performance Sandbox object?
      Contract for clients:

        If this function returns true, you must call setup_perf_sandbox() with a
        good sandbox before running the cost function.

      Contract for subclasses:

        If this function returns true, you must invoke run_perf_sandbox() inside
        the operator() function.
   */
  virtual bool need_perf_sandbox() {
    return false;
  }

  /** Perform any one-time setup required using the sandbox (optional).
      Contract for CostFunction clients:

        This function must be invoked with a good sandbox if need_test_sandbox()
        returns true.

      Contract for subclasses:

        For 'run_test_sandbox()' to work right, the test_sandbox_ variable *must* be set
        correctly.  The purpose of being able to override this function is so
        you can insert a callback or change other settings, for example.  These
        changes need to be compatible with all the other cost functions, and
        it's your job to check this!
   */
  virtual CostFunction& setup_test_sandbox(Sandbox* sb) {
    test_sandbox_ = sb;
    return *this;
  }

  /** Perform any one-time setup required using the sandbox (optional).
      Contract for CostFunction clients:

        This function must be invoked with a good sandbox if need_perf_sandbox()
        returns true.

      Contract for subclasses:

        For 'run_perf_sandbox()' to work right, the perf_sandbox_ variable *must* be set
        correctly.  The purpose of being able to override this function is so
        you can insert a callback or change other settings, for example.  These
        changes need to be compatible with all the other cost functions, and
        it's your job to check this!
   */
  virtual CostFunction& setup_perf_sandbox(Sandbox* sb) {
    perf_sandbox_ = sb;
    return *this;
  }

  /** Set whether the cost function must run the test sandbox itself, or if the
      client will run the sandbox before calling operator() */
  CostFunction& set_run_test_sandbox(bool b) {
    must_run_test_sandbox_ = b;
    return *this;
  }

  /** Set whether the cost function must run the perf sandbox itself, or if the
      client will run the sandbox before calling operator() */
  CostFunction& set_run_perf_sandbox(bool b) {
    must_run_perf_sandbox_ = b;
    return *this;
  }

protected:

  /** Runs the test sandbox if necessary (i.e. it's needed and the client doesn't do
   * so).  This function should be avoided for performance reasons; so be sure
   to call set_run_sandbox(false)! */
  void run_test_sandbox(const Cfg& cfg) {
    assert(test_sandbox_);
    if (must_run_test_sandbox_ && need_test_sandbox()) {
      test_sandbox_->insert_function(cfg);
      test_sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));
      test_sandbox_->run();
    }
  }

  /** Runs the perf sandbox if necessary (i.e. it's needed and the client doesn't do
   * so).  This function should be avoided for performance reasons; so be sure
   to call set_run_sandbox(false)! */
  void run_perf_sandbox(const Cfg& cfg) {
    assert(perf_sandbox_);
    if (must_run_perf_sandbox_ && need_perf_sandbox()) {
      perf_sandbox_->insert_function(cfg);
      perf_sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));
      perf_sandbox_->run();
    }
  }

  /** Keeps a copy of the sandbox, in case we need to run it. */
  Sandbox* test_sandbox_;
  Sandbox* perf_sandbox_;

private:

  /** Do we need to run the sandbox, or will the client do it for us? */
  bool must_run_test_sandbox_;
  bool must_run_perf_sandbox_;

};

} // namespace stoke

#endif
