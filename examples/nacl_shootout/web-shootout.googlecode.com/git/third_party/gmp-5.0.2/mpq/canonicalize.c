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

/* mpq_canonicalize(op) -- Remove common factors of the denominator and
   numerator in OP.

Copyright 1991, 1994, 1995, 1996, 2000, 2001, 2005 Free Software Foundation,
Inc.

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

void
mpq_canonicalize (MP_RAT *op)
{
  mpz_t gcd;
  TMP_DECL;

  if (op->_mp_den._mp_size == 0)
    DIVIDE_BY_ZERO;

  TMP_MARK;

  /* ??? Dunno if the 1+ is needed.  */
  MPZ_TMP_INIT (gcd, 1 + MAX (ABS (op->_mp_num._mp_size),
			      ABS (op->_mp_den._mp_size)));

  mpz_gcd (gcd, &(op->_mp_num), &(op->_mp_den));
  if (! MPZ_EQUAL_1_P (gcd))
    {
      mpz_divexact_gcd (&(op->_mp_num), &(op->_mp_num), gcd);
      mpz_divexact_gcd (&(op->_mp_den), &(op->_mp_den), gcd);
    }

  if (op->_mp_den._mp_size < 0)
    {
      op->_mp_num._mp_size = -op->_mp_num._mp_size;
      op->_mp_den._mp_size = -op->_mp_den._mp_size;
    }
  TMP_FREE;
}
