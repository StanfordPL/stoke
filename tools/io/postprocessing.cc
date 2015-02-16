// Copyright 2013-2015 Stanford University
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
#include "tools/io/postprocessing.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Postprocessing>, 3> rs {{
    {"none", Postprocessing::NONE},
    {"simple", Postprocessing::SIMPLE},
    {"full", Postprocessing::FULL},
  }
};

} // namespace

namespace stoke {

void PostprocessingReader::operator()(std::istream& is, Postprocessing& r) {
  string s;
  is >> s;
  if (!generic_read(rs, s, r)) {
    is.setstate(ios::failbit);
  }
}

void PostprocessingWriter::operator()(std::ostream& os, const Postprocessing r) {
  string s;
  generic_write(rs, s, r);
  os << s;
}

} // namespace stoke
