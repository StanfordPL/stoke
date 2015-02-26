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
#include "src/ext/cpputil/include/io/fail.h"
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
  auto res = defaults;

  // make sure maybe/must sets are consistent
  // (user-provided sets take precedence over default)
  if (must_read_set_) {
    res.must_read_set = *must_read_set_;
    if (!maybe_read_set_) {
      res.maybe_read_set |= res.must_read_set;
    }
  }
  if (must_write_set_) {
    res.must_write_set = *must_write_set_;
    if (!maybe_write_set_) {
      res.maybe_write_set |= res.must_write_set;
    }
  }
  if (must_undef_set_) {
    res.must_undef_set = *must_undef_set_;
    if (!maybe_undef_set_) {
      res.maybe_undef_set |= res.must_undef_set;
    }
  }
  if (maybe_read_set_) {
    res.maybe_read_set = *maybe_read_set_;
    if (!must_read_set_) {
      res.must_read_set &= res.maybe_read_set;
    }
  }
  if (maybe_write_set_) {
    res.maybe_write_set = *maybe_write_set_;
    if (!must_write_set_) {
      res.must_write_set &= res.maybe_write_set;
    }
  }
  if (maybe_undef_set_) {
    res.maybe_undef_set = *maybe_undef_set_;
    if (!must_undef_set_) {
      res.must_undef_set &= res.maybe_undef_set;
    }
  }

  return res;
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

  if (failed(ss)) {
    fail(is) << fail_msg(ss);
  }

  return is;
}

ostream& TUnit::write_text(ostream& os) const {
  const auto fmt = os.flags();

  os << "  .text" << endl;
  os << "  .globl " << get_name() << endl;
  os << "  .type " << get_name() << ", @function" << endl;
  os << endl;

  os << "#! file-offset " << showbase << hex << get_file_offset() << endl;
  os << "#! rip-offset  " << showbase << hex << get_rip_offset() << endl;
  os << "#! capacity    " << noshowbase << dec << hex_capacity() << " bytes" << endl;
  os << endl;

  if (maybe_read_set_) {
    os << "#! maybe-read  " << *maybe_read_set_ << endl;
  }
  if (must_read_set_) {
    os << "#! must-read   " << *must_read_set_ << endl;
  }
  if (maybe_write_set_) {
    os << "#! maybe-write " << *maybe_write_set_ << endl;
  }
  if (must_write_set_) {
    os << "#! must-write  " << *must_write_set_ << endl;
  }
  if (maybe_undef_set_) {
    os << "#! maybe-undef " << *maybe_undef_set_ << endl;
  }
  if (must_undef_set_) {
    os << "#! must-undef  " << *must_undef_set_ << endl;
  }
  if (maybe_read_set_ || maybe_write_set_ || maybe_undef_set_ ||
      must_read_set_ ||  must_write_set_  || must_undef_set_) {
    os << endl;
  }

  ofilterstream<Column> col(os);
  col.filter().padding(2);

	// Print code
	col << "# Text" << endl;
  for (size_t i = 0, ie = code_.size(); i < ie; ++i) {
    if (!code_[i].is_label_defn()) {
      col << "  ";
    }
    col << code_[i] << endl;
  }
  col.filter().next();

	// Print comment markers
	col << "#" << endl;
	for (size_t i = 0, ie = code_.size(); i < ie; ++i) {
		col << "#" << endl;
	}
	col.filter().next();

	// Print line numbers
	col << "Line" << endl;
  size_t line = 1;
  for (size_t i = 0, ie = code_.size(); i < ie; ++i) {
    if (!code_[i].is_label_defn()) {
      col << dec << line++;
    }
		col << endl;
  }
	col.filter().next();

	// Print rip offsets
	col << "RIP" << endl;
	for (auto i = hex_offset_begin(), ie = hex_offset_end(); i != ie; ++i) {
		col << hex << showbase << rip_offset_ + *i << endl;
	}
	col.filter().next();

	// Print hex size
	col << "Bytes" << endl;
	for (auto i = hex_size_begin(), ie = hex_size_end(); i != ie; ++i) {
		col << dec << *i << endl;
	}
  col.filter().done();

	os << endl;
  os << ".size " << get_name() << ", .-" << get_name() << endl;

  os.setf(fmt);
  return os;
}

