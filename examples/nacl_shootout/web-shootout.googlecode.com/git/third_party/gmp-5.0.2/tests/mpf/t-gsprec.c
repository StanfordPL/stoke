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

/* Test mpf_get_prec and mpf_set_prec.

Copyright 2000, 2001 Free Software Foundation, Inc.

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

#include <stdio.h>
#include <stdlib.h>
#include "gmp.h"
#include "gmp-impl.h"
#include "tests.h"

void
check_consistency (void)
{
  mpf_t  x;
  unsigned long  i, a, b;

  mpf_init (x);

  for (i = 1; i < 2000; i++)
    {
      mpf_set_prec (x, i);
      a = mpf_get_prec (x);
      mpf_set_prec (x, a);
      b = mpf_get_prec (x);
      if (a != b)
        {
          printf ("mpf_get_prec / mpf_set_prec inconsistent\n");
          printf ("   set %lu gives %lu, but then set %lu gives %lu\n",
                  i, a,
                  a, b);
          abort ();
        }
    }

  mpf_clear (x);
}

int
main (void)
{
  tests_start ();

  check_consistency ();

  tests_end ();
  exit (0);
}
