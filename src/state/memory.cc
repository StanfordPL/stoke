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

#include "src/state/memory.h"

#include <string>

#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"

using namespace cpputil;
using namespace std;

namespace stoke {

ostream& Memory::write_text(ostream& os) const {
  write_text_summary(os);
  os << endl;
  write_text_contents(os);

  return os;
}

istream& Memory::read_text(istream& is) {
  read_text_summary(is);
  string ignore;
  getline(is, ignore);
  read_text_contents(is);

  return is;
}

ostream& Memory::write_bin(ostream& os) const {
  os.write((const char*)&base_, sizeof(uint64_t));

  const size_t content_size = contents_.num_fixed_bytes();
  os.write((const char*)&content_size, sizeof(size_t));
  os.write((const char*)contents_.data(), content_size);

  const size_t mask_size = valid_.num_fixed_bytes();
  os.write((const char*)&mask_size, sizeof(size_t));
  os.write((const char*)valid_.data(), mask_size);

  return os;
}

istream& Memory::read_bin(istream& is) {
  is.read((char*)&base_, sizeof(uint64_t));

  size_t content_size = 0;
  is.read((char*)&content_size, sizeof(size_t));

  // Fail for memories that are larger than 100 KB
  if (content_size > 100*1024) {
    fail(is) << "Only memories of size up to 100KB are supported (otherwise, construction a sandbox gets prohibitively expensive)";
    return is;
  }

  contents_.resize_for_fixed_bytes(content_size);
  is.read((char*)contents_.data(), content_size);

  size_t mask_size = 0;
  is.read((char*)&mask_size, sizeof(size_t));
  valid_.resize_for_fixed_bytes(mask_size);
  is.read((char*)valid_.data(), mask_size);

  return is;
}

void Memory::write_text_summary(ostream& os) const {
  os << "[ ";
  HexWriter<uint64_t, 8>()(os, upper_bound());
  os << " - ";
  HexWriter<uint64_t, 8>()(os, lower_bound());
  os << " ]";
}

void Memory::write_text_row(ostream& os, uint64_t addr) const {
  HexWriter<uint64_t, 8>()(os, addr);
  os << "   ";
  for (int i = 7; i >= 0; --i) {
    os << (is_valid(addr + i) ? "v" : ".");
    os << " ";
  }
  os << "  ";
  for (int i = 7; i >= 0; --i) {
    HexWriter<uint8_t, 2>()(os, is_valid(addr + i) ? (*this)[addr + i] : 0);
    os << " ";
  }
}

void Memory::write_text_contents(ostream& os) const {
  const auto vc = valid_count();

  os << "[ " << vc << " valid rows shown ]";
  if (vc != 0) {
    os << endl;
  }
  for (uint64_t i = upper_bound(), ie = lower_bound(); i > ie; i -= 8) {
    if (!valid_row(i - 8)) {
      continue;
    }
    os << endl;
    write_text_row(os, i - 8);
  }
}

void Memory::read_text_summary(istream& is) {
  is.get();
  is.get();

  uint64_t upper = 0;
  HexReader<uint64_t, 8>()(is, upper);

  is.get();
  is.get();
  is.get();

  uint64_t lower = 0;
  HexReader<uint64_t, 8>()(is, lower);

  is.get();
  is.get();

  // Fail for memories that are larger than 100 KB
  if (upper - lower > 100*1024) {
    fail(is) << "Only memories of size up to 100KB are supported (otherwise, construction a sandbox gets prohibitively expensive)";
    return;
  }

  resize(lower, upper - lower);
}

void Memory::read_text_row(istream& is) {
  string s;
  uint64_t addr = 0;
  HexReader<uint64_t, 8>()(is, addr);

  // Watch out for rows that are outside the range given in summary
  if (addr < lower_bound() || addr >= upper_bound()) {
    is.setstate(ios::failbit);
    return;
  }

  is.get();
  is.get();
  is.get();

  for (int j = 7; j >= 0; --j) {
    is >> s;
    set_valid(addr + j, s == "v");
  }

  is.get();
  is.get();

  for (int j = 7; j >= 0; --j) {
    is.get();

    uint8_t val = 0;
    HexReader<uint8_t, 2>()(is, val);

    if (is_valid(addr + j)) {
      (*this)[addr + j] = val;
    }
  }
}

void Memory::read_text_contents(istream& is) {
  string s;
  getline(is, s, '[');

  size_t rows = 0;
  is >> rows;

  getline(is, s, ']');

  if (rows != 0) {
    getline(is, s);
  }
  for (size_t i = 0; i < rows; ++i) {
    getline(is, s);
    read_text_row(is);
  }
}

bool Memory::valid_row(uint64_t addr) const {
  assert(addr % 8 == 0);
  for (size_t i = 0; i < 8; ++i) {
    if (is_valid(addr + i)) {
      return true;
    }
  }
  return false;
}

size_t Memory::valid_count() const {
  size_t res = 0;
  for (size_t i = lower_bound(), ie = upper_bound(); i < ie; i += 8) {
    if (valid_row(i)) {
      res++;
    }
  }
  return res;
}

} // namespace stoke
