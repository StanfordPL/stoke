#ifndef STOKE_SRC_SEARCH_PROGRESS_CALLBACK_H
#define STOKE_SRC_SEARCH_PROGRESS_CALLBACK_H

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"

namespace stoke {

/** POD-datatype passed to callbacks by search */
struct ProgressCallbackData {
	const Cfg& current;
	const Cost current_cost;

	const Cfg& best_yet;
	const Cost best_yet_cost;

	const Cfg& best_correct;
	const Cost best_correct_cost;

	const bool success;
};

/** Callback signature */
typedef void (*ProgressCallback)(const ProgressCallbackData& data, void* arg);

} // namespace stoke

#endif
