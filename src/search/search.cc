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

#include <cassert>
#include <cmath>
#include <csignal>
#include <unistd.h>

#include "src/search/search.h"
#include "src/transform/weighted.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace x64asm;

namespace {

bool give_up_now = false;
void handler(int sig, siginfo_t* siginfo, void* context) {
  give_up_now = true;
}

} // namespace

namespace stoke {

Search::Search(Transform* transform) : transform_(transform) {
  set_seed(0);
  set_timeout_itr(0);
  set_timeout_sec(steady_clock::duration::zero());
  set_beta(1.0);
  set_progress_callback(nullptr, nullptr);
  set_statistics_callback(nullptr, nullptr);
  set_statistics_interval(100000);

  static bool once = false;
  if (!once) {
    once = true;

    struct sigaction term_act;
    memset(&term_act, '\0', sizeof(term_act));
    sigfillset(&term_act.sa_mask);
    term_act.sa_sigaction = handler;
    term_act.sa_flags = SA_ONSTACK;

    sigaction(SIGINT, &term_act, 0);
  }
}

void Search::run(const Cfg& target, CostFunction& fxn, Init init, SearchState& state, vector<TUnit>& aux_fxns) {

  // Configure initial state
  configure(target, fxn, state, aux_fxns);

  // Make sure target and rewrite are sound to begin with
  assert(state.best_yet.is_sound());
  assert(state.best_correct.is_sound());

  // Statistics callback variables
  // FIXME: Search only works with 'WeightedTransform', because it needs
  // statistics.
  move_statistics = vector<Statistics>(static_cast<WeightedTransform*>(transform_)->size());
  num_iterations = 0;
  const auto start = chrono::steady_clock::now();

  // Early corner case bailouts
  if (state.current_cost == 0) {
    state.success = true;
    state.best_correct = state.current;
    state.best_correct_cost = 0;
    return;
  }

  TransformInfo ti;

  give_up_now = false;
  size_t iterations = 0;
  for (iterations = 0; (state.current_cost > 0) && !give_up_now; ++iterations) {
    // Invoke statistics callback if we've been running for long enough
    if ((statistics_cb_ != nullptr) && (iterations % interval_ == 0) && iterations > 0) {
      elapsed = duration_cast<duration<double>>(steady_clock::now() - start);
      num_iterations = iterations;
      statistics_cb_(get_statistics(), statistics_cb_arg_);
    }

    // This is just here to clean up the for loop; check early exit conditions
    if (timeout_itr_ > 0 && iterations >= timeout_itr_) {
      break;
    } else if (timeout_sec_ != steady_clock::duration::zero() &&
               duration_cast<duration<double>>(steady_clock::now() - start) >= timeout_sec_) {
      break;
    }


    ti = (*transform_)(state.current);
    move_statistics[ti.move_type].num_proposed++;
    if (!ti.success) {
      continue;
    }
    move_statistics[ti.move_type].num_succeeded++;

    cout << endl << state.current.get_code() << endl << endl;

    const auto p = prob_(gen_);
    const auto max = state.current_cost - (log(p) / beta_);

    const auto new_res = fxn(state.current, max + 1);
    const auto is_correct = new_res.first;
    const auto new_cost = new_res.second;

    if (new_cost > max) {
      (*transform_).undo(state.current, ti);
      continue;
    }

    assert(state.current.check_invariants());

    move_statistics[ti.move_type].num_accepted++;
    state.current_cost = new_cost;

    const auto new_best_yet = new_cost < state.best_yet_cost;
    if (new_best_yet) {
      state.best_yet = state.current;
      state.best_yet_cost = new_cost;
    }
    const auto new_best_correct_yet = is_correct && ((new_cost == 0)
                                      || (new_cost < state.best_correct_cost));
    if (new_best_correct_yet) {
      state.success = true;
      state.best_correct = state.current;
      state.best_correct_cost = new_cost;
    }

    if ((progress_cb_ != nullptr) && (new_best_yet || new_best_correct_yet)) {
      progress_cb_({state}, progress_cb_arg_);
    }
  }

  // update values for statistics
  elapsed = duration_cast<duration<double>>(steady_clock::now() - start);
  num_iterations = iterations;

  if (give_up_now) {
    state.interrupted = true;
  }

  // make sure Cfg's are in a valid state (e.g. liveness information, which we
  // do not update during search)
  state.current.recompute();
  state.best_correct.recompute();
  state.best_yet.recompute();
}

StatisticsCallbackData Search::get_statistics() const {
  return {move_statistics, num_iterations, elapsed, transform_};
}

void Search::stop() {
  give_up_now = true;
}

void Search::configure(const Cfg& target, CostFunction& fxn, SearchState& state, vector<TUnit>& aux_fxn) const {
  state.current.recompute();
  state.best_yet.recompute();
  state.best_correct.recompute();

  // add dataflow information about function call targets
  for (const auto& fxn : aux_fxn) {
    const auto& code = fxn.get_code();
    const auto& lbl = fxn.get_leading_label();
    TUnit::MayMustSets mms = {
      code.must_read_set(),
      code.must_write_set(),
      code.must_undef_set(),
      code.maybe_read_set(),
      code.maybe_write_set(),
      code.maybe_undef_set()
    };
    state.current.add_summary(lbl, fxn.get_may_must_sets(mms));
  }

  state.current_cost = fxn(state.current).second;
  state.best_yet_cost = fxn(state.best_yet).second;
  state.best_correct_cost = fxn(state.best_correct).second;
  state.success = false;

  // @todo -- Let's move these invariants into SearchState
  // Redirecting the user here to reason about this seems like an opportunity for error

  // Invariant 3: Best correct should be correct with respect to target
  //assert(fxn(state.best_correct).first);
  // Invariant 4: Best yet should be less than or equal to correct cost
  assert(state.best_yet_cost <= state.current_cost);
}



} // namespace stoke
