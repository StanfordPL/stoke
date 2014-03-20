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

#include <cctype>
#include <stdint.h>

#include <string>

#include "src/ext/cpputil/include/serialize/hex_reader.h"

#include "src/state/state_reader.h"

using namespace cpputil;
using namespace std;

namespace stoke {

void StateReader::operator()(istream& is, CpuState& cs) const {
  string ignore;

  cs.code = ErrorCode::NORMAL;

  read_regs(is, cs.gp);
  getline(is, ignore);
  getline(is, ignore);

  read_regs(is, cs.sse);
  getline(is, ignore);
  getline(is, ignore);

  read_mem(is, cs.stack);
  getline(is, ignore);
  getline(is, ignore);

  read_mem(is, cs.heap);
}

void StateReader::read_regs(istream& is, Regs& regs) const {
  for (size_t i = 0, ie = regs.size(); i < ie; ++i) {
    string name;
    is >> name;
    while (isspace(is.peek())) {
      is.get();
    }

    auto& r = regs[i];
    for (auto i = r.fixed_quad_begin(), ie = r.fixed_quad_end(); i != ie; ++i) {
      HexReader<uint64_t, 2>()(is, *i);
      is.get();
    }
  }
}

void StateReader::read_mem(istream& is, Memory& mem) const {
  read_summary(is, mem);
  string ignore;
  getline(is, ignore);
  read_contents(is, mem);
}

void StateReader::read_summary(istream& is, Memory& mem) const {
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

  mem.resize(lower, upper - lower);
}

void StateReader::read_row(istream& is, Memory& mem) const {
  string s;
  uint64_t addr = 0;
  HexReader<uint64_t, 8>()(is, addr);

  is.get();
  is.get();
  is.get();

  for (int j = 7; j >= 0; --j) {
    is >> s;

    mem.set_valid(addr + j, s == "v" || s == "d");
    mem.set_defined(addr + j, s == "d");
  }

  is.get();
  is.get();

  for (int j = 7; j >= 0; --j) {
    is.get();

    uint8_t val = 0;
    HexReader<uint8_t, 2>()(is, val);

    mem[addr + j] = val;
  }
}

void StateReader::read_contents(istream& is, Memory& mem) const {
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
    read_row(is, mem);
  }
}

} // namespace stoke
