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

/* Exercise mpz_fac_ui.

Copyright 2000, 2001, 2002 Free Software Foundation, Inc.

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


/* Usage: t-fac_ui [x|num]

   With no arguments testing goes up to the initial value of "limit" below.
   With a number argument tests are carried that far, or with a literal "x"
   tests are continued without limit (this being meant only for development
   purposes).  */


int
main (int argc, char *argv[])
{
  unsigned long  n;
  unsigned long  limit = 1500;
  mpz_t          f, r;

  tests_start ();

  if (argc > 1 && argv[1][0] == 'x')
    limit = ULONG_MAX;
  else if (argc > 1)
    limit = atoi (argv[1]);

  /* for small limb testing */
  limit = MIN (limit, MP_LIMB_T_MAX);

  mpz_init_set_ui (f, 1);  /* 0! = 1 */
  mpz_init (r);

  for (n = 0; n < limit; n++)
    {
      mpz_fac_ui (r, n);
      MPZ_CHECK_FORMAT (r);

      if (mpz_cmp (f, r) != 0)
        {
          printf ("mpz_fac_ui(%lu) wrong\n", n);
          printf ("  got  "); mpz_out_str (stdout, 10, r); printf("\n");
          printf ("  want "); mpz_out_str (stdout, 10, f); printf("\n");
          abort ();
        }

      mpz_mul_ui (f, f, n+1);  /* (n+1)! = n! * (n+1) */
    }

  mpz_clear (f);
  mpz_clear (r);

  tests_end ();

  exit (0);
}
