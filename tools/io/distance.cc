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

#include <array>
#include <string>
#include <utility>

#include "tools/io/generic.h"
#include "tools/io/distance.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Distance>, 3> ds {{
    {"hamming", Distance::HAMMING},
    {"ulp", Distance::ULP},

    // Add user-defined extensions here ...
    {"extension", Distance::EXTENSION}
  }
};

} // namespace

namespace stoke {

void DistanceReader::operator()(std::istream& is, Distance& d) {
  string s;
  is >> s;
  if (!generic_read(ds, s, d)) {
    is.setstate(ios::failbit);
  }
}

void DistanceWriter::operator()(std::ostream& os, const Distance d) {
  string s;
  generic_write(ds, s, d);
  os << s;
}

} // namespace stoke
