#include <stdint.h>

int32_t p21(int32_t x, int32_t a, int32_t b, int32_t c) {
  int32_t o1 = -(x == c);
  int32_t o2 = a ^ c;
  int32_t o3 = -(x == a);
  int32_t o4 = b ^ c;
  int32_t o5 = o1 & o2;
  int32_t o6 = o3 & o4;
  int32_t o7 = o5 ^ o6;
  return o7 ^ c;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p21(i, i, i, i);
  }

  return 0;
}
