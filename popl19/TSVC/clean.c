
// Cleaned version of the TSC benchmarks for verification.
// Cleaning included:
//   (1) removing benchmarking code, including any outer loops
//   (2) parameterizing inputs, rather than using globals
//   (3) removing return call
//   (4) replacing floats with "TYPE" variable

#define LEN 128
#define LEN2 256

#define TYPE int

TYPE a[LEN], b[LEN], c[LEN], d[LEN], e[LEN];

void testing() {
  a[0] = 0;
  b[0] = 0;
  c[0] = 0;
  d[0] = 0;
  e[0] = 0;
}

TYPE sample(int count) {
  for (int i = 0; i < count*8; i++) {
    a[i] = a[i] + b[i];
  }
  return 0;
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
  for (int i = 0; i < count*8; i++) {
	  a[2*i] = c[i] * b[i] + d[i] * b[i] + c[i] * c[i] + d[i] * b[i] + d[i] * c[i];
  }
  return 0;
}

// llvm vectorizes this
TYPE s112(int count) {
  for (int i = count*8-1; i >= 0; i--) {
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

TYPE s121(int count) {
  for (int i = 0; i < count*8-1; i++) {
    j = i + 1;
    a[i] = a[j] + b[i];
  }
  return 0;
}

TYPE s122(int count, int start, int stride) {
  int k = 0;
  for (int i = start; i < count*8; i+=stride) {
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

TYPE s162(int count, int k) {
  if(k > 0) {
    for (int i = 0; i < count*8; i++) {
      a[i] = a[i + k] + b[i] * c[i];
    }
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

TYPE s175(int count, int inc) {
  for (int i = 0; i < count*8-inc; i += inc) {
    a[i] = a[i + inc] + b[i];
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
  for (int i = 0; i < count-1; i++) {
    a[i] = b[i] + c[i  ] * d[i];
    b[i] = a[i] + d[i  ] * e[i];
    a[i] = b[i] + a[i+1] * d[i];
  }
  return 0;
}

TYPE s2244(int count) {
  for (int i = 0; i < count-1; i++) {
  	a[i+1] = b[i] + e[i];
		a[i] = b[i] + c[i];
  }
  return 0;
}

TYPE s251(int count) {
  TYPE s;
  for (int i = 0; i < count; i++) {
   	s = b[i] + c[i] * d[i];
		a[i] = s * s;
  }
  return 0;
}

TYPE s1251(int count) {
  TYPE s;
  for (int i = 0; i < count; i++) {
    s = b[i]+c[i];
    b[i] = a[i]+d[i];
    a[i] = s*e[i];
  }
  return 0;
}

// LLVM vectorizes.
void s431(int count) {
  int k = 0;
  for (int i = 0; i < count*8; i++) {
    a[i] = a[i+k] + b[i];
  }
}


int main() {

}
