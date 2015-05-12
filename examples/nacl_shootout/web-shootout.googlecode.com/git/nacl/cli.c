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
