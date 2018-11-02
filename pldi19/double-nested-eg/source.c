
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


int f(int n, int m) {
  if(m < 0)
    m = -m;
  m = m % 4;
  int x = 0;
  for(int i = 0; i < n; ++i) {
    for(int j = 0; j < m; ++j) {
      x++;
    }
  }
  return x;
}

int g(int n, int m) {
  if(m < 0)
    m = -m;
  m = m % 4;
  int x = 0;
  for(int i = 0; i < n; ++i) {
    x += m;
  }
  return x;
}

/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    printf("f(3,5) = %d, g(3,5) = %d\n", f(3,5), g(3,5));
    printf("f(0,5) = %d, g(0,5) = %d\n", f(0,5), g(0,5));
    printf("f(3,0) = %d, g(3,0) = %d\n", f(3,0), g(3,0));
    printf("f(4,1) = %d, g(4,1) = %d\n", f(4,1), g(4,1));
    printf("f(10,-10) = %d, g(10,-10) = %d\n", f(10,-10), g(10,-10));
    return 0;
}

