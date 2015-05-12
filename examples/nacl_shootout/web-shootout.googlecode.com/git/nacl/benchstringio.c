/* stringfile implementation is just fmemopen from NaCl glibc:
   Copyright (C) 2000, 2002, 2005, 2006, 2008 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
   Contributed by Hanno Mueller, kontakt@hanno.de, 2000.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, write to the Free
   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307 USA.  */

/*
 * fmemopen() - "my" version of a string stream
 * Hanno Mueller, kontakt@hanno.de
 *
 *
 * I needed fmemopen() for an application that I currently work on,
 * but couldn't find it in libio. The following snippet of code is an
 * attempt to implement what glibc's documentation describes.
 *
 *
 *
 * I already see some potential problems:
 *
 * - I never used the "original" fmemopen(). I am sure that "my"
 *   fmemopen() behaves differently than the original version.
 *
 * - The documentation doesn't say wether a string stream allows
 *   seeks. I checked the old fmemopen implementation in glibc's stdio
 *   directory, wasn't quite able to see what is going on in that
 *   source, but as far as I understand there was no seek there. For
 *   my application, I needed fseek() and ftell(), so it's here.
 *
 * - "append" mode and fseek(p, SEEK_END) have two different ideas
 *   about the "end" of the stream.
 *
 *   As described in the documentation, when opening the file in
 *   "append" mode, the position pointer will be set to the first null
 *   character of the string buffer (yet the buffer may already
 *   contain more data). For fseek(), the last byte of the buffer is
 *   used as the end of the stream.
 *
 * - It is unclear to me what the documentation tries to say when it
 *   explains what happens when you use fmemopen with a NULL
 *   buffer.
 *
 *   Quote: "fmemopen [then] allocates an array SIZE bytes long. This
 *   is really only useful if you are going to write things to the
 *   buffer and then read them back in again."
 *
 *   What does that mean if the original fmemopen() did not allow
 *   seeking? How do you read what you just wrote without seeking back
 *   to the beginning of the stream?
 *
 * - I think there should be a second version of fmemopen() that does
 *   not add null characters for each write. (At least in my
 *   application, I am not actually using strings but binary data and
 *   so I don't need the stream to add null characters on its own.)
 */

/* The rest (c) 2011 The Native Client authors. 
   See Native Client license (BSD-style) */

#include <assert.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <sys/types.h>
#include <sys/param.h>
#include "benchstringio.h"

struct stringfile_cookie_struct
{
  char *buffer;
  int mybuffer;
  int binmode;
  size_t size;
  long pos;
  size_t maxpos;
};

stringfile_t *stringfile_stdin = NULL;
const static size_t kArrayfileDefaultAlloc = 4096;
arrayfile_t *arrayfile_stdout;

ssize_t
stringfile_read (void *cookie, char *b, size_t s)
{
  stringfile_t *c;

  c = (stringfile_t *) cookie;

  if (c->pos + s > c->size)
    {
      if ((size_t) c->pos == c->size)
	return 0;
      s = c->size - c->pos;
    }

  memcpy (b, &(c->buffer[c->pos]), s);

  c->pos += s;
  if ((size_t) c->pos > c->maxpos)
    c->maxpos = c->pos;

  return s;
}


ssize_t
stringfile_write (void *cookie, const char *b, size_t s)
{
  stringfile_t *c;
  int addnullc;

  c = (stringfile_t *) cookie;

  addnullc = c->binmode == 0 && (s == 0 || b[s - 1] != '\0');

  if (c->pos + s + addnullc > c->size)
    {
      if ((size_t) (c->pos + addnullc) == c->size)
	{
	  errno = ENOSPC;
	  return 0;
	}
      s = c->size - c->pos - addnullc;
    }

  memcpy (&(c->buffer[c->pos]), b, s);

  c->pos += s;
  if ((size_t) c->pos > c->maxpos)
    {
      c->maxpos = c->pos;
      if (addnullc)
	c->buffer[c->maxpos] = '\0';
    }

  return s;
}


