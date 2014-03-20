#include <stdint.h>

int32_t p17(int32_t x) {
  int32_t o1 = x - 1;
  int32_t o2 = x | o1;
  int32_t o3 = o2 + 1;
  return o3 & x;
}

int main() {
  for (size_t i = 0; i < 1024; ++i) {
    p17(i);
  }

  return 0;
}
