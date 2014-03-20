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

#include <sstream>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"

#include "src/args/tunit.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

void TUnitReader::operator()(istream& is, TUnit& t) {
  string s;

  getline(is, s);
  is >> s >> t.name;
  getline(is, s);
  getline(is, s);
  getline(is, s);

  vector<string> lines;
  for (size_t i = 0; getline(is, s); ++i) {
    lines.push_back(s);
  }
  lines.pop_back();
  is.clear(ios::eofbit);

  stringstream ss;
  for (const auto& l : lines) {
    ss << l << endl;
  }
  ss >> t.code;

  if (ss.fail()) {
    is.setstate(ios::failbit);
  }
}

void TUnitWriter::operator()(ostream& os, const TUnit& t) {
  ofilterstream<Indent> ofs(os);

  ofs.filter().indent();
  ofs << ".text" << endl;
  ofs << ".globl " << t.name << endl;
  ofs << ".type " << t.name << " @function" << endl;

  ofs.filter().unindent();
  ofs << t.name << ":" << endl;

  ofs.filter().indent();
  ofs << t.code << endl;

  ofs << ".size " << t.name << ", .-" << t.name;
}

} // namespace stoke
