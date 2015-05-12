/* The Computer Language Benchmarks Game
   http://shootout.alioth.debian.org/

   contributed by Petr Prokhorenkov
*/

#include <assert.h>
#include <ctype.h>
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include "bench-framework.h"
#include "benchstringio.h"

#define LINE_LENGTH 60 
#define STDOUT 1

#ifdef ARRAYFILE
#define fgets_unlocked stringfile_fgets
#undef stdin
#define stdin stringfile_stdin
#else
#ifndef __GLIBC__
#define fgets_unlocked fgets
#endif
#endif

typedef struct lookup {
    uint8_t bytes[256];
    uint16_t pairs[256*256];
} lookup_t;

void
init_lookup(const uint8_t *from, const uint8_t *to, lookup_t *lookup) {
    for (int i = 0; i < 256; ++i) {
        lookup->bytes[i] = i;
    }
    for (; *from && *to; ++from, ++to) {
        lookup->bytes[tolower(*from)] = *to;
        lookup->bytes[toupper(*from)] = *to;
    }

    for (int i = 0; i != 256; ++i) {
        for (int j = 0; j != 256; ++j) {
            lookup->pairs[(i << 8) + j] =
                ((uint16_t)lookup->bytes[j] << 8) + lookup->bytes[i];
        }
    }
}

typedef struct job {
    struct job *prev_job;

    pthread_mutex_t *io_mutex;
    pthread_cond_t condition;
    int finished;

    const uint8_t *header_begin;
    const uint8_t *header_end;
    const uint8_t *body_begin;
    const uint8_t *body_end;
    const lookup_t *lookup;
    pthread_t thread;
    uint8_t *buffer;
    int free_buffer;
} job_t;

off_t get_file_size(FILE *f) {
    long begin = ftell(f);
    fseek(f, 0, SEEK_END);
    long size = ftell(f) - begin;
    fseek(f, begin, SEEK_SET);

    return size;
}

void
persistent_write(int fd, const void *ptr, size_t size) {
#ifdef ARRAYFILE
  assert(arrayfile_fwrite(ptr, size, 1, arrayfile_stdout));
#else
    while (size > 0) {
        ssize_t result = write(fd, ptr, size);

        assert(result >= 0);

        size -= result;
    }
#endif
}

size_t
reverse_complement(
        const uint8_t *begin,
        const uint8_t *end,
        const lookup_t *lookup,
        uint8_t *buffer) {
    size_t size = end - begin;
    const uint8_t *read_p = (const uint8_t *)end;
    uint8_t *buffer_begin = buffer;

    while (size >= LINE_LENGTH) {
        uint16_t *pair_buffer = (uint16_t *)buffer;
        const uint16_t *read_pair = (const uint16_t *)read_p;

        for (size_t i = 0; i < LINE_LENGTH; i += 2) {
            *pair_buffer++ = lookup->pairs[*--read_pair];
        }

        read_p -= LINE_LENGTH&(~1);
        buffer += LINE_LENGTH&(~1);

        if (LINE_LENGTH % 2 != 0) {
            *buffer++ = *--read_p;
        }

        *buffer++ = '\n';
        size -= LINE_LENGTH;
    }

    if (size > 0) {
       while (read_p > begin) {
           *buffer++ = lookup->bytes[*--read_p];
       }
       *buffer++ = '\n';
    }

    return buffer - buffer_begin;
}

size_t round_by(size_t a, size_t b) {
    return a - a%b;
}

void
process_block(
        job_t *job) {
    const uint8_t *header_begin = job->header_begin;
    const uint8_t *header_end = job->header_end;
    const uint8_t *body_begin = job->body_begin;
    const uint8_t *body_end = job->body_end;
    const lookup_t *lookup = job->lookup;
    pthread_mutex_t *io_mutex = job->io_mutex;
    pthread_cond_t *condition = &job->condition;
    uint8_t *buffer = job->buffer;

    size_t size = reverse_complement(
            body_begin, body_end,
            lookup,
            buffer);

    pthread_mutex_lock(io_mutex);
    if (job->prev_job) {
        if (!job->prev_job->finished) {
            pthread_cond_wait(
                    &job->prev_job->condition, io_mutex);
        }
    }
    
    if (header_begin && header_end) {
        persistent_write(
                STDOUT, header_begin, header_end - header_begin);
    }
    persistent_write(STDOUT, buffer, size);
    job->finished = 1;
    pthread_cond_signal(condition);
    pthread_mutex_unlock(io_mutex);
}

