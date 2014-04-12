#include <stddef.h>
#include <stdint.h>

int32_t p10(int32_t x, int32_t y) {
  int32_t o1 = x & y;
  int32_t o2 = x ^ y;
  return (uint32_t) o2 <= (uint32_t) o1;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p10(i, i);
  }

  return 0;
}
