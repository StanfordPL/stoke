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

#include <cstdlib>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

using namespace std;

size_t popcnt(uint64_t x) {
  int res = 0;
  for (; x > 0; x >>= 1) {
    res += x & 0x1ull;
  }
  return res;
}

int main(int argc, char** argv) {
  const auto itr = atoi(argv[1]);

  auto ret = 0;
  uint64_t j = 1;
  for (auto i = 0; i < itr; ++i) {

    // a few considerations: the multiplier (currently 19) should not be a
    // power of 2, lest this becomes a bit-shift and we only get *much* less
    // variety.  We don't want to just add rand() because that could be as high
    // as RAND_MAX.  We don't want to leave out rand because that would make
    // the testcases deterministic and all 7 modulo 19 (at least until it wraps
    // around the 64-bit limit).

    j = (j*19 + 7 + (rand() % 5));
    ret += popcnt(j);
  }

  return ret;
}
