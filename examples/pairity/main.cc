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

using namespace std;

size_t pairity(uint64_t x) {
  size_t total = 0;
  total += ((x & 0x1) == 0x1);
  total += ((x & 0x2) == 0x2);
  total += ((x & 0x4) == 0x4);
  total += ((x & 0x8) == 0x8);
  total += ((x & 0x10) == 0x10);
  total += ((x & 0x20) == 0x20);
  total += ((x & 0x40) == 0x40);
  total += ((x & 0x80) == 0x80);
  return (total % 2);
}

int main(int argc, char** argv) {
  const auto itr = strtoull(argv[1], NULL, 10);

  auto ret = 0;
  for (auto i = 0; i < itr; ++i) {
    ret += pairity(i);
  }

  return ret;
}
