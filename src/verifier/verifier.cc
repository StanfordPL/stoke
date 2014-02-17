#include <chrono>

#include "src/verifier/verifier.h"

using namespace std;

namespace stoke {

bool Verifier::verify(const Cfg& target, const Cfg& rewrite) {
	auto ret = false;

	chrono::system_clock::time_point start = chrono::system_clock::now();
	switch ( strategy_ ) {
		case Strategy::REGRESSION:
			ret = regression(target, rewrite);
			break;
		case Strategy::FORMAL:
			ret = formal(target, rewrite);
			break;
		case Strategy::RANDOM:
			ret = random(target, rewrite);
			break;
	}
	chrono::system_clock::time_point stop = chrono::system_clock::now();
	const auto dtn = stop - start;

	if ( !ret && fail_.first != nullptr ) {
		fail_.first({dtn, counter_example_}, fail_.second);
	} else if ( ret && pass_.first != nullptr ) {
		pass_.first({dtn}, pass_.second);
	}

	return ret;
}

bool Verifier::regression(const Cfg& target, const Cfg& rewrite) {
	return false;
}

bool Verifier::formal(const Cfg& target, const Cfg& rewrite) {
	return false;
}

bool Verifier::random(const Cfg& target, const Cfg& rewrite) {
	return false;
}

} // namespace stoke
