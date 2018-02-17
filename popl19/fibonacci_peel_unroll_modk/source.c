
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
  if(m < 60)
    m = 60;
  m = (2 << m) - 1;

  if(n == 0)
    return 0;
  if(n == 1)
    return 1;
  if(n == 2)
    return 1;
  if(n == 3)
    return 2 & m;

  uint64_t a = 1;
  uint64_t b = 2;

  for(uint64_t i = 4; i <= n; i += 2) {
    a = (a+b) & m;
    if(i == n)
      return a;
    b = (a+b) & m;
  }

  return b;
}

uint64_t 
__attribute__ ((noinline))
fib(uint64_t n, uint64_t m) {
  if(m < 60)
    m = 60;
  m = (2 << m) - 1;

  if(n == 0)
    return 0;
  if(n == 1)
    return 1;

  uint64_t a = 0;
  uint64_t b = 1;

  for(uint64_t i = 2; i <= n; ++i) {
    uint64_t c = (a+b) & m;
    a = b;
    b = c;
  }

  return b;
}

int main (int argc, char* argv[])
{
  srand(0);

  /** For testing */
  for(size_t k = 0; k < 64; ++k) {
    uint64_t value = k;
    uint64_t m = rand() % 50;
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

