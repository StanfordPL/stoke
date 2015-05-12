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

/* Noop routines.

   These are in a separate file to stop gcc recognising do-nothing functions
   and optimizing away calls to them.  */

/*
Copyright 1999, 2000 Free Software Foundation, Inc.

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

#include "speed.h"


void
noop (void)
{
}

/*ARGSUSED*/
void
noop_1 (mp_limb_t n)
{
}

/*ARGSUSED*/
void
noop_wxs (mp_ptr wp, mp_srcptr xp, mp_size_t size)
{
}

/*ARGSUSED*/
void
noop_wxys (mp_ptr wp, mp_srcptr xp, mp_srcptr yp, mp_size_t size)
{
}

/*ARGSUSED*/
void
mpn_cache_fill_dummy (mp_limb_t n)
{
}
