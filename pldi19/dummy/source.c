
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
func1 (const char *str) {
  size_t n;
  while(*str++) {
    n++;
  }
  return n;
}

size_t 
__attribute__ ((noinline)) 
func2 (char* s) {
  char* orig = s;
  while(*s++) { }
  return (size_t)(s-orig-1);
}

/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    func1("Hello, World!");
    return 0;
}

