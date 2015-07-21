// Copyright 2013-2015 Stanford University
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

#ifndef STOKE_SRC_SEARCH_SEARCH_H
#define STOKE_SRC_SEARCH_SEARCH_H

#include <chrono>
#include <random>

#include "src/cost/cost_function.h"
#include "src/search/init.h"
#include "src/search/progress_callback.h"
#include "src/search/search_state.h"
#include "src/search/statistics.h"
#include "src/search/statistics_callback.h"
#include "src/transform/move.h"
#include "src/transform/transforms.h"
#include "src/tunit/tunit.h"

namespace stoke {

class Search {
public:
  /** Create a new search from a transform helper. */
  Search(Transforms* transforms);

  /** Set the random search seed. */
  Search& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }
  /** Set the maximum number of instructions. */
  Search& set_max_instrs(size_t mi) {
    max_instrs_ = mi;
    return *this;
  }
  /** Set the maximum number of proposals to perform before giving up. */
  Search& set_timeout_itr(size_t timeout) {
    timeout_itr_ = timeout;
    return *this;
  }
  /** Set the maximum number of seconds to run for before giving up. */
  Search& set_timeout_sec(std::chrono::duration<double> timeout) {
    timeout_sec_ = timeout;
    return *this;
  }
  /** Set the annealing constant. */
  Search& set_beta(double beta) {
    beta_ = beta;
    return *this;
  }
  /** Set the proposal mass for a transformation type. */
  Search& set_mass(Move move, size_t mass);
  /** Set progress callback function. */
  Search& set_progress_callback(ProgressCallback cb, void* arg) {
    progress_cb_ = cb;
    progress_cb_arg_ = arg;
    return *this;
  }
  /** Set statistics callback function. */
  Search& set_statistics_callback(StatisticsCallback cb, void* arg) {
    statistics_cb_ = cb;
    statistics_cb_arg_ = arg;
    return *this;
  }
  /** Set the number of proposals to perform between statistics updates. */
  Search& set_statistics_interval(size_t si) {
    interval_ = si;
    return *this;
  }

  /** Run search beginning from a search state using a user-supplied cost function. */
  void run(const Cfg& target, CostFunction& fxn, Init init, SearchState& state, std::vector<stoke::TUnit>& aux_fxn);
  /** Stops an in-progress search.  To be used from a callback, for example. */
  void stop();

  /** Returns the statistics collected for the search up to now (or the full statistics for the whole run, if search terminated). */
  StatisticsCallbackData get_statistics() const;

private:
  /** Random generator. */
  std::default_random_engine gen_;
  /** For sampling moves. */
  std::uniform_int_distribution<size_t> int_;
  /** For sampling probabilities. */
  std::uniform_real_distribution<double> prob_;
  /** Move distribution. */
  std::vector<Move> moves_;

  /** Transformation helper class. */
  Transforms* transforms_;

  /** Maximum number of rewrite instructions. */
  size_t max_instrs_;

  /** How many iterations should search run for? */
  size_t timeout_itr_;
  /** How many seconds should search run for? */
  std::chrono::duration<double> timeout_sec_;
  /** Annealing constant. */
  double beta_;

  /** Progress callback. */
  ProgressCallback progress_cb_;
  void* progress_cb_arg_;
  /** Statistics callback. */
  StatisticsCallback statistics_cb_;
  void* statistics_cb_arg_;
  /** How often are statistics printed? */
  size_t interval_;

  /** Statistics so far. */
  std::vector<Statistics> move_statistics;
  size_t num_iterations;
  std::chrono::duration<double> elapsed;

  /** Configures a search state. */
  void configure(const Cfg& target, CostFunction& fxn, SearchState& state, std::vector<stoke::TUnit>& aux_fxn) const;
};

} // namespace stoke

#endif
