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

/*  The Computer Language Benchmarks Game
 *  http://shootout.alioth.debian.org/
 * 
 *  contributed by Petr Prokhorenkov
 */

// _GNU_SOURCE to get fputs_unlocked
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bench-framework.h"
#include "benchstringio.h"

#define ARRAY_SIZE(a) (sizeof(a)/sizeof(a[0]))
#define unlikely(x) __builtin_expect((x), 0)

#define IM 139968
#define IA 3877
#define IC 29573

#define LINE_LEN 60
#define LOOKUP_SIZE 4096
#define LOOKUP_SCALE ((float)(LOOKUP_SIZE - 1))

#ifdef ARRAYFILE
#define bench_stdout arrayfile_stdout
#undef fwrite_unlocked
#define fputs_unlocked arrayfile_fputs
#define fwrite_unlocked arrayfile_fwrite
#define fputc_unlocked arrayfile_fputc
#else
#define bench_stdout stdout
#ifndef __GLIBC__
#define fputs_unlocked fputs
#define fwrite_unlocked fwrite
#define fputc_unlocked fputc
#endif //__GLIBC__
#endif //!ARRAYFILE

char *fasta_output = NULL;
int fasta_output_len;

typedef unsigned random_t;

void
random_init(random_t *random) {
    *random = 42;
}

// Special version with result rescaled to LOOKUP_SCALE.
static inline
float
random_next_lookup(random_t *random) {
    *random = (*random*IA + IC)%IM;

    return (*random)*(LOOKUP_SCALE/IM);
}

struct amino_acid {
   char sym;
   float prob;
   float cprob_lookup;
};

void
repeat(const char *alu, const char *title, int n) {
    int len = strlen(alu);
    char buffer[len + LINE_LEN];
    int pos = 0;

    memcpy(buffer, alu, len);
    memcpy(buffer + len, alu, LINE_LEN);

    fputs_unlocked(title, bench_stdout);
    while (n > 0) {
        int bytes = n > LINE_LEN ? LINE_LEN : n;

        fwrite_unlocked(buffer + pos, bytes, 1, bench_stdout);
        pos += bytes;
        if (pos > len) {
            pos -= len;
        }
        fputc_unlocked('\n', bench_stdout);
        n -= bytes;
    }
}

/*
 * Lookup table contains mapping from real values to cumulative
 * probabilities. Careful selection of table size allows lookup
 * virtually in constant time.
 *
 * All cumulative probabilities are rescaled to LOOKUP_SCALE,
 * this allows to save one multiplication operation on each iteration
 * in randomize().
 */

void *
fill_lookup(struct amino_acid **lookup, struct amino_acid *amino_acid, int amino_acid_size) {
    float p = 0;
    for (int i = 0; i < amino_acid_size; i++) {
        p += amino_acid[i].prob;
        amino_acid[i].cprob_lookup = p*LOOKUP_SCALE;
    }

    // Prevent rounding error.
    amino_acid[amino_acid_size - 1].cprob_lookup = LOOKUP_SIZE - 1;

    for (int i = 0, j = 0; i < LOOKUP_SIZE; i++) {
        while (amino_acid[j].cprob_lookup < i) {
            j++;
        }
        lookup[i] = &amino_acid[j];
    }

    return 0;
}

void
randomize(struct amino_acid *amino_acid, int amino_acid_size,
        const char *title, int n, random_t *rand) {
    struct amino_acid *lookup[LOOKUP_SIZE];
    char line_buffer[LINE_LEN + 1];
    int i, j;

    line_buffer[LINE_LEN] = '\n';

    fill_lookup(lookup, amino_acid, amino_acid_size);

    fputs_unlocked(title, bench_stdout);

    for (i = 0, j = 0; i < n; i++, j++) {
        if (j == LINE_LEN) {
            fwrite_unlocked(line_buffer, LINE_LEN + 1, 1, bench_stdout);
            j = 0;
        }

        float r = random_next_lookup(rand);
        struct amino_acid *u = lookup[(short)r];
        while (unlikely(u->cprob_lookup < r)) {
            ++u;
        }
        line_buffer[j] = u->sym;
    }
    line_buffer[j] = '\n';
    fwrite_unlocked(line_buffer, j + 1, 1, bench_stdout);
}

struct amino_acid amino_acid[] = {
   { 'a', 0.27 },
   { 'c', 0.12 },
   { 'g', 0.12 },
   { 't', 0.27 },

   { 'B', 0.02 },
   { 'D', 0.02 },
   { 'H', 0.02 },
   { 'K', 0.02 },
   { 'M', 0.02 },
   { 'N', 0.02 },
   { 'R', 0.02 },
   { 'S', 0.02 },
   { 'V', 0.02 },
   { 'W', 0.02 },
   { 'Y', 0.02 },
};

struct amino_acid homo_sapiens[] = {
   { 'a', 0.3029549426680 },
   { 'c', 0.1979883004921 },
   { 'g', 0.1975473066391 },
   { 't', 0.3015094502008 },
};

static const char alu[] =
   "GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTG"
   "GGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGA"
   "GACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAA"
   "AATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAAT"
   "CCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAAC"
   "CCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTG"
   "CACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA";

int
fasta_bench(int n) {
    random_t rand;

    random_init(&rand);

    repeat(alu, ">ONE Homo sapiens alu\n", n*2);
    randomize(amino_acid, ARRAY_SIZE(amino_acid),
            ">TWO IUB ambiguity codes\n", n*3, &rand);
    randomize(homo_sapiens, ARRAY_SIZE(homo_sapiens),
            ">THREE Homo sapiens frequency\n", n*5, &rand);
    
    return 0;
}

int run_fasta(int n) {
#ifdef ARRAYFILE
  arrayfile_set_keep_output(arrayfile_stdout, 1);
#endif

  fasta_bench(n);
#ifdef ARRAYFILE
  int output_len = 0;
  char *output = arrayfile_join(arrayfile_stdout, &output_len);
  arrayfile_rewind(arrayfile_stdout);
  //if (run++ == 0) fwrite(output, 1, strlen(output), stdout);
  int ret = 0;
  if (n == 10000) {
    ret = strcmp(output, fasta_10k_ref_output);
  } else {
    ret = 0;
  }
  if (fasta_output) free(fasta_output);
  fasta_output = output;
  fasta_output_len = output_len;

  return ret;
#endif
  return 0;
}
