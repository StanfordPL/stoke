
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>

#define COUNT 100000000

/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */


unsigned int __attribute__ ((noinline))
func_1 (const char* s) {

  unsigned int sum = 0;
  unsigned int xor = 0;

  for(unsigned int i = 0; s[i] != '\0'; i++) {
    sum += (unsigned char)s[i];
  }

  for(unsigned int i = 0; s[i] != '\0'; i++) {
    xor ^= (unsigned char)s[i];
  }

  return sum + xor;


}

unsigned int __attribute__ ((noinline)) func_2(const char* s) {
  unsigned int sum = 0;
  unsigned int xor = 0;

  char c;
  for(;(c = *s) != '\0'; ++s) {
    sum += (unsigned char)c;
    xor ^= (unsigned char)c;
  }

  return sum + xor;
}


/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    char* argument = NULL;
    if(argc < 2) {
      printf("Allocating with strdup\n");
      argument = strdup("Hello, World!");
    } else {
      argument = argv[1];
    }

#ifdef X1
    for(unsigned int i = 0; i < COUNT; ++i) {
      func_1(argument);
    }
#endif

#ifdef X2
    for(unsigned int i = 0; i < COUNT; ++i) {
      func_2(argument);
    }
#endif

    printf("%u %u\n", func_1(argument), func_2(argument));
    return 0;
}

