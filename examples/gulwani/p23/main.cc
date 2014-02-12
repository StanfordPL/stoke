#include <stdint.h>

int32_t p23(int32_t x) { 
  int32_t o1 = x >> 1;
  int32_t o2 = o1 & 0x55555555;
  int32_t o3 = x - o2;
  int32_t o4 = o3 & 0x33333333;
  int32_t o5 = o3 >> 2;
  int32_t o6 = o5 & 0x33333333;
  int32_t o7 = o4 + o6;
  int32_t o8 = o7 >> 4;
  int32_t o9 = o8 + o7;
  int32_t o10 = o9 & 0x0f0f0f0f;
  int32_t o11 = o10 >> 8;
  int32_t o12 = o10 + o11;
  int32_t o13 = o12 >> 16;
  int32_t o14 = o12 + o13;
  return o14 & 0x0000003f;
}

int main() {
  for ( size_t i = 0; i < 1024; ++i )
    p23(i);

  return 0;
}
