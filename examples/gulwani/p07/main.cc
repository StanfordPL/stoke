#include <stddef.h>
#include <stdint.h>

int32_t p07(int32_t x) {
  int32_t o1 = ~x;
  int32_t o2 = x + 1;
  return o1 & o2;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p07(i);
  }

  return 0;
}
