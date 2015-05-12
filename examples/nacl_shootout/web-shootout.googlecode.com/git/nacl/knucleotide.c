/* The Computer Language Benchmarks Game

   http://shootout.alioth.debian.org/

 

   Based on bit encoding idea of C++ contribution of Andrew Moon

   Copy task division idea from Java entry, contributed by James McIlree

   Contributed by Petr Prokhorenkov

   Modified by Stefano Guidoni

*/

#include "simple_hash3.h"


#include <ctype.h>

#include <malloc.h>

#include <pthread.h>

#include <sched.h>

#include <stdio.h>

#include <stdlib.h>

#include <string.h>

#include <sys/mman.h>

#include <sys/stat.h>

#include <unistd.h>

#include "bench-framework.h"
#include "benchstringio.h"

#define HT_SIZE 2000000

#ifdef ARRAYFILE
#define fgets_unlocked stringfile_fgets
#undef stdin
#define stdin stringfile_stdin
#else
#ifndef __GLIBC__
#define fgets_unlocked fgets
#endif
#endif


typedef unsigned char uint8_t;
const uint8_t selector[] = { -1, 0,-1, 1, 3,-1,-1, 2 };
const char table[] = {'A', 'C', 'G', 'T'};

/* this is sligthly faster

struct ht_node *

ht_find_new(struct ht_ht *ht, ui64 key) 

{

    int hash_code = ht_hashcode(ht, key);

    struct ht_node *node = ht->tbl[hash_code];

    

    if (node) 

    {

      if (key == node->key)

          return(node);

    } else {

      ht->items++;

      return(ht->tbl[hash_code] = ht_node_create(key));

    }

    

    while (node->next) 

    {

        if (key == node->next->key)

            return(node->next);

        node = node->next;

    }



    ht->items++;

    return (node->next = ht_node_create(key));

}*/

/* Thread pool implementation */

struct tp_entry {
    void *job;
    void *param;
};

struct tp {
    struct tp_entry *jobs;
    int capacity;
    int size;
    pthread_mutex_t mutex;
};

struct tp *
tp_create(int max_jobs) {
    struct tp *pool = malloc(sizeof(*pool));

    pool->jobs = malloc(sizeof(struct tp_entry)*max_jobs);
    pool->capacity = max_jobs;
    pool->size = 0;
    pthread_mutex_init(&pool->mutex, 0);

    return pool;
}

void
tp_destroy(struct tp *pool) {
    free(pool->jobs);
    pthread_mutex_destroy(&pool->mutex);
    free(pool);
}

void
tp_add_job(struct tp *pool, void *job, void *param) {
    if (pool->size < pool->capacity) {
        pool->jobs[pool->size].job = job;
        pool->jobs[pool->size].param = param;
        ++pool->size;
    }
}

void *
_tp_run(void *param) {
    struct tp *pool = param;

    for (;;) {
        void (*job)(void *) = 0;
        void *param = 0;

        pthread_mutex_lock(&pool->mutex);
        if (pool->size > 0) {
            job = pool->jobs[pool->size - 1].job;
            param = pool->jobs[pool->size - 1].param;
            --pool->size;
        }
        pthread_mutex_unlock(&pool->mutex);
        if (job == 0) {
            return 0;
        } else {
            job(param);
        }
    }
}

void
tp_run(struct tp *pool, int max_threads) {
    pthread_t threads[max_threads];
    for (int i = 0; i < max_threads; i++) {
        pthread_create(&threads[i], 0, &_tp_run, pool);
    }

    for (int i = 0; i < max_threads; i++) {
        pthread_join(threads[i], 0);
    }
}

char *
read_stdin(int *stdin_size) {
    int input_size;
#ifdef ARRAYFILE
    input_size = fasta_output_len;
#else
    struct stat stat;
    fstat(0, &stat);
    input_size = stat.st_size;
#endif
    char *result = malloc(input_size);

    do {
      assert(fgets_unlocked(result, input_size, stdin));
    } while (strncmp(result, ">THREE", 6));

    int read = 0;
    while (fgets_unlocked(result + read, input_size - read, stdin)) {
        int len = strlen(result + read);
        if (len == 0 || result[read] == '>') {
            break;
        }
        read += len;
        if (result[read - 1] == '\n') {
            read--;
        }
    }

    result[read++] = '>';
    result = realloc(result, read);
    *stdin_size = read;

    return result;
}

static
inline char *
next_char(char *p) {
    do {
        ++p;
    } while (isspace(*p));

    return p;
}

static
inline uint64_t
push_char(uint64_t cur, uint8_t c) {
    return (cur << 2) + selector[(c & 7)];
}

uint64_t
pack_key(char *key, int len) {
    uint64_t code = 0;
    for (int i = 0; i < len; i++) {
        code = push_char(code, *key);
        key = next_char(key);
    }

    return code;
}

void
unpack_key(uint64_t key, int length, char *buffer) {
    int i;

    for (i = length - 1; i > -1; i--) {
        buffer[i] = table[key & 3];
        key >>= 2;
    }
    buffer[length] = 0;
}

void
generate_seqences(char *start, int length, int frame, struct ht_ht *ht) {
    uint64_t code = 0;
    uint64_t mask = (1ull << 2*frame) - 1;
    char *p = start;
    char *end = start + length;

    // Pull first frame.

    for (int i = 0; i < frame; i++) {
        code = push_char(code, *p);
        ++p;
    }
    ht_find_new(ht, code)->val++;

    while (p < end) {
        code = push_char(code, *p) & mask;
        ht_find_new(ht, code)->val++;
        ++p;
        if (*p & 8) {
            if (*p & 1) {
                ++p;
            } else
                break;
        }
    }
}

