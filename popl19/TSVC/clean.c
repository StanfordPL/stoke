
// Cleaned version of the TSC benchmarks for verification.
// Cleaning included:
//   (1) removing benchmarking code, including any outer loops
//   (2) parameterizing inputs, rather than using globals
//   (3) removing return call
//   (4) replacing floats with "TYPE" variable

#define LEN 32000
#define LEN2 256

#define TYPE int

// Did not vectorize.
void s172(int n1, int n3, TYPE* a, TYPE* b) {
  for (int i = n1-1; i < LEN; i += n3) {
    a[i] += b[i];
  }
}

// Did not vectorize.
void s323(TYPE* a, TYPE* b, TYPE* c, TYPE* d, TYPE* e)
{
  for (int i = 1; i < LEN; i++) {
    a[i] = b[i-1] + c[i] * d[i];
    b[i] = a[i] + c[i] * e[i];
  }
}

// Did not vectorize.
void s2710(TYPE* a, TYPE* b, TYPE* c, TYPE* d, TYPE* e, TYPE x) {
  for (int i = 0; i < LEN; i++) {
    if (a[i] > b[i]) {
      a[i] += b[i] * d[i];
      if (LEN > 10) {
        c[i] += d[i] * d[i];
      } else {
        c[i] = d[i] * e[i] + (TYPE)1;
      }
    } else {
      b[i] = a[i] + e[i] * e[i];
      if (x > (TYPE)0) {
        c[i] = a[i] + d[i] * d[i];
      } else {
        c[i] += e[i] * e[i];
      }
    }
  }
}

// LLVM vectorizes.
void s431(TYPE* a, TYPE* b) {
  int k = 0;
  for (int i = 0; i < LEN; i++) {
    a[i] = a[i+k] + b[i];
  }
}

