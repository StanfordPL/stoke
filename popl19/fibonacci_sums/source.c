
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 4

/** I'm pretty sure this vectorized implementation is correct but
  don't have a complete proof.  Used the bounded validator to find and fix some
  overflow bugs, hopefully there's nothing left. */
uint64_t 
__attribute__ ((noinline))
fib_unroll(uint64_t n, uint64_t m) {
  if(m == 0)
    m = 2;

  uint64_t sum = 0;
  for(uint64_t j = 0; j <= n; j++) {
    if(j == 0) {
      continue;
    }
    if(j == 1) {
      sum++;
      continue;
    }

    uint64_t a = 0;
    uint64_t b = 1;

    for(uint64_t i = 2; i <= j; i += 2) {
      a = (a+b) % m;
      if(i == j) {
        sum += a;
        break;
      }
      b = (a+b) % m;
      if(i+1 == j) {
        sum += b;
        break;
      }
    }
  }
  return sum;
}

uint64_t 
__attribute__ ((noinline))
fib(uint64_t n, uint64_t m) {
  if(m == 0)
    m = 2;

  uint64_t sum = 0;
  for(uint64_t j = 0; j <= n; j++) {
    if(j == 0) {
      continue;
    }
    if(j == 1) {
      sum++;
      continue;
    }

    uint64_t a = 0;
    uint64_t b = 1;

    for(uint64_t i = 2; i <= j; ++i) {
      uint64_t c = (a+b) % m;
      a = b;
      b = c;
    }
    sum += b;
  }

  return sum;
}

int main (int argc, char* argv[])
{
  srand(0);

  /** For testing */
  for(size_t k = 0; k < 64; ++k) {
    uint64_t value = k;
    uint64_t m = (uint64_t)(rand()+1) % 10000000;
    uint64_t x = fib(value, m);
    uint64_t y = fib_unroll(value, m);

    printf("value %lu fib %lu fib_unroll %lu ", value, x, y);
    if(x == y)
      printf("OK\n");
    else
      printf("ERROR\n");
  }
  return 0;
}