int
key_count_cmp(const void *l, const void *r) {
    const struct ht_node *lhs = l, *rhs = r;

    if (lhs->val != rhs->val) {
        return rhs->val - lhs->val;
    } else {
        // Overflow is possible here,

        // so use comparisons instead of subtraction.

        if (lhs->key < rhs->key) {
            return -1;
        } else if (lhs->key > rhs->key) {
            return 1;
        } else {
            return 0;
        }
    }
}

struct print_freqs_param {
    char *start;
    int length;
    int frame;
    char *output;
    int output_size;
};

struct ht_node *
ht_values_as_vector(struct ht_ht *ht) {
    struct ht_node *v = malloc(ht->items*sizeof(struct ht_node));
    struct ht_node *n = ht_first(ht);

    for (int i = 0; i < ht->items; i++) {
        v[i] = *n;
        n = ht_next(ht);
    }

    return v;
}

void
print_freqs(struct print_freqs_param *param) {
    char *start = param->start;
    int length = param->length;
    int frame = param->frame;
    char *output = param->output;
    int output_size = param->output_size;

    struct ht_ht *ht = ht_create(32);
    char buffer[frame + 1];
    int output_pos = 0;

    generate_seqences(start, length, frame, ht);
    
    struct ht_node *counts = ht_values_as_vector(ht);
    int size = ht->items;

    qsort(counts, size, sizeof(struct ht_node), &key_count_cmp);

    int total_count = 0;
    for (int i = 0; i < size; i++) {
        total_count += counts[i].val;
    }

    for (int i = 0; i < size; i++) {
        unpack_key(counts[i].key, frame, buffer);
        output_pos += snprintf(output + output_pos, output_size - output_pos,
                "%s %.3f\n", buffer, counts[i].val*100.0f/total_count);
    }

    free(counts);
    ht_destroy(ht);
}

struct print_occurences_param {
    char *start;
    int length;
    char *nuc_seq;
    char *output;
    int output_size;
};

void
print_occurences(struct print_occurences_param *param) {
    char *start = param->start;
    int length = param->length;
    char *nuc_seq = param->nuc_seq;
    char *output = param->output;
    int output_size = param->output_size;
    int nuc_seq_len = strlen(nuc_seq);
    struct ht_ht *ht = ht_create(HT_SIZE);

    generate_seqences(start, length, nuc_seq_len, ht);

    uint64_t key = pack_key(nuc_seq, nuc_seq_len);
    int count = ht_find_new(ht, key)->val;
    snprintf(output, output_size, "%d\t%s\n", count, nuc_seq);
    
    ht_destroy(ht);
}

int
get_cpu_count(void) {
#ifdef __GLIBC__
    cpu_set_t cpu_set;

    CPU_ZERO(&cpu_set);
    sched_getaffinity(0, sizeof(cpu_set), &cpu_set);

    return CPU_COUNT(&cpu_set);
#else
    return 1;
#endif
}

#define MAX_OUTPUT 1024


int
knucleotide_main(void) {
    int stdin_size;
    char *stdin_mem = read_stdin(&stdin_size);
    int cpu_count = get_cpu_count();

    char output_buffer[7][MAX_OUTPUT];

#   define DECLARE_PARAM(o, n) {\
    .start = stdin_mem, \
    .length = stdin_size, \
    .frame = n,\
    .output = output_buffer[o],\
    .output_size = MAX_OUTPUT }

    struct print_freqs_param freq_params[2] = {
        DECLARE_PARAM(0, 1),
        DECLARE_PARAM(1, 2)
    }; 

#   undef DECLARE_PARAM


#   define DECLARE_PARAM(o, s) {\
    .start = stdin_mem, \
    .length = stdin_size, \
    .nuc_seq = s,\
    .output = output_buffer[o],\
    .output_size = MAX_OUTPUT }

    struct print_occurences_param occurences_params[5] = {
        DECLARE_PARAM(2, "GGT"),
        DECLARE_PARAM(3, "GGTA"),
        DECLARE_PARAM(4, "GGTATT"),
        DECLARE_PARAM(5, "GGTATTTTAATT"),
        DECLARE_PARAM(6, "GGTATTTTAATTTATAGT")
    };

#   undef DECLARE_PARAM


    struct tp *tp = tp_create(7);

    for (int i = 0 ; i < 2; i++) {
        tp_add_job(tp, &print_freqs, &freq_params[i]);
    }
    for (int i = 0 ;i <  5; i++) {
        tp_add_job(tp, &print_occurences, &occurences_params[i]);
    }

    tp_run(tp, cpu_count + 1);

    tp_destroy(tp);

    volatile int len;//keep the compiler from optimizing away
    for (int i = 0; i < 2; i++) {
      //printf("%s\n", output_buffer[i]);
      len = strlen(output_buffer[i]);
    }
    for (int i = 2; i < 7; i++) {
      //printf("%s", output_buffer[i]);
      len = strlen(output_buffer[i]);
    }

    free(stdin_mem);

    return 0;
}

int run_knucleotide(int ignored) {

#ifdef ARRAYFILE
  stringfile_stdin = stringfile_open((void *)fasta_output, fasta_output_len, "r");
  if(!stringfile_stdin) return -1;
#endif

  knucleotide_main();

#ifdef ARRAYFILE
  stringfile_close(stringfile_stdin);
#endif
  return 0;
}
