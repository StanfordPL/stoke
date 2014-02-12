#include <stdint.h>

int32_t p03(int32_t x) { 
  int32_t o1 = -x;
  return x & o1;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p03(i);

  return 0;
}
