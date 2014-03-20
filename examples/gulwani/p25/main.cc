#include <stdint.h>

int32_t p25(int32_t x, int32_t y) {
  uint32_t o1 = x & 0x0000ffff;
  int32_t o2 = x >> 16;
  uint32_t o3 = y & 0x0000ffff;
  int32_t o4 = y >> 16;
  uint32_t o5 = o1 * o3;
  int32_t o6 = o2 * o3;
  int32_t o7 = o1 * o4;
  int32_t o8 = o2 * o4;
  int32_t o9 = o5 >> 16;
  int32_t o10 = o6 + o9;
  int32_t o11 = o10 & 0x0000ffff;
  int32_t o12 = o10 >> 16;
  int32_t o13 = o7 + o11;
  int32_t o14 = o13 >> 16;
  int32_t o15 = o14 + o12;
  return o15 + o8;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p25(i, i);
  }

  return 0;
}
