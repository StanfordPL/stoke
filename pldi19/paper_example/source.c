
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */


void
__attribute__ ((noinline))
bitflip (int *array, unsigned int len) {
  for(unsigned int i = 0; i < len; ++i) {
    array[i] ^= 0xffffffff;
  }
}


void
__attribute__ ((noinline))
bitflip_vec (int *array, unsigned int len) {
  if (len % 2 == 1) {
    *array ^= 0xffffffff;
    array++;
    len--;
  }
  while(len > 0) {
    *((long*)array) ^= 0xffffffffffffffff;
    array += 2;
    len -= 2;
  }
}



/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    return 0;
}

