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

/* mpz_set_f (dest_integer, src_float) -- Assign DEST_INTEGER from SRC_FLOAT.

Copyright 1996, 2001 Free Software Foundation, Inc.

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
mpz_set_f (mpz_ptr w, mpf_srcptr u)
{
  mp_ptr    wp, up;
  mp_size_t size;
  mp_exp_t  exp;

  /* abs(u)<1 truncates to zero */
  exp = EXP (u);
  if (exp <= 0)
    {
      SIZ(w) = 0;
      return;
    }

  MPZ_REALLOC (w, exp);
  wp = PTR(w);
  up = PTR(u);

  size = SIZ (u);
  SIZ(w) = (size >= 0 ? exp : -exp);
  size = ABS (size);

  if (exp > size)
    {
      /* pad with low zeros to get a total "exp" many limbs */
      mp_size_t  zeros = exp - size;
      MPN_ZERO (wp, zeros);
      wp += zeros;
    }
  else
    {
      /* exp<=size, trucate to the high "exp" many limbs */
      up += (size - exp);
      size = exp;
    }

  MPN_COPY (wp, up, size);
}
