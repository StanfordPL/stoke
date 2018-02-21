
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 4

/** I'm pretty sure this vectorized implementation is correct but
  don't have a complete proof.  Used the bounded validator to find and fix some
  overflow bugs, hopefully there's nothing left. */
uint64_t 
__attribute__ ((noinline))
stlen_unroll(char* s) {

  uint64_t len = 0;
  while(*s++) {
    len++;

    if(*s++) {
      len++;
    } else {
      break;
    }

    if(*s++) {
      len++;
    } else {
      break;
    }
  }

  return len;
}

uint64_t 
__attribute__ ((noinline))
stlen(char* s) {

  uint64_t len = 0;
  while(*s++) {
    len++;
  }

  return len;
}

int main (int argc, char* argv[])
{
  srand(0);

  return 0;
}

