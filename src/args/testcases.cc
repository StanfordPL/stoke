#include "src/args/testcases.h"

using namespace std;

namespace stoke {

void TestcasesReader::operator()(istream& is, vector<CpuState>& ts) {
	ts.clear();
	for ( std::string s; !((is >> s).eof()); ) {
		stoke::CpuState t;
		is >> s >> t;
		ts.emplace_back(t);
	}
	if ( is.eof() ) {
		is.clear(std::ios::eofbit);
	}	
}

void TestcasesWriter::operator()(ostream& os, const vector<CpuState>& ts) {
	for ( size_t i = 0, ie = ts.size(); i < ie; ++i ) {
		os << "Testcase " << i << ":" << std::endl << std::endl;
		os << ts[i] << std::endl << std::endl;
	}
}

} // namespace stoke
