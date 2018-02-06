
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define VECTORIZE 4

int 
__attribute__ ((noinline))
sum_all(int* start, size_t count) {
  int output = 0;
  for(size_t i = 0; i < count; ++i) {
    output += start[i];
  }
  return output;
}

int 
__attribute__ ((noinline))
sum_all_unroll(int* start, size_t count) {
  int output = 0;
  size_t i;
  for(i = 0; i+3 < count; i+=4) {
    output += start[i];
    output += start[i+1];
    output += start[i+2];
    output += start[i+3];
  }
  for(; i < count; i++) {
    output += start[i];
  }
  return output;
}

void* random_pointer() {
  uint64_t value = ((uint64_t)(rand()) << 32) | (uint64_t)rand();
  return (void*)(value);
}

int main (int argc, char* argv[])
{
  srand(0);

  for(int i = 0; i < 400; ++i) {
    size_t count = i % 13;
    int* values = (int*)random_pointer();
    if(count > 0) {
      values = malloc(sizeof(int)*count);
    } 
    for(size_t i = 0; i < count; ++i) {
      values[i] = rand();
    }
    int output = sum_all(values, count);
    printf("%d\n", output);

    if(count > 0) {
      free(values);
    }
  }

  return rand();
}

