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

/* A main function for running the benchmarks under sel_ldr */

#include <stdarg.h>
#include <stdio.h>
#include "bench-framework.h"

int main(int argc, char **argv) {
  printf("Running small benchmarks\n");
  framework_main(kBenchmarkSmall);
  printf("Running large benchmarks (same size as web page)\n");
  framework_main(kBenchmarkLarge);
}

void ReportStatus(const char *format, ...) {
  va_list ap;
  va_start(ap, format);
  vprintf(format, ap);
  va_end(ap);
  printf("\n");
}