int
stringfile_seek (void *cookie, long *p, int w)
{
  long np;
  stringfile_t *c;

  c = (stringfile_t *) cookie;

  switch (w)
    {
    case SEEK_SET:
      np = *p;
      break;

    case SEEK_CUR:
      np = c->pos + *p;
      break;

    case SEEK_END:
      np = (c->binmode ? c->size : c->maxpos) - *p;
      break;

    default:
      return -1;
    }

  if (np < 0 || (size_t) np > c->size)
    return -1;

  *p = c->pos = np;

  return 0;
}


int
stringfile_close (void *cookie)
{
  stringfile_t *c;

  c = (stringfile_t *) cookie;

  if (c->mybuffer)
    free (c->buffer);
  free (c);

  return 0;
}


stringfile_t *
stringfile_open (void *buf, size_t len, const char *mode)
{
  stringfile_t *c;

  if (__builtin_expect (len == 0, 0))
    {
    einval:
      errno = EINVAL;
      return NULL;
    }

  c = (stringfile_t *) malloc (sizeof (stringfile_t));
  if (c == NULL)
   return NULL;

  c->mybuffer = (buf == NULL);

  if (c->mybuffer)
    {
      c->buffer = (char *) malloc (len);
      if (c->buffer == NULL)
	{
	  free (c);
	  return NULL;
	}
      c->buffer[0] = '\0';
    }
  else
    {
      if (__builtin_expect ((uintptr_t) len > -(uintptr_t) buf, 0))
	{
	  free (c);
	  goto einval;
	}

      c->buffer = buf;
    }

  c->size = len;

  if (mode[0] == 'w')
    c->buffer[0] = '\0';

  c->maxpos = strlen (c->buffer);

  if (mode[0] == 'a')
    c->pos = c->maxpos;
  else
    c->pos = 0;

  c->binmode = mode[0] != '\0' && mode[1] == 'b';

  return c;
}

char *stringfile_fgets(char *s, int size, void *file) {
  stringfile_t *c = file;
  char *end;
  int bytes_read;
  char *limit = MIN(c->buffer + c->maxpos, c->buffer + c->pos + size - 1);
  for (end = c->buffer + c->pos; end < limit && *end != '\n'; end++) ;
  if (end < limit) end++; /* get the newline */
  bytes_read = stringfile_read(file, s, end - (c->buffer + c->pos));
  assert(bytes_read <= size - 1);
  *(s + bytes_read) = '\0';
  if (bytes_read == 0) return NULL;
  return s;
}

struct arrayfile_struct {
  /* cleared on rewind */
  int array_count;
  int *array_lens;
  /* preserved on rewind */
  char **array;
  int *array_allocs;
  int array_size;
  int keep_output;
};

arrayfile_t * arrayfile_fopen(const char *name, const char *mode) {
  arrayfile_t *file = (arrayfile_t *)malloc(sizeof(arrayfile_t));
  if (!file) return NULL;

  if (mode && mode[0] != 'w') {
    printf("bad mode %s in arrayfile_open\n", mode);
    goto array_fail;
  }
  file->keep_output = 1;
  if (mode && strlen(mode) > 1) {
    if (mode[1] == 'd') {
      file->keep_output = 0;
    } else {
      printf("bad mode %s in arrayfile_open\n", mode);
      goto array_fail;
    }
  }

  file->array = (char **)calloc(kArrayfileDefaultAlloc, sizeof(void *));
  if (!file->array) goto array_fail;
  file->array_size = kArrayfileDefaultAlloc;
  file->array_lens = calloc(file->array_size, sizeof(int));
  if (!file->array_lens) goto lens_fail;
  file->array_allocs = calloc(file->array_size, sizeof(int));
  if (!file->array_allocs) goto allocs_fail;
  file->array_count = 0;

  return file;

 allocs_fail:
  free(file->array_lens);
 lens_fail:
  free(file->array);
 array_fail:
  free(file);
  return NULL;
}

