
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 4

/** I'm pretty sure this vectorized implementation is correct but
  don't have a complete proof.  Used the bounded validator to find and fix some
  overflow bugs, hopefully there's nothing left. */
uint64_t 
__attribute__ ((noinline))
simple_vec(uint64_t start, uint64_t end) {

  /** bail out corner cases to prevent overflow later */
  if(end <= start)
    return start;

  /** warm up loop */
  uint64_t pos = start;  
  while(pos < end && pos % VECTORIZE != 0)
    pos++; 

  /** vectorized loop */
  while(VECTORIZE <= end - pos)
    pos += VECTORIZE;

  /** clean up */
  while(pos < end)
    pos++;

  return pos;
}

uint64_t 
__attribute__ ((noinline))
simple(uint64_t start, uint64_t end) {
  uint64_t pos = start; 
  while(pos < end)
    pos++;

  return pos;
}

uint64_t 
__attribute__ ((noinline))
simple_cheat(uint64_t start, uint64_t end) {
  if(start < end)
    return end;
  else
    return start;
}


int main (int argc, char* argv[])
{
  srand(0);

  /** For testing */
  for(size_t k = 0; k < 4; ++k) {
    uint64_t min = (uint64_t)rand();
    for(uint64_t count = min; count <= min+32; count++) {
      uint64_t start = count;

      for(uint64_t end = start; end <= start+32; end++) {
        uint64_t x = simple(start, end);
        uint64_t y = simple_vec(start, end);
        uint64_t z = simple_cheat(start, end);

        printf("start %lu end %lu simple %lu simple_vec %lu simple_cheat %lu  ", start, end, x, y, z);
        if(x == y && y == z) {
          printf("OK\n");
        } else {
          printf("ERROR\n");
          return 1;
        }
      }
    }
  }
  return 0;
}

