#include <stdint.h>

int32_t p16(int32_t x, int32_t y) {
  int32_t o1 = x ^ y;
  int32_t o2 = -((uint32_t) x >= (uint32_t) y);
  int32_t o3 = o1 & o2;
  return o3 ^ y;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p16(i, i);
  }

  return 0;
}
