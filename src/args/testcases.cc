#include "src/args/testcases.h"
#include "src/state/state_reader.h"
#include "src/state/state_writer.h"

using namespace std;

namespace stoke {

void TestcasesReader::operator()(istream& is, vector<CpuState>& ts) {
  ts.clear();
  for (string s; is >> s >> s;) {
    CpuState t;
    is >> t;

		getline(is, s);
		getline(is, s);

    ts.emplace_back(t);
  }
  if (is.eof()) {
    is.clear(ios::eofbit);
  }
}

void TestcasesWriter::operator()(ostream& os, const vector<CpuState>& ts) {
  for (size_t i = 0, ie = ts.size(); i < ie; ++i) {
    os << "Testcase " << i << ":" << endl;
	 	os << endl;
    os << ts[i];
		if ( i+1 != ie ) {
			os << endl;
			os << endl;
		}
  }
}

} // namespace stoke
