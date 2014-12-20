// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

extern void saxpy(int a, int* x, int* y, int i);

int main(int argc, char** argv) {
  const auto itr = argc > 1 ? atoi(argv[1]) : 1024;
  const auto seed = argc > 2 ? atoi(argv[2]) : 0;

  srand(seed);

  for (auto i = 0; i < itr*4; i += 4) {
    int x[4] {rand(), rand(), rand(), rand()};
    int y[4] {rand(), rand(), rand(), rand()};
    saxpy(19, &x[0], &y[0], 0);
  }

  return 0;
}
