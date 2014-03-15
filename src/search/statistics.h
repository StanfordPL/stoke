#ifndef STOKE_SRC_SEARCH_STATISTICS_H
#define STOKE_SRC_SEARCH_STATISTICS_H

namespace stoke {

struct Statistics {
	Statistics() : num_proposed(0), num_succeeded(0), num_accepted(0) { }

	Statistics& operator+=(const Statistics& rhs) {
		num_proposed += rhs.num_proposed;
		num_succeeded += rhs.num_succeeded;
		num_accepted += rhs.num_accepted;
		return *this;
	}

	size_t num_proposed;
	size_t num_succeeded;
	size_t num_accepted;
};

} // namespace stoke

#endif
