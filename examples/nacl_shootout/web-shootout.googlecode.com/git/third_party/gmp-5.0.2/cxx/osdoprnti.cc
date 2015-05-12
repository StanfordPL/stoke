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

/* __gmp_doprnt_integer_ios -- integer formatted output to an ostream.

   THE FUNCTIONS IN THIS FILE ARE FOR INTERNAL USE ONLY.  THEY'RE ALMOST
   CERTAIN TO BE SUBJECT TO INCOMPATIBLE CHANGES OR DISAPPEAR COMPLETELY IN
   FUTURE GNU MP RELEASES.

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

#include <iostream>
#include <cstdarg>    /* for va_list and hence doprnt_funs_t */
#include <cstring>    /* for strlen */

#include "gmp.h"
#include "gmp-impl.h"

using namespace std;


/* The gmp_asprintf support routines never give an error, so
   __gmp_doprnt_integer shouldn't fail and it's return can just be checked
   with an ASSERT.  */

ostream&
__gmp_doprnt_integer_ostream (ostream &o, struct doprnt_params_t *p,
                              char *s)
{
  struct gmp_asprintf_t   d;
  char  *result;
  int   ret;

  /* don't show leading zeros the way printf does */
  p->prec = -1;

  GMP_ASPRINTF_T_INIT (d, &result);
  ret = __gmp_doprnt_integer (&__gmp_asprintf_funs_noformat, &d, p, s);
  ASSERT (ret != -1);
  __gmp_asprintf_final (&d);
  (*__gmp_free_func) (s, strlen(s)+1);

  gmp_allocated_string  t (result);
  return o.write (t.str, t.len);
}
