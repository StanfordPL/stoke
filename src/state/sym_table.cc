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

#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
#include "src/state/sym_table.h"

#include <string>

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

void SymbolTable::insert(const Label& l, uint64_t addr) {
  assert(!contains(l));
  table_[l] = addr;

  // If the flat table is empty, simply insert the new element
  if (flat_table_.empty()) {
    min_label_ = static_cast<uint64_t>(l);
    flat_table_.push_back(addr);
  }

  // If this label is above the logical min value
  // grow the table if necessary and insert the new value
  else if (l > min_label_) {
    const auto offset = static_cast<uint64_t>(l) - min_label_;

    assert(offset+1 < 1024);
    flat_table_.resize(offset+1);

    flat_table_[offset] = addr;
  }

  // If this label is below the logical min value
  // grow the table, insert the new value, and re-index everything
  else if (l < min_label_) {
    const auto offset = min_label_ - static_cast<uint64_t>(l);

    assert(flat_table_.size()+offset < 1024);
    flat_table_.resize(flat_table_.size() + offset);

    min_label_ = static_cast<uint64_t>(l);
    for (const auto& sym : table_) {
      flat_table_[sym.first - min_label_] = sym.second;
    }
  }

  // Control should never reach here, we never insert duplicates
  else {
    assert(false);
  }
}

ostream& SymbolTable::write_text(ostream& os) const {
  const auto fmt = os.flags();

  os << "[ " << table_.size() << " symbols ]";
  if (table_.empty()) {
    return os;
  }

  os << endl;
  for (const auto& entry : table_) {
    os << endl;
    HexWriter<uint64_t, 8>()(os, entry.second);
    os << " " << entry.first.get_text();
  }

  os.flags(fmt);
  return os;
}

istream& SymbolTable::read_text(istream& is) {
  const auto fmt = is.flags();

  clear();

  string s;
  getline(is, s, '[');

  size_t rows = 0;
  is >> dec >> rows;

  getline(is, s, ']');

  if (rows != 0) {
    getline(is, s);
  }
  for (size_t i = 0; i < rows; ++i) {
    getline(is, s);

    uint64_t addr = 0;
    HexReader<uint64_t, 8>()(is, addr);

    string label;
    is >> label;

    insert(Label(label), addr);
  }

  is.flags(fmt);
  return is;
}

ostream& SymbolTable::write_bin(ostream& os) const {
  const size_t num_syms = table_.size();
  os.write((const char*)&num_syms, sizeof(size_t));
  for (const auto& entry : table_) {
    const size_t num_chars = entry.first.get_text().length();
    os.write((const char*)&num_chars, sizeof(size_t));
    os.write(entry.first.get_text().c_str(), num_chars);
    os.write((const char*)&entry.second, sizeof(uint64_t));
  }

  return os;
}

istream& SymbolTable::read_bin(istream& is) {
  clear();

  size_t num_syms = 0;
  is.read((char*)&num_syms, sizeof(size_t));

  for (size_t i = 0; i < num_syms; ++i) {
    size_t num_chars = 0;
    is.read((char*)&num_chars, sizeof(size_t));

    string label = "";
    for (size_t j = 0; j < num_chars; ++j) {
      char c;
      is.read(&c, sizeof(char));
      label += c;
    }

    uint64_t addr = 0;
    is.read((char*)&addr, sizeof(uint64_t));

    insert(Label(label), addr);
  }

  return is;
}

} // namespace stoke



