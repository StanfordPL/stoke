#include <stdint.h>

int32_t p13(int32_t x) { 
  int32_t o1 = x >> 31;
  int32_t o2 = -x;
  int32_t o3 = o2 >> 31;
  return o1 | o3;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p13(i);

  return 0;
}
