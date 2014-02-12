#include <stdint.h>

int32_t p08(int32_t x) { 
  int32_t o1 = x - 1;
  int32_t o2 = ~x;
  return o1 & o2;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p08(i);

  return 0;
}
