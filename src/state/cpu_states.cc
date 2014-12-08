// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#include "src/state/cpu_states.h"

#include <string>

using namespace cpputil;
using namespace std;

namespace stoke {

ostream& CpuStates::write_text(std::ostream& os) const {
  for (size_t i = 0, ie = this->size(); i < ie; ++i) {
    os << "Testcase " << i << ":" << endl;
    os << endl;
    (*this)[i].write_text(os);
    if (i + 1 != ie) {
      os << endl;
      os << endl;
    }
  }

  return os;
}

istream& CpuStates::read_text(std::istream& is) {
  this->clear();
  for (string s; is >> s >> s;) {
    CpuState t;
    t.read_text(is);

    getline(is, s);
    getline(is, s);

    this->emplace_back(t);
  }
  if (is.eof()) {
    is.clear(ios::eofbit);
  }

  return is;
}

} // namespace stoke
