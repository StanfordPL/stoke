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

#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/reduction.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Reduction>, 3> rs {{
    {"sum", Reduction::SUM},
    {"max", Reduction::MAX},

		// Add user-defined reductions here ...
		{"extension", Reduction::EXTENSION}
  }
};

} // namespace

namespace stoke {

void ReductionReader::operator()(std::istream& is, Reduction& r) {
  string s;
  is >> s;
  if (!generic_read(rs, s, r)) {
    is.setstate(ios::failbit);
  }
}

void ReductionWriter::operator()(std::ostream& os, const Reduction r) {
  string s;
  generic_write(rs, s, r);
  os << s;
}

} // namespace stoke
