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

/* gmp_sscanf -- formatted input from a string.

Copyright 2001 Free Software Foundation, Inc.

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

#include "config.h"

#if HAVE_STDARG
#include <stdarg.h>
#else
#include <varargs.h>
#endif

#include <stdio.h>

#include "gmp.h"
#include "gmp-impl.h"


int
#if HAVE_STDARG
gmp_sscanf (const char *s, const char *fmt, ...)
#else
gmp_sscanf (va_alist)
     va_dcl
#endif
{
  va_list  ap;
  int      ret;
#if HAVE_STDARG
  va_start (ap, fmt);
#else
  const char *s;
  const char *fmt;
  va_start (ap);
  s = va_arg (ap, const char *);
  fmt = va_arg (ap, const char *);
#endif

#if SSCANF_WRITABLE_INPUT
  /* let gmp_vsscanf handle the copying */
  ret = gmp_vsscanf (s, fmt, ap);
#else
  ret = __gmp_doscan (&__gmp_sscanf_funs, (void *) &s, fmt, ap);
#endif
  va_end (ap);
  return ret;
}
