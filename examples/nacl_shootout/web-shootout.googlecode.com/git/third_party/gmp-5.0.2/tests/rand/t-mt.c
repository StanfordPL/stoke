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

/* Test the Mersenne Twister random number generator.

Copyright 2002 Free Software Foundation, Inc.

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
#include "gmp.h"
#include "gmp-impl.h"
#include "tests.h"

#ifndef TRUE
#define TRUE (1)
#endif
#ifndef FALSE
#define FALSE (0)
#endif

/* Test that the sequence without seeding equals the sequence with the
   default seed.  */
int
chk_default_seed (void)
{
  gmp_randstate_t r1, r2;
  mpz_t a, b;
  int i;
  int ok = TRUE;

  mpz_init2 (a, 19936L);
  mpz_init2 (b, 19936L);

  gmp_randinit_mt (r1);
  gmp_randinit_mt (r2);
  gmp_randseed_ui (r2, 5489L); /* Must match DEFAULT_SEED in randmt.c */
  for (i = 0; i < 3; i++)
    {
      /* Extract one whole buffer per iteration.  */
      mpz_urandomb (a, r1, 19936L);
      mpz_urandomb (b, r2, 19936L);
      if (mpz_cmp (a, b) != 0)
	{
	  ok = FALSE;
	  printf ("Default seed fails in iteration %d\n", i);
	  break;
	}
    }
  gmp_randclear (r1);
  gmp_randclear (r2);

  mpz_clear (a);
  mpz_clear (b);
  return ok;
}

int
main (int argc, char *argv[])
{
  int ok;

  tests_start ();

  ok = chk_default_seed ();

  tests_end ();

  if (ok)
    return 0; /* pass */
  else
    return 1; /* fail */
}
