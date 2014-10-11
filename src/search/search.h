// Copyright 2014 eric schkufza
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
#include "src/search/move.h"
#include "src/search/progress_callback.h"
#include "src/search/statistics.h"
#include "src/search/statistics_callback.h"
#include "src/search/transforms.h"

namespace stoke {

class Search {
 public:
	/** Result type; best verified rewrite and whether it differs from the target. */
  typedef std::pair<Cfg, bool> result_type;

	/** Create a new search from a transform helper. */
  Search(Transforms* transforms);

	/** Set the initial search state. */
	Search& set_init(Init init, size_t max_instrs) {
		init_ = init;
		max_instrs_ = max_instrs;
		return *this;
	}
	/** Set the random search seed. */
  Search& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }
	/** Set the maximum number of proposals to perform before giving up. */
  Search& set_timeout_itr(size_t timeout) {
    timeout_itr_ = timeout;
    return *this;
  }
	/** Set the maximum number of seconds to run for before giving up. */
	Search& set_timeout_sec(size_t timeout) {
		timeout_sec_ = std::chrono::duration<size_t>(timeout);
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

	/** Run search for a rewrite using a user-supplied cost function. */
  result_type run(const Cfg& target, const Cfg& rewrite, CostFunction& fxn);

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

	/** Rewrite to begin search from. */
	Init init_;
	/** Maximum number of rewrite instructions. */
	size_t max_instrs_;

  /** How many iterations should search run for? */
  size_t timeout_itr_;
	/** How many seconds should search run for? */
	std::chrono::duration<size_t> timeout_sec_;
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

	/** Set initial search state based on value of init_ */
	Cfg initialize(const Cfg& rewrite) const;
	/** Removes all non-return instructions from rewrite. */
	Cfg empty_init(const Cfg& rewrite) const;
	/** Returns a user-defined initial rewrite */
	Cfg extension_init(const Cfg& rewrite) const;
};

} // namespace stoke

#endif
