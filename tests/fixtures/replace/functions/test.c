// Copyright 2013-2016 Stanford University
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


#include "stdio.h"

void print(int a, int b) {
  printf("fib(%d) = %d\n", a, b);
}

int run_fib(int n) {

  int result = 0;
  if(n == 0 || n == 1)
    result = 1;
  else
    result = run_fib(n-2) + run_fib(n-1);

  print(n, result);
  return result;
}

int main(int argc, char** argv) {

  for(size_t i = 0; i < 10; ++i) {
    run_fib(i);
  }

}
