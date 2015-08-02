
#include "stdio.h"

void print(int a, int b) {
  printf("fib(%d) = %d\n", a, b);
}

int run_fib(int n) {

  int result = 0;
  if(n == 0 || n == 1)
    result = 1;
  else
    result = run_fib(n-2) + run_fib(n-1);

  print(n, result);
  return result;
}

int main(int argc, char** argv) {

  for(size_t i = 0; i < 10; ++i) {
    run_fib(i);
  }

}
