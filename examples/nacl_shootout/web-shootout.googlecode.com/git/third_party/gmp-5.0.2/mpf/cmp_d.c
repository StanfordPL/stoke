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

/* mpf_cmp_d -- compare mpf and double.

Copyright 2001, 2003 Free Software Foundation, Inc.

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

#include "config.h"

#if HAVE_FLOAT_H
#include <float.h>  /* for DBL_MAX */
#endif

#include "gmp.h"
#include "gmp-impl.h"

int
mpf_cmp_d (mpf_srcptr f, double d)
{
  mp_limb_t  darray[LIMBS_PER_DOUBLE];
  mpf_t      df;

  /* d=NaN has no sensible return value, so raise an exception.
     d=Inf or -Inf is always bigger than z.  */
  DOUBLE_NAN_INF_ACTION (d,
                         __gmp_invalid_operation (),
                         return (d < 0.0 ? 1 : -1));

  if (d == 0.0)
    return SIZ(f);

  PTR(df) = darray;
  SIZ(df) = (d >= 0.0 ? LIMBS_PER_DOUBLE : -LIMBS_PER_DOUBLE);
  EXP(df) = __gmp_extract_double (darray, ABS(d));

  return mpf_cmp (f, df);
}
