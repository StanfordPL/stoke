
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 2

void
__attribute__ ((noinline))
mymemset_unroll(void* s, uint8_t c, size_t n) {

  if(n > 0) {
    uint16_t v = ((uint16_t)c << 8) | (uint16_t)c;
    size_t i = 0;
    size_t j = 0;
    for(; i+1 < n; i+=2) {
      ((uint16_t*)s)[j] = v;
      j++;
    }
    if(i < n) {
      ((uint8_t*)s)[i] = c;
    }
  }
}

void 
__attribute__ ((noinline))
mymemset(void* s, uint8_t c, size_t n) {
  for(size_t i = 0; i < n; ++i) {
    ((uint8_t*)s)[i] = c;
  }
}

int main (int argc, char* argv[])
{
  srand(0);

  return 0;
}