void TUnit::recompute_rip_offset_targets() {
	rip_offset_targets_.clear();
	for (size_t i = 0, ie = get_code().size(); i < ie; ++i) {
		const auto& instr = get_code()[i];
		if (!instr.is_explicit_memory_dereference()) {
			continue;
		}
		const auto op = instr.get_operand<M8>(instr.mem_index());
		if (op.rip_offset()) {
			const auto after_instr = rip_offset_ + hex_offset(i) + hex_size(i);
			const auto target = after_instr + op.get_disp();
			rip_offset_targets_.insert(target);
		}
	}
}

void TUnit::recompute_hex_offsets() {
	hex_offsets_ = {{0}};
	for (int i = 0, ie = code_.size()-1; i < ie; ++i) {
		hex_offsets_.push_back(hex_offsets_.back() + hex_size(i));
	}
}

void TUnit::recompute_hex_sizes() {
	Assembler assm;
	hex_sizes_.clear();
	for (const auto& instr : get_code()) {
		hex_sizes_.push_back(assm.hex_size(instr));
	}	
}

istream& TUnit::read_formatted_text(istream& is) {
  const auto fmt = is.flags();

  string name, s;

  getline(is, s);
  is >> s >> name;
  getline(is, s);
  getline(is, s);

  file_offset_ = 0;
  capacity_ = 0;
  rip_offset_ = 0;

  vector<string> lines;
  auto rs = RegSet::empty();

  for (size_t i = 0; getline(is, s); ++i) {
    while (isspace(s[0])) {
      s = s.substr(1);
    }

    stringstream ss;
    if (is_prefix("#! file-offset", s)) {
      ss << s.substr(14);
      ss >> hex >> file_offset_;
    } else if (is_prefix("#! rip-offset", s)) {
      ss << s.substr(13);
      ss >> hex >> rip_offset_;
    } else if (is_prefix("#! capacity", s)) {
      ss << s.substr(11);
      ss >> dec >> capacity_;
    } else if (is_prefix("#! maybe-read", s)) {
      ss << s.substr(13);
      ss >> rs;
      maybe_read_set_ = rs;
    } else if (is_prefix("#! must-read", s)) {
      ss << s.substr(12);
      ss >> rs;
      must_read_set_ = rs;
    } else if (is_prefix("#! maybe-write", s)) {
      ss << s.substr(14);
      ss >> rs;
      maybe_write_set_ = rs;
    } else if (is_prefix("#! must-write", s)) {
      ss << s.substr(13);
      ss >> rs;
      must_write_set_ = rs;
    } else if (is_prefix("#! maybe-undef", s)) {
      ss << s.substr(14);
      ss >> rs;
      maybe_undef_set_ = rs;
    } else if (is_prefix("#! must-undef", s)) {
      ss << s.substr(13);
      ss >> rs;
      must_undef_set_ = rs;
    } else {
      // @todo This warning should be packed up inot the stream's warning monad
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
  ss >> code_;

  if (failed(ss)) {
    fail(is) << fail_msg(ss);
  } else if (!invariant_first_instr_is_label()) {
    fail(is) << "First instruction is not a label";
  } else if (get_name() != name) {
    fail(is) << "Label on line one differs from name given in file";
  }

	recompute();

  is.flags(fmt);
  return is;
}

istream& TUnit::read_naked_text(istream& is) {
  is >> code_;

  file_offset_ = 0;
  capacity_ = 0;
  rip_offset_ = 0;

  if (!invariant_first_instr_is_label()) {
    code_.insert(code_.begin(), {LABEL_DEFN, {Label(".anonymous_function")}});
  }

	recompute();

  return is;
}

} // namespace stoke
