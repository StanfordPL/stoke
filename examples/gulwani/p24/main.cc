#include <stdint.h>

int32_t p24(int32_t x) {
  int32_t o1 = x - 1;
  int32_t o2 = o1 >> 1;
  int32_t o3 = o1 | o2;
  int32_t o4 = o3 >> 2;
  int32_t o5 = o3 | o4;
  int32_t o6 = o5 >> 4;
  int32_t o7 = o5 | o6;
  int32_t o8 = o7 >> 8;
  int32_t o9 = o7 | o8;
  int32_t o10 = o9 >> 16;
  int32_t o11 = o9 | o10;
  return o10 + 1;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p24(i);
  }

  return 0;
}
