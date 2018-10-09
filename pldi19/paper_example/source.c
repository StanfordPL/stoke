
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */


size_t
__attribute__ ((noinline))
bitflip (int *array, int len) {
  for(int i = 0; i < len; ++i) {
    array[i] ^= 0xffffffff;
  }
}


size_t
__attribute__ ((noinline))
bitflip_vec (int *array, int len) {
  int i = 0;
  if (len && (uint_ptr_t)array % 8 == 0) {
    *array ^= 0xffffffff;
    array++;
    i++;
  }
  for(; i + 1 < len; i += 2) {
    *((long)array) ^= 0xffffffffffffffff;
    array += 2;
  }
  if(i < len)
    *array ^= 0xffffffff;
}



/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    return 0;
}

