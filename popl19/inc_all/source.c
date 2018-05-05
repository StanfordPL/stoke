
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 4


void
__attribute__ ((noinline))
inc_all(int* arr, int count) {

  for(size_t i = 0; i < count; ++i)
    arr[i]++;

}

int main (int argc, char* argv[])
{
  srand(0);

  return 0;
}

