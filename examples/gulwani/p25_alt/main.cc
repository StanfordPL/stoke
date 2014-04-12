#include <stddef.h>
#include <stdint.h>

int32_t p25_alt(int32_t x, int32_t y) {
  int64_t temp = (int64_t)x * (int64_t)y;
  temp >>= 32;
  return (int32_t) temp;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p25_alt(i, i);
  }

  return 0;
}
