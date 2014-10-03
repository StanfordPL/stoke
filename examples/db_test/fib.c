
#include "stdio.h"
#include "stdlib.h"

int main(int argc, char** argv) {

  int max = atoi(argv[1]);
  unsigned long fibs[max];
  fibs[0] = 0;
  fibs[1] = 1;

  for(size_t j = 0; j < 50000000; ++j) {
    for(size_t i = 2; i< max; ++i) {
      fibs[i] = fibs[i-1] + fibs[i-2]; 
    }
  }

  printf("fibs[%d] = %lu\n", max-1, fibs[max-1]);

}




