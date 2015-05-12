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

/* mpz_init_set (src_integer) -- Make a new multiple precision number with
   a value copied from SRC_INTEGER.

Copyright 1991, 1993, 1994, 1996, 2000, 2001, 2002 Free Software Foundation,
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
mpz_init_set (mpz_ptr w, mpz_srcptr u)
{
  mp_ptr wp, up;
  mp_size_t usize, size;

  usize = u->_mp_size;
  size = ABS (usize);

  w->_mp_alloc = MAX (size, 1);
  w->_mp_d = (mp_ptr) (*__gmp_allocate_func) (w->_mp_alloc * BYTES_PER_MP_LIMB);

  wp = w->_mp_d;
  up = u->_mp_d;

  MPN_COPY (wp, up, size);
  w->_mp_size = usize;

#ifdef __CHECKER__
  /* let the low limb look initialized, for the benefit of mpz_get_ui etc */
  if (size == 0)
    wp[0] = 0;
#endif
}
