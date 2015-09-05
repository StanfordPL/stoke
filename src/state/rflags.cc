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

#include "src/state/rflags.h"

#include <cstring>
#include <string>

#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/fail.h"
#include "src/ext/cpputil/include/io/filterstream.h"

using namespace cpputil;
using namespace std;

namespace stoke {

ostream& RFlags::write_text(ostream& os, const char** names, size_t padding) const {
  ofilterstream<Column> fs(os);
  fs.filter().padding(padding);

  for (size_t i = 0, ie = size(); i < ie; ++i) {
    fs << names[i];
    if (i + 1 != ie) {
      fs << endl;
    }
  }
  fs.filter().next();

  for (size_t i = 0, ie = size(); i < ie; ++i) {
    fs << is_set(i);
    if (i + 1 != ie) {
      fs << endl;
    }
  }
  fs.filter().done();

  return os;
}

istream& RFlags::read_text(istream& is, const char** names) {
  for (size_t i = 0, ie = size(); i < ie; ++i) {
    string name;
    bool val;
    is >> ws >> name >> val >> ws;

    if(strcmp(names[i], name.c_str())) {
      fail(is) << "Expected register '" << names[i] << "' but got '" << name << "'" << endl;
      return is;
    }

    set(i, val);
  }

  return is;
}

} // namespace stoke

