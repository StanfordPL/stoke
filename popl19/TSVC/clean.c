
// Cleaned version of the TSC benchmarks for verification.
// Cleaning included:
//   (1) removing benchmarking code, including any outer loops
//   (2) removing return call
//   (3) replacing floats with "TYPE" variable
//   (4) parameterizing length
//
// Criteria for selection included:
//   (i) Vectorizes with either GCC or CLANG
//      - compiled with -msse4.2 -O3
//      - gcc 4.9.2
//      - clang 3.4
//   (ii) Single loop
//   (iii) No leaf functions

#include "stdlib.h"

#define LEN 128
#define LEN2 256

#define TYPE int

// we want to be sure that the compilers but the data in the
// same memory locations so that they actually output equivalent
// code!
TYPE a[LEN] __attribute__((section ("SEGMENT_A")));
TYPE b[LEN] __attribute__((section ("SEGMENT_B")));
TYPE c[LEN] __attribute__((section ("SEGMENT_C")));
TYPE d[LEN] __attribute__((section ("SEGMENT_D")));
TYPE e[LEN] __attribute__((section ("SEGMENT_E")));

void testing() {
  a[0] = 0;
  b[0] = 0;
  c[0] = 0;
  d[0] = 0;
  e[0] = 0;
}

TYPE sum1d(int count) {
  TYPE sum = 0;
  for (int i = 0; i < count*8; i++) {
    sum += a[i];
  }
  return sum;
}

TYPE s000(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] = b[i] + 1;
  }
  return 0;
}

TYPE s111(int count) {
  for (int i = 1; i < count*8; i+=2) {
    a[i] = a[i-1] + b[i];
  }
  return 0;
}

// llvm vectorizes this
TYPE s1111(int count) {
  for (int i = 0; i < count*4; i++) {
	  a[2*i] = c[i] * b[i] + d[i] * b[i] + c[i] * c[i] + d[i] * b[i] + d[i] * c[i];
  }
  return 0;
}

// gcc vectorizes this
TYPE s112(int count) {
  for (int i = count*8-1; i >= 1; i--) {
    a[i] = a[i-1] + b[i];
  }
  return 0;
}

TYPE s1112(int count) {
  for (int i = count*8-1; i >= 0; i--) {
    a[i] = b[i] + 1;
  }
  return 0;
}

// llvm vectorizes this
TYPE s116(int count) {
  for (int i = 0; i < count*8-5; i+=5) {
    a[i] = a[i + 1] * a[i];
    a[i + 1] = a[i + 2] * a[i + 1];
    a[i + 2] = a[i + 3] * a[i + 2];
    a[i + 3] = a[i + 4] * a[i + 3];
    a[i + 4] = a[i + 5] * a[i + 4];
  }
  return 0;
}

// llvm vectorizes
TYPE s121(int count) {
  for (int i = 0; i < count*8-1; i++) {
    a[i] = a[i+1] + b[i];
  }
  return 0;
}

TYPE s122(int count) {
  int k = 0;
  for (int i = 1; i < count*8; i++) {
    k++;
    a[i] += b[count*8-k];
  }
  return 0;
}

TYPE s127(int count) {
  int j = -1;
  for (int i = 0; i < count*4-1; i++) {
    j++;
    a[j] = b[i] + c[i] * d[i];
    j++;
    a[j] = b[i] + d[i] * e[i];
  }
  return 0;
}

TYPE s162(int count) {
  for (int i = 0; i < count*8-1; i++) {
    a[i] = a[i + 1] + b[i] * c[i];
  }
  return 0;
}

TYPE s173(int count) {
  int k = count*4;
  for (int i = 0; i < k; i++) {
    a[i+k] = a[i] + b[i];
  }
  return 0;
}

TYPE s175(int count) {
  for (int i = 0; i < count*8-1; i ++) {
    a[i] = a[i + 1] + b[i];
  }
  return 0;
}

