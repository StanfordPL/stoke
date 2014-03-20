#include <stdint.h>
#include <stddef.h>

int32_t p01(int32_t x) {
  int32_t o1 = x - 1;
  return x & o1;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p01(i);
  }

  return 0;
}
