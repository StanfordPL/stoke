#include <stdint.h>

int32_t p18(int32_t x) { 
  int32_t o1 = x - 1;
  int32_t o2 = o1 & x;
  int32_t o3 = !!x;
  int32_t o4 = !!o2;
  int32_t o5 = !o4;
  return o5 && o3;
}

int main() {
  p18(2);
  p18(4);
  for ( size_t i = 0; i < 1024; ++i )
    p18(i);

  return 0;
}
