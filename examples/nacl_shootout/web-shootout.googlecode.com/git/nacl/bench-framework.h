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

#ifndef BENCHFRAMEWORK_H
#define BENCHFRAMEWORK_H

#ifdef __cplusplus
extern "C" {
#endif

#define MAX_BENCHMARKS 16

typedef int (*bench_function)(int);
typedef int (*report_function)(char *, ...);

typedef struct _bench_info {
  char *name;
  bench_function run;
  bench_function setup;
  bench_function teardown;
  int time_ref;
  int param;
} bench_info;

typedef struct {
  int runs;    /* number of iterations run */
  int elapsed; /* elapsed time in ms for run */
  double score;   /* score for run */
} run_data;

void RegisterBenchmark(char *name, bench_function entry, int param, int time_ref, bench_function setup, bench_function teardown);

extern const char *fasta_10k_ref_output;
extern int fasta_10k_ref_output_len;
extern char *fasta_output;
extern int fasta_output_len;

/* Benchmark entry points */
int run_fannkuch(int p);
int run_fasta(int p);
int run_revcomp(int ignored);
int run_binarytrees(int p);
int run_knucleotide(int ignored);
int run_nbody(int p);
int run_pidigits(int p);
int run_spectralnorm(int p);
int run_memcpy(int n);
int run_memcpy2(int n);
int run_strcpy(int n);
int run_strlen(int n);

int run_richards(int p);
int run_deltablue(int p);
int run_fft(int p);

int setup_fft(int p);
int teardown_fft(int p);

enum benchmark_size_t { kBenchmarkSmall, kBenchmarkLarge };

int framework_main(enum benchmark_size_t size);
void ReportStatus(const char *format, ...);

//#define memcpy(d, s, n)    __builtin_memcpy ((d), (s), (n))

#ifdef __cplusplus
}
#endif

#endif
