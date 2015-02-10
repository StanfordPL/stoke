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

namespace {

bool is_prefix(const string& pre, const string& s) {
  auto sl = s.length();
  auto prel = pre.length();
  if (sl < prel) {
    return false;
  }
  return 0 == s.compare(0, prel, pre, 0, prel);
}

} // namespace

namespace stoke {

TUnit::MayMustSets TUnit::get_may_must_sets(const MayMustSets& defaults) const {
	RegSet res_must_read_set = defaults.must_read_set;
	RegSet res_must_write_set = defaults.must_write_set;
	RegSet res_must_undef_set = defaults.must_undef_set;
	RegSet res_maybe_read_set = defaults.maybe_read_set;
	RegSet res_maybe_write_set = defaults.maybe_write_set;
	RegSet res_maybe_undef_set = defaults.maybe_undef_set;
	if (must_read_set) {
		res_must_read_set = *must_read_set;
		if (!maybe_read_set) {
			// make sure maybe/must sets are consistent (user-provided sets take precedence over default)
			res_maybe_read_set |= res_must_read_set;
		}
	}
	if (must_write_set) {
		res_must_write_set = *must_write_set;
		if (!maybe_write_set) {
			// make sure maybe/must sets are consistent (user-provided sets take precedence over default)
			res_maybe_write_set |= res_must_write_set;
		}
	}
	if (must_undef_set) {
		res_must_undef_set = *must_undef_set;
		if (!maybe_undef_set) {
			// make sure maybe/must sets are consistent (user-provided sets take precedence over default)
			res_maybe_undef_set |= res_must_undef_set;
		}
	}
	if (maybe_read_set) {
		res_maybe_read_set = *maybe_read_set;
		if (!must_read_set) {
			// make sure maybe/must sets are consistent (user-provided sets take precedence over default)
			res_must_read_set &= res_maybe_read_set;
		}
	}
	if (maybe_write_set) {
		res_maybe_write_set = *maybe_write_set;
		if (!must_write_set) {
			// make sure maybe/must sets are consistent (user-provided sets take precedence over default)
			res_must_write_set &= res_maybe_write_set;
		}
	}
	if (maybe_undef_set) {
		res_maybe_undef_set = *maybe_undef_set;
		if (!must_undef_set) {
			// make sure maybe/must sets are consistent (user-provided sets take precedence over default)
			res_must_undef_set &= res_maybe_undef_set;
		}
	}
	return {
		res_must_read_set,
			res_must_write_set,
			res_must_undef_set,
			res_maybe_read_set,
			res_maybe_write_set,
			res_maybe_undef_set,
	};
}

istream& TUnit::read_text(istream& is) {
	string first_line;
	getline(is, first_line);

	stringstream ss;
	ss << first_line << endl;
	ss << is.rdbuf();

	if (first_line == "  .text") {
		read_formatted_text(ss);
	} else {
		read_naked_text(ss);
	}

	if (ss.fail()) {
		is.setstate(ios::failbit);
	}
	return is;
}

ostream& TUnit::write_text(ostream& os) const {
  os << "  .text" << endl;
  os << "  .globl " << name << endl;
  os << "  .type " << name << ", @function" << endl;

  ofilterstream<Column> col(os);
  col.filter().padding(2);

  for (size_t i = 0, ie = code.size(); i < ie; ++i) {
    if (!code[i].is_label_defn()) {
      col << "  ";
    }
    col << code[i];
    if (i + 1 != ie) {
      col << endl;
    }
  }
  col.filter().next();

  size_t line = 1;
  for (size_t i = 0, ie = code.size(); i < ie; ++i) {
    if (!code[i].is_label_defn()) {
      col << "# " << dec << line++;
    }
    if (i + 1 != ie) {
      col << endl;
    }
  }
  col.filter().done();

  os << endl << endl;
  os << ".size " << name << ", .-" << name << endl;

  return os;
}

istream& TUnit::read_formatted_text(istream& is) {
  string s;

  getline(is, s);
  is >> s >> name;
  getline(is, s);
  getline(is, s);

  vector<string> lines;
  for (size_t i = 0; getline(is, s); ++i) {
    stringstream ss;
    RegSet rs;
    if (is_prefix("#! maybe-read {", s)) {
      ss << s.substr(14);
      ss >> rs;
      maybe_read_set = rs;
    } else if (is_prefix("#! must-read {", s)) {
      ss << s.substr(13);
      ss >> rs;
      must_read_set = rs;
    } else if (is_prefix("#! maybe-write {", s)) {
      ss << s.substr(15);
      ss >> rs;
      maybe_write_set = rs;
    } else if (is_prefix("#! must-write {", s)) {
      ss << s.substr(14);
      ss >> rs;
      must_write_set = rs;
    } else if (is_prefix("#! maybe-undef {", s)) {
      ss << s.substr(15);
      ss >> rs;
      maybe_undef_set = rs;
    } else if (is_prefix("#! must-undef {", s)) {
      ss << s.substr(14);
      ss >> rs;
      must_undef_set = rs;
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
  ss >> code;

  if (ss.fail()) {
    is.setstate(ios::failbit);
  }

  // TODO: output an error message of what when wrong
  if (code[0].get_opcode() != LABEL_DEFN ||
      code[0].get_operand<Label>(0) != Label("." + name)) {
    is.setstate(ios::failbit);
  }

  return is;
}

istream& TUnit::read_naked_text(istream& is) {
	is >> code;
	if (is.fail()) {
		return is;
	}
	
	if (!code.empty() && code[0].is_label_defn()) {
		const auto label = code[0].get_operand<Label>(0);
		name = label.get_text().substr(1);
	} else {
		name = "anonymous_function";
		code.insert(code.begin(), {LABEL_DEFN, {Label(".anonymous_function")}});
	}

	return is;
}

} // namespace stoke
