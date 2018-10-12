
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 4


void
__attribute__ ((noinline))
double_all(int* arr, int count, int a, int b) {

  for(size_t i = 0; i < count; ++i)
    arr[i] = arr[i]*a+b;

}

void
__attribute__ ((noinline))
double_unroll2(int* arr, int count, int a, int b) {

  size_t i;
  for(i = 0; i+1 < count; i += 2) {
    arr[i] = arr[i]*a + b;
    arr[i+1] = arr[i+1]*a + b;
  }
  if(i < count) {
    arr[i] = arr[i+1]*a + b;
  }

}

void test(int i, int j) {
  int* arr = malloc(sizeof(int)*(j+i));
  for(size_t k = i; k < i+j; ++k) {
    arr[k] = rand();
  }
  double_all(&arr[i], j, rand(), rand());
  free(arr);
}

int main (int argc, char* argv[])
{
  // different starting offsets
  for(size_t i = 0; i < 8; ++i) {
    for(size_t j = 0; j < 8; ++j) {
      for(size_t k = 0; k < 3; ++k) {
        int new_j = j + 8*k;
        test(i, new_j);
      }
    }
  }

  srand(0);

  return 0;
}

