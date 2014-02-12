#include <stdint.h>

uint32_t p24_alt(uint32_t x) {
  x--;
  x |= x >> 1;
  x |= x >> 2;
  x |= x >> 4;
  x |= x >> 8;
  x |= x >> 16;
  x++;

  x += (x==0);

  return x;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p24_alt(i);

  return 0;
}
