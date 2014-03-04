#ifndef STOKE_SRC_SEARCH_SEARCH_H
#define STOKE_SRC_SEARCH_SEARCH_H

#include <random>

#include "src/cost/cost_function.h"
#include "src/search/move.h"
#include "src/search/progress_callback.h"
#include "src/search/statistics.h"
#include "src/search/statistics_callback.h"
#include "src/search/transforms.h"

namespace stoke {

class Search {
	public:
		typedef std::pair<Cfg, bool> result_type;

		Search(); 
			
		Search& set_seed(std::default_random_engine::result_type seed) {
			gen_.seed(seed);
			transforms_.set_seed(seed);
			return *this;
		}
		Search& set_timeout(size_t timeout) {
			timeout_ = timeout;
			return *this;
		}
		Search& set_beta(double beta) {
			beta_ = beta;
			return *this;
		}

		Search& set_mass(Move move, size_t mass);

		Search& set_progress_callback(ProgressCallback cb, void* arg) {
			progress_cb_ = cb;
			progress_cb_arg_ = arg;
			return *this;
		}
		Search& set_statistics_callback(StatisticsCallback cb, void* arg) {
			statistics_cb_ = cb;
			statistics_cb_arg_ = arg;
			return *this;
		}
		Search& set_statistics_interval(size_t si) {
			interval_ = si;
			return *this;
		}

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
		Transforms transforms_;

		/** How many iterations should search run for? */
		size_t timeout_;
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
};

} // namespace stoke

#endif
