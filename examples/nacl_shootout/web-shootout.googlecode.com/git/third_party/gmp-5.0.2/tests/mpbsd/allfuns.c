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

/* A test program doing nothing really, just linking to all the BSD MP
   functions that're supposed to exist.

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
#include "mp.h"

int
main (int argc, char *argv[])
{
  MINT *a, *b, *c, *d;
  short  h;

  mp_set_memory_functions (NULL, NULL, NULL);
  a = itom (123);
  b = xtom ("DEADBEEF");
  c = itom (0);
  d = itom (0);
  move (a, b);
  madd (a, b, c);
  msub (a, b, c);
  mult (a, b, c);
  mdiv (b, a, c, d);
  sdiv (b, 2, c, &h);
  msqrt (a, c, d);
  pow (b, a, a, c);
  rpow (a, 3, c);
  gcd (a, b, c);
  mcmp (a, b);
  if (argc > 1)
    {
      min (c);
      mout (a);
    }
  mtox (b);
  mfree(a);

  exit (0);
}
