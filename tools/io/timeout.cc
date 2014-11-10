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

#include "tools/io/generic.h"
#include "tools/io/timeout.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Timeout>, 3> pts {{
    {"quit", Timeout::QUIT},
    {"restart", Timeout::RESTART},
    {"testcase", Timeout::TESTCASE}
  }
};

} // namespace

namespace stoke {

void TimeoutReader::operator()(std::istream& is, Timeout& t) {
  string s;
  is >> s;
  if (!generic_read(pts, s, t)) {
    is.setstate(ios::failbit);
  }
}

void TimeoutWriter::operator()(std::ostream& os, const Timeout t) {
  string s;
  generic_write(pts, s, t);
  os << s;
}

} // namespace stoke
