
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>

/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */

int g[144];
int sum;

void sum_positive(int n) {
  int *ptr = g;
  for(int i = 0; i < n; i++, ptr++) {
    if(*ptr > 0)
      sum = sum + *ptr;
  }
}


/* ---------------------------------------- */
int main (int argc, char* argv[])
{
  sum = 0;
  for(size_t i = 0; i < 144; ++i)
    g[i] = i;
  printf("sum positive = %d\n", sum);
  return 0;
}

