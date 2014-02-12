#include <stdint.h>

int32_t p14(int32_t x, int32_t y) { 
  int32_t o1 = x & y;
  int32_t o2 = x ^ y;
  int32_t o3 = o2 >> 1;
  return o1 + o3;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p14(i, i);

  return 0;
}