void arrayfile_set_keep_output(arrayfile_t *file, int keep) {
  file->keep_output = keep;
}

ssize_t arrayfile_fwrite(const char *b, size_t s, size_t n, arrayfile_t *file) {
  char *buf;
  size_t size = s * n;
  int count;
  if (!file) return 0;
  if (!file->array) return 0;
  count = file->array_count;
  assert(count <= file->array_size);
  if (count == file->array_size) {
    if (file->keep_output) {
      /* grow the capacity */
      file->array = realloc(file->array, file->array_size * sizeof(void *) * 2);
      if (!file->array) return 0;
      file->array_lens = realloc(file->array_lens, 
                                 file->array_size * sizeof(int) * 2);
      file->array_allocs = realloc(file->array_allocs,
                                   file->array_size * sizeof(int) * 2);
      if (!file->array_lens || !file->array_allocs) return 0;
      // initialize the newly-allocated upper halves
      memset(file->array + count, 0, count * sizeof(void *));
      memset(file->array_lens + count, 0, count * sizeof(int));
      memset(file->array_allocs + count, 0, count * sizeof(int));
      file->array_size = file->array_size * 2;
    }
    else {
    }
  }

  /* Reuse existing string buffer if possible*/
  if (file->array[count] && 
      file->array_lens[count] < size + 2) {
    /* It's there but not big enough */
    free(file->array[count]);
    file->array[count] = NULL;
  }
  if (file->array[count] == NULL) {
    /* leave an extra byte of space for newline, due to fwrite/fputc usage */
    buf = malloc(size + 2); 
    file->array_allocs[count] = size + 2;
  } else {
    buf = file->array[count];
  }
  if (!buf) return 0;
  memcpy(buf, b, size);
  buf[size] = '\0';
  file->array[count] = buf;
  file->array_lens[count] = size;
  file->array_count++;
  return size;
}

int arrayfile_fputc(int c, arrayfile_t *file) {
  int last;
  char buf;
  if (!file) return EOF;  
  last = file->array_count - 1;
  if (file->array_allocs[last] > file->array_lens[last] + 1) {
    file->array[last][file->array_lens[last]] = c;
    file->array_lens[last]++;
    file->array[last][file->array_lens[last]] = '\0';
    return c;
  }
  buf = (char) c;
  if(!arrayfile_fwrite(&buf, 1, 1, file)) return EOF;
  return c;
}

int arrayfile_fputs(const char *c, arrayfile_t *file) {
  if(!arrayfile_fwrite(c, 1, strlen(c), file)) return EOF;
  return 1;
}

char * arrayfile_join(arrayfile_t *file, int *len) {
  int i;
  int total_size = 0;
  char * joinbuf;
  int pos = 0;
  if (!file) return NULL;
  for (i = 0; i < file->array_count; i++) {
    total_size += file->array_lens[i];
  }
  joinbuf = malloc(total_size + 1);
  if (!joinbuf) return NULL;
  for (i = 0; i < file->array_count; i++) {
    memcpy(joinbuf + pos, file->array[i], file->array_lens[i]);
    pos += file->array_lens[i];
  }
  joinbuf[total_size] = '\0';
  if (len) *len = total_size;
  return joinbuf;
}

void arrayfile_rewind(arrayfile_t *file) {
  file->array_count = 0;
  memset(file->array_lens, 0, file->array_size * sizeof(int));
}

int arrayfile_fclose(arrayfile_t *file) {
  int i;
  if (!file) return EOF;
  for (i = 0; i < file->array_size; i++) {
    free(file->array[i]);
    file->array[i] = NULL;
  }
  free(file->array);
  free(file->array_lens);
  free(file->array_allocs);
  free(file);
  return 0;
}
