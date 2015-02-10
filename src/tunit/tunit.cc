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

#include "src/tunit/tunit.h"

#include <sstream>
#include <vector>

#include "tools/ui/console.h"

#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

bool is_prefix(const string& pre, const string& s) {
  auto sl = s.length();
  auto prel = pre.length();
  if (sl < prel) {
    return false;
  }
  return 0 == s.compare(0, prel, pre, 0, prel);
}

istream& operator>>(istream& is, TUnit& t) {
  string s;

  getline(is, s);
  is >> s >> t.name;
  getline(is, s);
  getline(is, s);

  vector<string> lines;
  for (size_t i = 0; getline(is, s); ++i) {
    stringstream ss;
    RegSet rs;
    if (is_prefix("#! maybe-read {", s)) {
      ss << s.substr(14);
      ss >> rs;
      t.maybe_read_set = rs;
    } else if (is_prefix("#! must-read {", s)) {
      ss << s.substr(13);
      ss >> rs;
      t.must_read_set = rs;
    } else if (is_prefix("#! maybe-write {", s)) {
      ss << s.substr(15);
      ss >> rs;
      t.maybe_write_set = rs;
    } else if (is_prefix("#! must-write {", s)) {
      ss << s.substr(14);
      ss >> rs;
      t.must_write_set = rs;
    } else if (is_prefix("#! maybe-undef {", s)) {
      ss << s.substr(15);
      ss >> rs;
      t.maybe_undef_set = rs;
    } else if (is_prefix("#! must-undef {", s)) {
      ss << s.substr(14);
      ss >> rs;
      t.must_undef_set = rs;
    } else {
      if (is_prefix("#!", s)) {
        Console::warn() << "Found a comment that starts with #!, but that is not recognized.  Is it misspelled?" << endl;
      }
      lines.push_back(s);
    }
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

  size_t line = 1;
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