job_t *detach_job(
        const uint8_t *header_begin, const uint8_t *header_end,
        const uint8_t *body_begin, const uint8_t *body_end,
        const lookup_t *lookup,
        pthread_mutex_t *mutex,
        job_t *prev_job,
        uint8_t *buffer,
        int free_buffer) {
    job_t *job = calloc(1, sizeof(*job));
    assert(job);

    job->io_mutex = mutex;
    pthread_cond_init(&job->condition, 0);
    job->header_begin = header_begin;
    job->header_end = header_end;
    job->body_begin = body_begin;
    job->body_end = body_end;
    job->lookup = lookup;
    job->buffer = buffer;
    job->prev_job = prev_job;
    job->free_buffer = free_buffer;

    pthread_create(&job->thread, 0, (void *(*)(void *))&process_block, job);

    return job;
}

job_t *
do_process_block(
        const uint8_t *header_begin, const uint8_t *header_end,
        const uint8_t *body_begin, const uint8_t *body_end,
        const lookup_t *lookup,
        pthread_mutex_t *mutex,
        job_t *prev_job) {
    uint64_t body_size = body_end - body_begin;
    uint64_t tail_len = round_by(body_size/2, LINE_LENGTH);
    const uint8_t *split_at = body_end - tail_len;

    uint8_t *buffer = malloc(
            body_size*(LINE_LENGTH + 1)/LINE_LENGTH + LINE_LENGTH);
    assert(buffer);

    prev_job = detach_job(
            header_begin, header_end,
            split_at, body_end,
            lookup,
            mutex,
            prev_job,
            buffer,
            1);
    prev_job = detach_job(
            0, 0,
            body_begin, split_at,
            lookup,
            mutex,
            prev_job,
            buffer + tail_len*(LINE_LENGTH + 1)/LINE_LENGTH,
            0);

    return prev_job;
}

int
revcomp_main(void) {
#ifdef  ARRAYFILE
  long stdin_size = fasta_output_len;
#else
    setvbuf(stdin, 0, _IOFBF, 1024*1024);

    long stdin_size = get_file_size(stdin);
#endif
    uint8_t *buffer = calloc(stdin_size + LINE_LENGTH, 1);
    assert(buffer);
    lookup_t lookup;
    pthread_mutex_t mutex;
    job_t *job = 0;

    init_lookup(
            (const uint8_t *)"acbdghkmnsrutwvy",
            (const uint8_t *)"TGVHCDMKNSYAAWBR",
            &lookup);

    pthread_mutex_init(&mutex, 0);

    uint8_t *current = buffer;
    uint8_t *end = buffer + stdin_size;
    uint8_t *header_begin = 0;
    uint8_t *header_end = 0;
    uint8_t *body_begin = 0;

    while (fgets_unlocked((char *)current, end - current, stdin)) {
        if (current[0] == '>') {
            if (body_begin != 0) {
                job = do_process_block(
                        header_begin, header_end,
                        body_begin, current,
                        &lookup,
                        &mutex,
                        job); 
            }
            size_t len = strlen((const char *)current);
            header_begin = current;
            header_end = current + len;
            current += len;
            body_begin = current;
        } else {
            if (current[LINE_LENGTH] == '\n') {
                current += LINE_LENGTH;
            } else {
                size_t len = strlen((const char *)current);
                if (current[len - 1] == '\n') {
                    --len;
                }
                current += len;
            }
        }
    }

    if (body_begin != 0) {
        job = do_process_block(
                header_begin, header_end,
                body_begin, current,
                &lookup,
                &mutex,
                job); 
    }

    while (job) {
        pthread_join(job->thread, 0);

        if (job->free_buffer) {
            free(job->buffer);
        }
        job = job->prev_job;
    }
    
    free(buffer);

    return 0;
}

int run_revcomp(int ignored) {
  static int run = 0;
#ifdef ARRAYFILE
  stringfile_stdin = stringfile_open((void *)fasta_output, fasta_output_len, "r");
  if (!stringfile_stdin) return -1;
  assert(arrayfile_stdout);
  arrayfile_set_keep_output(arrayfile_stdout, 0);
#endif

  revcomp_main();

#ifdef ARRAYFILE
  char *output = arrayfile_join(arrayfile_stdout, NULL);
  arrayfile_rewind(arrayfile_stdout);
  // To verify revcomp output at the command line, uncomment this
  //if (run++ == 0) fwrite(output, 1, strlen(output), stdout);
  free(output);
  stringfile_close(stringfile_stdin);
  return 0;
#endif

}