TYPE s1221(int count) {
  for (int i = 4; i < count*8; i++) {
    a[i] = a[i-4] + b[i];
  }
  return 0;
}

TYPE s243(int count) {
  for (int i = 0; i < count*8-1; i++) {
    a[i] = b[i] + c[i  ] * d[i];
    b[i] = a[i] + d[i  ] * e[i];
    a[i] = b[i] + a[i+1] * d[i];
  }
  return 0;
}

TYPE s2244(int count) {
  for (int i = 0; i < count*8-1; i++) {
  	a[i+1] = b[i] + e[i];
		a[i] = b[i] + c[i];
  }
  return 0;
}

TYPE s251(int count) {
  TYPE s;
  for (int i = 0; i < count*8; i++) {
   	s = b[i] + c[i] * d[i];
		a[i] = s * s;
  }
  return 0;
}

TYPE s1251(int count) {
  TYPE s;
  for (int i = 0; i < count*8; i++) {
    s = b[i]+c[i];
    b[i] = a[i]+d[i];
    a[i] = s*e[i];
  }
  return 0;
}

TYPE s3251(int count) {
  TYPE s;
  for (int i = 0; i < count*8-1; i++) {
		a[i+1] = b[i]+c[i];
		b[i]   = c[i]*e[i];
		d[i]   = a[i]*e[i];
  }
  return 0;
}

TYPE s1281(int count) {
  TYPE x;
  for (int i = 0; i < count*8; i++) {
    x = b[i]*c[i]+a[i]*d[i]+e[i];
    a[i] = x-(TYPE)1;
    b[i] = x;
  }
  return 0;
}

TYPE s315(int count) {
  TYPE x;
  int index;

  x = a[0];
  index = 0;
  for (int i = 0; i < count*8; i++) {
    if (a[i] > x) {
      x = a[i];
      index = i;
    }
  }

  return x + (TYPE)index;
}

TYPE s318(int count) {
  int k = 0;
  int index = 0;
  TYPE max = abs(a[0]);
  k++;

  for (int i = 0; i < count*8; i++) {
    if (abs(a[k]) <= max) {
      goto L5;
    }
    index = i;
    max = abs(a[k]);
L5:
		k++;
  }

  return max+index;
}

TYPE s351(int count) {
	TYPE alpha = c[0];
  for (int i = 0; i < count*8-5; i+=5) {
    a[i] += alpha * b[i];
    a[i + 1] += alpha * b[i + 1];
    a[i + 2] += alpha * b[i + 2];
    a[i + 3] += alpha * b[i + 3];
    a[i + 4] += alpha * b[i + 4];
  }
  return 0;
}

TYPE s1351(int count) {
  TYPE* __restrict__ A = a;
  TYPE* __restrict__ B = b;
  TYPE* __restrict__ C = c;
  for (int i = 0; i < count*8; i++) {
    *A = *B + *C;
    A++;
    B++;
    C++;
  }
  return 0;
}

TYPE s452(int count) {
  for (int i = 0; i < count*8; i++) {
	  a[i] = b[i] + c[i] * (float) (i+1);
  }
  return 0;
}

TYPE vif(int count) {
  for (int i = 0; i < count*8; i++) {
    if(b[i] > 0)
      a[i] = b[i];
  }
  return 0;
}

TYPE vpv(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] += b[i];
  }
  return 0;
}

TYPE vtv(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] *= b[i];
  }
  return 0;
}

TYPE vpvtv(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] += b[i]*c[i];
  }
  return 0;
}

TYPE vpvts(int count, TYPE k) {
  for (int i = 0; i < count*8; i++) {
    a[i] += b[i]*k;
  }
  return 0;
}

TYPE vpvpv(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] += b[i]+c[i];
  }
  return 0;
}

TYPE vtvtv(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] *= b[i]*c[i];
  }
  return 0;
}

TYPE vdotr(int count) {
  TYPE sum = 0;
  for (int i = 0; i < count*8; i++) {
    sum += a[i]*b[i];
  }
  return sum;
}

int main() {

}
