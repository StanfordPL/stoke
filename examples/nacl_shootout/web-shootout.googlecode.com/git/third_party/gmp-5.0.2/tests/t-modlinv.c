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

/* Test binvert_limb.

Copyright 2000, 2001, 2002, 2003 Free Software Foundation, Inc.

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
#include <string.h>
#include "gmp.h"
#include "gmp-impl.h"
#include "longlong.h"
#include "tests.h"


void
one (mp_limb_t n)
{
  mp_limb_t  inv, prod;

  binvert_limb (inv, n);
  prod = (inv * n) & GMP_NUMB_MASK;
  if (prod != 1)
    {
      printf ("binvert_limb wrong\n");
      mp_limb_trace ("  n       ", n);
      mp_limb_trace ("  got     ", inv);
      mp_limb_trace ("  product ", prod);
      abort ();
    }
}

void
some (void)
{
  int  i;
  for (i = 0; i < 10000; i++)
    one (refmpn_random_limb () | 1);
}

void
all (void)
{
  mp_limb_t  n;

  n = 1;
  do {
    one (n);
    n += 2;
  } while (n != 1);
}


int
main (int argc, char *argv[])
{
  tests_start ();

  if (argc >= 2 && strcmp (argv[1], "-a") == 0)
    {
      /* it's feasible to run all values on a 32-bit limb, but not a 64-bit */
      all ();
    }
  else
    {
      some ();
    }

  tests_end ();
  exit (0);
}
