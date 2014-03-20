#include <stddef.h>
#include <stdint.h>

int32_t p22(int32_t x) {
  int32_t o1 = x >> 1;
  int32_t o2 = o1 ^ x;
  int32_t o3 = o2 >> 2;
  int32_t o4 = o2 ^ o3;
  int32_t o5 = o4 & 0x11111111;
  int32_t o6 = o5 * 0x11111111;
  int32_t o7 = o6 >> 28;
  return o7 & 0x1;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p22(i);
  }

  return 0;
}
