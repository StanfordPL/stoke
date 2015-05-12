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

/* __gmp_asprintf_memory etc -- formatted output to allocated space.

Copyright 2001, 2002 Free Software Foundation, Inc.

This file is part of the GNU MP Library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 3 of the License, or (at your
option) any later version.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the GNU MP Library.  If not, see http://www.gnu.org/licenses/.  */


/* These routines are in a separate file so that the mpz_t, mpq_t and mpf_t
   operator<< routines can avoid dragging vsnprintf into the link (via
   __gmp_asprintf_format).  */

#include "config.h"

#if HAVE_STDARG
#include <stdarg.h>
#else
#include <varargs.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "gmp.h"
#include "gmp-impl.h"


int
__gmp_asprintf_memory (struct gmp_asprintf_t *d, const char *str, size_t len)
{
  GMP_ASPRINTF_T_NEED (d, len);
  memcpy (d->buf + d->size, str, len);
  d->size += len;
  return len;
}

int
__gmp_asprintf_reps (struct gmp_asprintf_t *d, int c, int reps)
{
  GMP_ASPRINTF_T_NEED (d, reps);
  memset (d->buf + d->size, c, reps);
  d->size += reps;
  return reps;
}

int
__gmp_asprintf_final (struct gmp_asprintf_t *d)
{
  char  *buf = d->buf;
  ASSERT (d->alloc >= d->size + 1);
  buf[d->size] = '\0';
  __GMP_REALLOCATE_FUNC_MAYBE_TYPE (buf, d->alloc, d->size+1, char);
  *d->result = buf;
  return 0;
}
