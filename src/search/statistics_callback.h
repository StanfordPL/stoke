#ifndef STOKE_SRC_SEARCH_STATISTICS_CALLBACK_H
#define STOKE_SRC_SEARCH_STATISTICS_CALLBACK_H

#include <chrono>
#include <vector>

#include "src/search/statistics.h"

namespace stoke {

/** POD-datatype passed to callbacks by search */
struct StatisticsCallbackData {
	const std::vector<Statistics>& move_statistics;
	const size_t iterations;
	const std::chrono::duration<double> elapsed; 
};

/** Callback signature */
typedef void (*StatisticsCallback)(const StatisticsCallbackData& data, void* arg);

} // namespace stoke

#endif
