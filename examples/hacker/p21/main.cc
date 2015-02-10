// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <cstdlib>
#include <stdint.h>

extern int32_t p21(int32_t x, int32_t a, int32_t b, int32_t c);

int main(int argc, char** argv) {
  const auto itr = argc > 1 ? atoi(argv[1]) : 1024;
  const auto seed = argc > 2 ? atoi(argv[2]) : 0;

  srand(seed);
  for (auto i = 0; i < itr; ++i) {
    int32_t vals[3];
    vals[0] = rand();
    vals[1] = rand();
    vals[2] = rand();
    p21(vals[rand()%3], vals[0], vals[1], vals[2]);
  }

  return 0;
}
