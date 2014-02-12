#include <stdint.h>

int32_t p19(int32_t x, int32_t m, int32_t k) { 
  int32_t o1 = x >> k;
  int32_t o2 = x ^ o1;
  int32_t o3 = o2 & m;
  int32_t o4 = o3 << k;
  int32_t o5 = o4 ^ o3;
  return o5 ^ x;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p19(i, i, i);

  return 0;
}
