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

/* Prototypes etc for calc program.

Copyright 2001 Free Software Foundation, Inc.

This file is part of the GNU MP Library.

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see http://www.gnu.org/licenses/.  */

#include <stddef.h>  /* for size_t */
#ifndef NO_CALC_H
#include "calc.h"
#endif
#include "calc-config.h"

struct calc_keywords_t {
  char  *name;
  int   value;
};

extern int  calc_option_readline;
extern int  calc_more_input;
extern const struct calc_keywords_t  calc_keywords[];

int calc_input (char *buf, size_t max_size);
void calc_init_readline (void);
