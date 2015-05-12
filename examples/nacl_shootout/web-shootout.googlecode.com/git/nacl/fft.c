// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <fftw3.h>
//#include "sample1.c"

static fftw_plan fft_plan;
static fftw_complex *fft_output;
static double *fft_input;
static double *spectrum_output;

// To make the benchmark results predictable, use a 100% deterministic
// alternative RNG. Not thread-safe. (taken from V8 base.js)
static double v8_rand() {
  static uint64_t seed = 49734321;
  // Robert Jenkins' 32 bit integer hash function.
  seed = ((seed + 0x7ed55d16LL) + (seed << 12))  & 0xffffffff;
  seed = ((seed ^ 0xc761c23cLL) ^ (seed >> 19)) & 0xffffffff;
  seed = ((seed + 0x165667b1LL) + (seed << 5))   & 0xffffffff;
  seed = ((seed + 0xd3a2646cLL) ^ (seed << 9))   & 0xffffffff;
  seed = ((seed + 0xfd7046c5LL) + (seed << 3))   & 0xffffffff;
  seed = ((seed ^ 0xb55a4f09LL) ^ (seed >> 16)) & 0xffffffff;
  return (double)(seed & 0xfffffff) / (double)(0x10000000);
}

int setup_fft(int size) {
  fft_output = fftw_malloc(sizeof(fftw_complex) * size);
  fft_input = fftw_malloc(sizeof(double) * size);
  fft_plan = fftw_plan_dft_r2c_1d(size, fft_input, fft_output, FFTW_ESTIMATE);
  spectrum_output = fftw_malloc(sizeof(double) * size);

  for (int i = 0; i < size; i++) {
    fft_input[i] = v8_rand();
    //printf("%.15e,", fft_input[i]);
  }
  //printf("\n\n");
}

inline static double my_cabs(fftw_complex n) {
  return sqrt(n[0] * n[0] + n[1] * n[1]);
}

void fft_check_result(int size, double sum) {
  double ref;
  switch(size) {
  case 1024:
    ref = 9.241991558475528e+00;
    break;
  case 1024*1024:
    ref = 2.629580990915497e+02;
    break;
  default:
    ref = 0.0;
    break;
  }
  if (!fabs(sum - ref < 1e-10)) {
    printf("size %d, sum %.15e, ref %.15e\n", size, sum, ref);
  }
}

int run_fft(int param) {

  fftw_execute(fft_plan);
  double sum = 0.0;
  for (int i=0; i < param / 2; i++) {
    spectrum_output[i] = 2.0 * my_cabs(fft_output[i]) / param;
    sum += spectrum_output[i];
    //printf("%.15e,", spectrum_output[i]);
  }
  //printf("\n");
  fft_check_result(param, sum);
  
  return 0;
}

int teardown_fft(int param) {
  fftw_destroy_plan(fft_plan);
  fftw_free(fft_output);
  fftw_free(fft_input);
  fftw_free(spectrum_output);
}

/*int main() {
  generate_input(1024*1024);
  return fft_benchmark(1024*1024);
  }*/
