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

#include <algorithm>
#include <sstream>
#include <vector>

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

TUnit::TUnit(const Code& code, uint64_t fo, uint64_t ro, size_t c) {
  code_ = code;
  if (!invariant_first_instr_is_label()) {
    code_.insert(code_.begin(), {LABEL_DEFN, {Label(".anonymous_function")}});
  }

  file_offset_ = fo;
  rip_offset_ = ro;
  recompute();
  capacity_ = c;
}

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

bool TUnit::invariant_rip_offsets() const {
  for (size_t i = 0, ie = get_code().size(); i < ie; ++i) {
    const auto& instr = get_code()[i];
    if (!instr.is_explicit_memory_dereference()) {
      continue;
    }
    const auto op = instr.get_operand<x64asm::M8>(instr.mem_index());
    if (!op.rip_offset()) {
      continue;
    }
    const auto after_instr = rip_offset_ + hex_offset(i) + hex_size(i);
    const auto target = after_instr + op.get_disp();
    if (rip_offset_targets_.find(target) == rip_offset_targets_.end()) {
      return false;
    }
  }

  return true;
}

bool TUnit::invariant_hex_sizes() const {
  Assembler assm;
  for (size_t i = 0, ie = code_.size(); i < ie; ++i) {
    if (hex_size(i) != assm.hex_size(code_[i])) {
      return false;
    }
  }
  return true;
}

bool TUnit::invariant_hex_offsets() const {
  Assembler assm;
  size_t offset = 0;
  for (size_t i = 0, ie = code_.size(); i < ie; ++i) {
    if (hex_offset(i) != offset) {
      return false;
    }
    offset += assm.hex_size(code_[i]);
  }
  return true;
}

void TUnit::remove(size_t index) {
  assert(index < code_.size());

  // Some constants
  const int64_t offset_delta = 0 - hex_size(index);

  // Update offset and size tables
  for (size_t i = index, ie = hex_sizes_.size()-1; i < ie; ++i) {
    hex_offsets_[i] = hex_offsets_[i+1] + offset_delta;
    hex_sizes_[i] = hex_sizes_[i+1];
  }
  hex_offsets_.resize(hex_offsets_.size()-1);
  hex_sizes_.resize(hex_sizes_.size()-1);

  // Delete this instruction
  code_.erase(code_.begin() + index);

  // Rescale any rips
  for (size_t i = index, ie = code_.size(); i < ie; ++i) {
    if (is_rip(i)) {
      adjust_rip(i, -offset_delta);
    }
  }
}

void TUnit::insert(size_t index, const x64asm::Instruction& instr, bool rescale_rip) {
  assert(index <= code_.size());

  // Some constants
  Assembler assm;
  const auto size = assm.hex_size(instr);
  const int64_t offset_delta = size;

  // Always update offset and size tables (they need to grow)
  hex_offsets_.resize(hex_offsets_.size()+1);
  hex_sizes_.resize(hex_sizes_.size()+1);
  for (int i = hex_offsets_.size()-1, ie = index; i > ie; --i) {
    hex_offsets_[i] = hex_offsets_[i-1] + offset_delta;
    hex_sizes_[i] = hex_sizes_[i-1];
  }
  hex_offsets_[index] = index == 0 ? 0 : hex_offsets_[index-1] + hex_sizes_[index-1];
  hex_sizes_[index] = size;

  // Insert this instruction
  //cout << "before insert of " << instr << " into code at " << index << ": " << endl << code_ << std::endl;
  code_.insert(code_.begin() + index, instr);
  //cout << "after insert into code: " << endl << code_ << std::endl;

  // If rescale rip is true, we have to adjust a global rip offset
  // Otherwise we'll just use the rip offsets in this instruction as they are given
  if (rescale_rip && is_rip(index)) {
    adjust_rip(index, 0 - get_rip_offset() - hex_offset(index) - hex_size(index));
  }

  // If this instruction has non-zero size, adjust everything that follows
  if (offset_delta != 0) {
    for (size_t i = index+1, ie = code_.size(); i < ie; ++i) {
      if (is_rip(i)) {
        adjust_rip(i, -offset_delta);
      }
    }
  }
}

