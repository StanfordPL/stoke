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

/* mpn_scan1 -- Scan from a given bit position for the next set bit.

Copyright 1994, 1996, 2001, 2002, 2004 Free Software Foundation, Inc.

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

#include "gmp.h"
#include "gmp-impl.h"
#include "longlong.h"

/* Argument constraints:
   1. U must sooner or later have a limb != 0.
 */

mp_bitcnt_t
mpn_scan1 (mp_srcptr up, mp_bitcnt_t starting_bit)
{
  mp_size_t starting_word;
  mp_limb_t alimb;
  int cnt;
  mp_srcptr p;

  /* Start at the word implied by STARTING_BIT.  */
  starting_word = starting_bit / GMP_NUMB_BITS;
  p = up + starting_word;
  alimb = *p++;

  /* Mask off any bits before STARTING_BIT in the first limb.  */
  alimb &= - (mp_limb_t) 1 << (starting_bit % GMP_NUMB_BITS);

  while (alimb == 0)
    alimb = *p++;

  count_trailing_zeros (cnt, alimb);
  return (p - up - 1) * GMP_NUMB_BITS + cnt;
}
