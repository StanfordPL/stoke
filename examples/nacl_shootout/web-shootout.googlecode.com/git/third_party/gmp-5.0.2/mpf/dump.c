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

/* mpf_dump -- Dump a float to stdout.

   THIS IS AN INTERNAL FUNCTION WITH A MUTABLE INTERFACE.  IT IS NOT SAFE TO
   CALL THIS FUNCTION DIRECTLY.  IN FACT, IT IS ALMOST GUARANTEED THAT THIS
   FUNCTION WILL CHANGE OR DISAPPEAR IN A FUTURE GNU MP RELEASE.


Copyright 1993, 1994, 1995, 2000, 2001 Free Software Foundation, Inc.

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
#include <string.h> /* for strlen */
#include "gmp.h"
#include "gmp-impl.h"

void
mpf_dump (mpf_srcptr u)
{
  mp_exp_t exp;
  char *str;

  str = mpf_get_str (0, &exp, 10, 0, u);
  if (str[0] == '-')
    printf ("-0.%se%ld\n", str + 1, exp);
  else
    printf ("0.%se%ld\n", str, exp);
  (*__gmp_free_func) (str, strlen (str) + 1);
}
