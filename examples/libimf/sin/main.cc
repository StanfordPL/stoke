#include <stdint.h>

#include "sym_table.h"

extern double sin(double val, uint64_t* st);

int main() {
  for (double val = -3.1; val < 3.1; val += 0.01) {
    sin(val, sym_table);
  }

  return 0;
}
