#include <stdint.h>

#include <iostream>
#include <new>

using namespace std;

uint8_t pool[1024*1024]; 
uint8_t* next_ptr = &pool[0];

inline void* operator new(size_t size) {
  next_ptr += size;
  return next_ptr - size;
}

inline void* operator new[](size_t size) {
  next_ptr += size;
  return next_ptr - size;
}

inline void operator delete(void* ptr) noexcept { 
  // Does nothing.
}

inline void operator delete[] (void* ptr) noexcept { 
  // Does nothing.
}

__attribute__((noinline)) 
void saxpy(int a, int* x, int* y, int i) {
  x[i+0] = x[i+0] * a + y[i+0]; 
  x[i+1] = x[i+1] * a + y[i+1]; 
  x[i+2] = x[i+2] * a + y[i+2]; 
  x[i+3] = x[i+3] * a + y[i+3]; 
}

int main() {
  int* x = new int[1024];
  int* y = new int[1024];  
  
  for ( size_t i = 0; i < 1024; i += 4 ) 
    saxpy(19, x, y, i);

  delete[] x;
  delete[] y;

  return 0;
}
