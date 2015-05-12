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

/* Test gmp_randinit_set.

Copyright 2003 Free Software Foundation, Inc.

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

/* expect after a gmp_randinit_set that the new and old generators will
   produce the same sequence of numbers */
void
check_one (const char *name, gmp_randstate_ptr src)
{
  gmp_randstate_t dst;
  mpz_t  sz, dz;
  int    i;

  gmp_randinit_set (dst, src);
  mpz_init (sz);
  mpz_init (dz);

  for (i = 0; i < 20; i++)
    {
      mpz_urandomb (sz, src, 123);
      mpz_urandomb (dz, dst, 123);

      if (mpz_cmp (sz, dz) != 0)
        {
          printf     ("gmp_randinit_set didn't duplicate randstate\n");
          printf     ("  algorithm: %s\n", name);
          gmp_printf ("  from src:  %#Zx\n", sz);
          gmp_printf ("  from dst:  %#Zx\n", dz);
          abort ();
        }
    }

  mpz_clear (sz);
  mpz_clear (dz);
  gmp_randclear (dst);
}

int
main (int argc, char *argv[])
{
  tests_start ();

  call_rand_algs (check_one);

  tests_end ();
  exit (0);
}
