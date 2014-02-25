#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/performance_term.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, PerformanceTerm>, 3> pts {{
	{"none", PerformanceTerm::NONE}, 
	{"size", PerformanceTerm::SIZE}, 
	{"latency", PerformanceTerm::LATENCY}
}};

} // namespace

namespace stoke {

void PerformanceTermReader::operator()(std::istream& is, PerformanceTerm pt) {
	string s;
	is >> s;
	if ( is.fail() || !generic_read(pts, s, pt) ) {
		is.setstate(ios::failbit);
	}
}

void PerformanceTermWriter::operator()(std::ostream& os, const PerformanceTerm pt) {
	string s;
	if ( generic_write(pts, s, pt) ) {
		os.setstate(ios::failbit);
	}
	os << s;
}

} // namespace stoke
