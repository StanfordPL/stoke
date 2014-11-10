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
#include "tools/io/move.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Move>, 7> moves {{
    {"instruction", Move::INSTRUCTION},
    {"opcode", Move::OPCODE},
    {"operand", Move::OPERAND},
    {"local_swap", Move::LOCAL_SWAP},
    {"global_swap", Move::GLOBAL_SWAP},
    {"resize", Move::RESIZE},

		// Add user-defined extensions here ...
		{"extension", Move::EXTENSION}
  }
};

} // namespace

namespace stoke {

void MoveReader::operator()(std::istream& is, Move& m) {
  string s;
  is >> s;
  if (!generic_read(moves, s, m)) {
    is.setstate(ios::failbit);
  }
}

void MoveWriter::operator()(std::ostream& os, const Move m) {
  string s;
  generic_write(moves, s, m);
  os << s;
}

} // namespace stoke