void TUnit::replace(size_t index, const x64asm::Instruction& instr, bool skip_first, bool rescale_rip) {
  assert(!(skip_first && rescale_rip));
  assert(index < code_.size());

  // Some constants
  Assembler assm;
  const auto size = assm.hex_size(instr);
  const int64_t offset_delta = size - hex_size(index);

  // If this instruction has a new size, update offset and size tables
  if (offset_delta != 0) {
    for (size_t i = index+1, ie = hex_offsets_.size(); i < ie; ++i) {
      hex_offsets_[i] += offset_delta;
    }
    hex_sizes_[index] = size;
  }

  // Replace the instruction
  code_[index] = instr;

  // If rescale rip is true, we have to adjust a potential global rip offset
  if (!skip_first && is_rip(index) && rescale_rip) {
    adjust_rip(index, 0 - get_rip_offset() - hex_offset(index) - hex_size(index));
  }

  // If this instruction has non-zero size, adjust everything
  if (offset_delta != 0) {
    const auto begin = skip_first || rescale_rip ? index + 1 : index;
    for (size_t i = begin, ie = code_.size(); i < ie; ++i) {
      if (is_rip(i)) {
        adjust_rip(i, -offset_delta);
      }
    }
  }
}

void TUnit::swap(size_t i, size_t j) {
  assert(max(i,j) <= code_.size());

  // Corner cases; it's nice to have the invariant that i is the lower index
  if (i == j) {
    return;
  } else if (i > j) {
    std::swap(i, j);
  }

  // Some constants
  const int64_t span = hex_offset(j) - hex_offset(i+1);
  const int64_t offset_delta_i = span + hex_size(j);
  const int64_t offset_delta_j = 0 - span - hex_size(i);
  const int64_t offset_delta_inner = hex_size(j) - hex_size(i);

  // If hex sizes have changed update offset and size tables
  if (offset_delta_inner) {
    std::swap(hex_sizes_[i], hex_sizes_[j]);
    std::swap(hex_offsets_[i], hex_offsets_[j]);
    hex_offsets_[i] += offset_delta_j;
    if (offset_delta_inner != 0) {
      for (size_t idx = i+1; idx < j; ++idx) {
        hex_offsets_[idx] += offset_delta_inner;
      }
    }
    hex_offsets_[j] += offset_delta_i;
  }

  // Swap the instructions
  std::swap(code_[i], code_[j]);

  // Adjust rips
  if (is_rip(i)) {
    adjust_rip(i, -offset_delta_j);
  }
  if (offset_delta_inner != 0) {
    for (size_t idx = i+1; idx < j; ++idx) {
      if (is_rip(idx)) {
        adjust_rip(idx, -offset_delta_inner);
      }
    }
  }
  if (is_rip(j)) {
    adjust_rip(j, -offset_delta_i);
  }
}

void TUnit::rotate_left(size_t i, size_t j) {
  assert(max(i,j) <= code_.size());

  // Corner cases; it's nice to have the invariant that i is the lower index
  if (i == j) {
    return;
  } else if (i > j) {
    std::swap(i, j);
  }

  // Some constants
  const int64_t span = hex_offset(j) - hex_offset(i+1);
  const int64_t offset_delta_small = 0 - hex_size(i);
  const int64_t offset_delta_large = span + hex_size(j);

  // Update offset and size tables
  const auto size = hex_sizes_[i];
  const auto offset = hex_offsets_[i];
  for (size_t idx = i; idx < j; ++idx) {
    hex_sizes_[idx] = hex_sizes_[idx+1];
    hex_offsets_[idx] = hex_offsets_[idx+1] + offset_delta_small;
  }
  hex_sizes_[j] = size;
  hex_offsets_[j] = offset + offset_delta_large;

  // Rotate instructions
  const auto instr = code_[i];
  for (size_t idx = i; idx < j; ++idx) {
    code_[idx] = code_[idx+1];
  }
  code_[j] = instr;

  // Adjust rips
  for (size_t idx = i; idx < j; ++idx) {
    if (is_rip(idx)) {
      adjust_rip(idx, -offset_delta_small);
    }
  }
  if (is_rip(j)) {
    adjust_rip(j, -offset_delta_large);
  }
}

