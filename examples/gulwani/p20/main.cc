#include <stdint.h>

int32_t p20(int32_t x) { 
  int32_t o1 = -x;
  int32_t o2 = x & o1;
  int32_t o3 = x + o2;
  int32_t o4 = x ^ o2;
  int32_t o5 = o4 >> 2;
  int32_t o6 = o5 / o2;
  return o3 | o6;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p20(i);

  return 0;
}
