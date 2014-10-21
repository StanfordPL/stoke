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
#include "src/args/init.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Init>, 4> ds {{
    {"empty", Init::EMPTY},
    {"target", Init::TARGET},
		{"previous", Init::PREVIOUS},

		// Add user-defined extensions here ...
		{"extension", Init::EXTENSION}
  }
};

} // namespace

namespace stoke {

void InitReader::operator()(std::istream& is, Init& i) {
  string s;
  is >> s;
  if (!generic_read(ds, s, i)) {
    is.setstate(ios::failbit);
  }
}

void InitWriter::operator()(std::ostream& os, const Init i) {
  string s;
  generic_write(ds, s, i);
  os << s;
}

} // namespace stoke

