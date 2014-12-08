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

#include "src/tunit/tunit.h"

#include <sstream>
#include <vector>

#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

istream& operator>>(istream& is, TUnit& t) {
  string s;

  getline(is, s);
  is >> s >> t.name;
  getline(is, s);
  getline(is, s);

  vector<string> lines;
  for (size_t i = 0; getline(is, s); ++i) {
    lines.push_back(s);
  }
  is.clear(ios::eofbit);

  stringstream ss;
  string end = ".size ";
  for (const auto& l : lines) {
    if (l.substr(0, end.size()) != end) {
      ss << l << endl;
    } else {
      break;
    }
  }
  ss >> t.code;

  if (ss.fail()) {
    is.setstate(ios::failbit);
  }

  // TODO: output an error message of what when wrong
  if (t.code[0].get_opcode() != LABEL_DEFN ||
      t.code[0].get_operand<Label>(0) != x64asm::Label("." + t.name)) {
    is.setstate(ios::failbit);
  }

  return is;
}

ostream& operator<<(ostream& os, const TUnit& t) {
  os << "  .text" << endl;
  os << "  .globl " << t.name << endl;
  os << "  .type " << t.name << ", @function" << endl;
  os << "." << t.name << ":" << endl;

  ofilterstream<Column> col(os);
  col.filter().padding(2);

  for (size_t i = 0, ie = t.code.size(); i < ie; ++i) {
    if (!t.code[i].is_label_defn()) {
      col << "  ";
    }
    col << t.code[i];
    if (i + 1 != ie) {
      col << endl;
    }
  }
  col.filter().next();

  size_t line = 0;
  for (size_t i = 0, ie = t.code.size(); i < ie; ++i) {
    if (!t.code[i].is_label_defn()) {
      col << "# " << dec << line++;
    }
    if (i + 1 != ie) {
      col << endl;
    }
  }
  col.filter().done();

  os << endl << endl;
  os << ".size " << t.name << ", .-" << t.name << endl;

  return os;
}

} // namespace stoke
