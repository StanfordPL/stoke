#include <stdint.h>

int32_t p12(int32_t x, int32_t y) {
  int32_t o1 = ~y;
  int32_t o2 = x & o1;
  return (uint32_t) o2 <= (uint32_t) y;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p12(i, i);
  }

  return 0;
}
