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

#ifndef BENCHSTRINGIO_H
#define BENCHSTRINGIO_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct stringfile_cookie_struct stringfile_t;

/* File I/O from a memory buffer, used here for reading */
ssize_t stringfile_read (void *cookie, char *b, size_t s);
ssize_t stringfile_write (void *cookie, const char *b, size_t s);
int stringfile_seek (void *cookie, long *p, int w);
int stringfile_close (void *cookie);
stringfile_t * stringfile_open (void *buf, size_t len, const char *mode);
char *stringfile_fgets(char *s, int size, void *cookie);

/* Write a line at a time to an array of strings and join them on close,
to match JS behavior */
typedef struct arrayfile_struct arrayfile_t;
arrayfile_t * arrayfile_fopen(const char *name, const char *mode);
void arrayfile_set_keep_output(arrayfile_t *file, int keep);
ssize_t arrayfile_fwrite(const char *b, size_t s, size_t n, arrayfile_t *file);
char * arrayfile_join(arrayfile_t *file, int *len);
int arrayfile_fputc(int c, arrayfile_t *file);
int arrayfile_fputs(const char *c, arrayfile_t *file);
void arrayfile_rewind(arrayfile_t *file);
int arrayfile_fclose(arrayfile_t *file);

extern arrayfile_t *arrayfile_stdout;
extern stringfile_t *stringfile_stdin;

#define ARRAYFILE

#ifdef __cplusplus
}
#endif
#endif
