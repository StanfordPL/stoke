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

#include "bench-framework.h"

typedef unsigned long long uint64_t;

#define COPY_SIZE 1024

int run_strcasecmp(int n) {

  char a[COPY_SIZE];
  char b[COPY_SIZE];

  // initialize a
  memset((void*) a, 'a', COPY_SIZE);
  memset((void*) b, 'a', COPY_SIZE);
  a[COPY_SIZE-1] = '\0';
  b[COPY_SIZE-1] = '\0';

  // Run strcasecmp n times; O(n^2)
  int sum = 0;
  for(size_t j = 0; j < n; ++j) {
    sum += strcasecmp(a, b);
    a[0] += sum;
  }

  return sum;
}
