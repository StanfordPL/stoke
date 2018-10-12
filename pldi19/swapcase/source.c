
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


uint64_t __attribute__ ((noinline)) swapcase(char* s, int len) {
  for(int i = 0; i < len; i++, s++) {
    *s ^= 0x20;
  }
}

uint64_t __attribute__ ((noinline)) swapcase_vec(char* s, int len) {
  int i = 0;
  if(len >= 8) {
    if((uintptr_t) s % 8 != 0) {
      for(; i < len && (uintptr_t)s % 8 != 0; i++, s++) 
        *s ^= 0x20;
    } else {
      *((long*)s) ^= 0x2020202020202020;
      i += 8;
      s += 8;
    }
    for(; i + 7 < len; i += 8, s += 8) {
      *((long*)s) ^= 0x2020202020202020;
    } 
  }
  for(; i < len; i++, s++) {
    *s ^= 0x20;
  }
}




/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    char* s = strdup("Hello World    ");
    char* t = strdup("Hello World    ");
    swapcase(s, strlen(s));
    swapcase_vec(t, strlen(t));
    printf("%s (@ %p)\n", s, s);
    printf("%s (@ %p)\n", t, t);
    return 0;
}

