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
    if (i + 1 != ie) {
    	os << endl;
      os << endl;
    }
  }
}

} // namespace stoke