void TUnit::rotate_right(size_t i, size_t j) {
  assert(max(i,j) <= code_.size());

  // Corner cases; it's nice to have the invariant that i is the lower index
  if (i == j) {
    return;
  } else if (i > j) {
    std::swap(i, j);
  }

  // Some constants
  const int64_t span = hex_offset(j) - hex_offset(i+1);
  const int64_t offset_delta_small = hex_size(j);
  const int64_t offset_delta_large = 0 - span - hex_size(i);

  // Update offset and size tables
  const auto size = hex_sizes_[j];
  const auto offset = hex_offsets_[j];
  for (int idx = j; idx > (int)i; --idx) {
    hex_sizes_[idx] = hex_sizes_[idx-1];
    hex_offsets_[idx] = hex_offsets_[idx-1] + offset_delta_small;
  }
  hex_sizes_[i] = size;
  hex_offsets_[i] = offset + offset_delta_large;

  // Rotate instructions
  const auto instr = code_[j];
  for (int idx = j; idx > (int)i; --idx) {
    code_[idx] = code_[idx-1];
  }
  code_[i] = instr;

  // Adjust rips
  for (int idx = j; idx > (int)i; --idx) {
    if (is_rip(idx)) {
      adjust_rip(idx, -offset_delta_small);
    }
  }
  if (is_rip(i)) {
    adjust_rip(i, -offset_delta_large);
  }
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
  col.filter().next();

  // Print opcode label
  col << "Opcode" << endl;
  for(size_t i = 0, ie = code_.size(); i < ie; ++i) {
    col << dec << "OPC=" << (uint64_t)code_[i].get_opcode() << endl;
  }
  col.filter().done();

  // Finish up
  os << endl;
  os << ".size " << get_name() << ", .-" << get_name() << endl;

  os.setf(fmt);
  return os;
}

void TUnit::recompute() {
  Assembler assm;

  // Recompute hex sizes
  hex_sizes_.clear();
  for (const auto& instr : get_code()) {
    hex_sizes_.push_back(assm.hex_size(instr));
  }

  // Recompute hex offsets
  hex_offsets_ = {{0}};
  for (int i = 0, ie = code_.size()-1; i < ie; ++i) {
    hex_offsets_.push_back(hex_offsets_.back() + hex_size(i));
  }

  // Recomute rip offset targets
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

bool TUnit::is_rip(size_t index) const {
  const auto& instr = code_[index];
  if (!instr.is_explicit_memory_dereference() && !instr.is_lea()) {
    return false;
  }
  const auto mi = instr.mem_index();
  return instr.get_operand<M8>(mi).rip_offset();
}

void TUnit::adjust_rip(size_t index, int64_t delta) {
  assert(is_rip(index));

  auto& instr = code_[index];

  const auto mi = instr.mem_index();
  auto op = instr.get_operand<M8>(mi);
  op.set_disp(op.get_disp()+delta);

  instr.set_operand(mi, op);
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
      if (is_prefix("#!", s)) {
        warn(is) << "Found a comment that starts with #!, but that is not recognized. Is it misspelled?";
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
    fail(is) << "Label on line one differs from name given in file: " + get_name() + " vs. " + name;
  }

  recompute();

  is.flags(fmt);
  return is;
}

istream& TUnit::read_naked_text(istream& is) {
  is >> code_;

  if (!invariant_first_instr_is_label()) {
    code_.insert(code_.begin(), {LABEL_DEFN, {Label(".anonymous_function")}});
  }

  file_offset_ = 0;
  rip_offset_ = 0;
  recompute();
  capacity_ = hex_size();

  return is;
}

} // namespace stoke
