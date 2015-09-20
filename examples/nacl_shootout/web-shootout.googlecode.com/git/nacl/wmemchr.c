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

/*
 * The Computer Language Benchmarks Game
 * http://shootout.alioth.debian.org/
 *
 * converted to C by Joseph Piché
 * from Java version by Oleg Mazurov and Isaac Gouy
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bench-framework.h"

typedef unsigned long long uint64_t;

#define COPY_SIZE 1024

uint64_t counter[2];
uint64_t last;

int run_wmemchr(int n) {

  wchar_t a[COPY_SIZE];
  wchar_t b[COPY_SIZE];

  // initialize a
  for(size_t i = 0; i < COPY_SIZE; ++i) {
    a[i] = 'a';
    b[i] = 'a';
  }
  a[COPY_SIZE-1] = '\0';
  b[COPY_SIZE-1] = '\0';

  // Run wmemchr n times; O(n^2)
  int sum = 0;
  for(size_t j = 0; j < n; ++j) {
    sum += (int)wmemchr(a, 'b', COPY_SIZE);
  }

  return sum;
}
