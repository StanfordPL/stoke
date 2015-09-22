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

#include "src/state/regs.h"

#include <string>
#include <cstring>

#include "src/ext/cpputil/include/io/fail.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"

using namespace cpputil;
using namespace std;

namespace stoke {

ostream& Regs::write_text(ostream& os, const char** names, size_t padding) const {
  ofilterstream<Column> fs(os);
  fs.filter().padding(0);

  for (size_t i = 0, ie = size(); i < ie; ++i) {
    fs << names[i];
    for (size_t k = 0; k < padding; k++) {
      fs << " ";
    }
    if (i + 1 != ie) {
      fs << endl;
    }
  }
  fs.filter().next();

  for (size_t i = 0, ie = size(); i < ie; ++i) {
    const auto& r = (*this)[i];
    for (int j = r.num_fixed_bytes() - 1; j >= 0; --j) {
      HexWriter<uint8_t, 2>()(fs, r.get_fixed_byte(j));
      if (j != 0) fs << " ";
    }
    if (i + 1 != ie) {
      fs << endl;
    }
  }
  fs.filter().done();

  return os;
}

istream& Regs::read_text(istream& is, const char** names) {
  for (size_t i = 0, ie = size(); i < ie; ++i) {
    string name;
    is >> ws >> name >> ws;

    if (strcmp(names[i], name.c_str())) {
      fail(is) << "Expected register '" << names[i] << "' but got '" << name << "'" << endl;
      return is;
    }

    auto& r = (*this)[i];
    for (int j = r.num_fixed_bytes() - 1; j >= 0; --j) {
      HexReader<uint8_t, 2>()(is, r.get_fixed_byte(j));
      if (j != 0) is.get();
    }
  }
  is >> ws;

  return is;
}

} // namespace stoke


