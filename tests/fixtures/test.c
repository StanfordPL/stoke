
#include <string.h>
#include <stdlib.h>

struct doubleint {
  double d;
  unsigned long i;
};

struct matrix {
  int d;
  double** entries;
};

struct matrix add(matrix A, matrix B) {

  struct matrix result;
  result.d = A.d;
  result.entries = (double**)malloc(sizeof(double*)*A.d*A.d);

  for(size_t i = 0; i < A.d; ++i) {
    for(size_t j = 0; j < A.d; ++j) {
      result.entries[i][j] = A.entries[i][j] + B.entries[i][j];
    }
  }

  return result;
}


struct doubleint bar(double x, double y, struct doubleint z) {
  struct doubleint u;
  u.d = z.d + x - y;
  u.i = z.i;
  return u;
}

int main(int argc, char** argv) {
  size_t count = 0;
  for(size_t i = 0; i < argc; ++i) {
    count += strlen(argv[i]);
  }

  struct doubleint z;
  z.d = 1.82;
  z.i = 4;

  bar(0.24, 0.5, z);
  return count;
}
