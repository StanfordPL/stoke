#ifndef STOKE_SRC_SEARCH_SEARCH_H
#define STOKE_SRC_SEARCH_SEARCH_H

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
			
		Search& set_mass(Move move, size_t mass);

		Search& set_timeout(size_t timeout) {
			timeout_ = timeout;
			return *this;
		}
		Search& set_beta(double beta) {
			beta_ = beta;
			return *this;
		}

		Search& set_progress_callback(ProgressCallback cb, void* arg) {

		}
		Search& set_statistics_callback(StatisticsCallback cb, void* arg) {

		}

		result_type run(const Cfg& target, const Cfg& rewrite, const CostFunction& fxn);

	private:	
		/** Move distribution. */
		std::vector<Move> moves_;
		/** Move statistics. */
		std::vector<Statistics> statistics_;
		/** Transforms helper. */
		Transforms transforms_;

		/** How many iterations should search run for? */
		size_t timeout_;
		/** Annealing constant. */
		double beta_;

		/** Progress callback. */
		ProgressCallback progress_cb_;
		void* progress_cb_arg_;
		/** Statistics callback. */
		StatisticsCallback finished_cb_;
		void* statistics_cb_arg_;
};

} // namespace stoke

#endif
