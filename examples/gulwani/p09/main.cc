#include <stddef.h>
#include <stdint.h>

int32_t p09(int32_t x) {
  int32_t o1 = x >> 31;
  int32_t o2 = x ^ o1;
  return o2 - o1;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p09(i | 0x80000000);
  }

  return 0;
}
