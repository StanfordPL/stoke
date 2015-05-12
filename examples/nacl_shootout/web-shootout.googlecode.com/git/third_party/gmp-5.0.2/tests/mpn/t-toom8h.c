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

#define mpn_toomMN_mul mpn_toom8h_mul
#define mpn_toomMN_mul_itch mpn_toom8h_mul_itch

/* Smaller sizes not supported; may lead to recursive calls to
   toom{22,33,44,6h}_mul with invalid input size. */
#define MIN_AN MUL_TOOM8H_THRESHOLD

#if GMP_NUMB_BITS <= 10*3
#define MIN_BN(an) (MAX ((an*6)/10, 86) )
#else
#if GMP_NUMB_BITS <= 11*3
#define MIN_BN(an) (MAX ((an*5)/11, 86) )
#else
#if GMP_NUMB_BITS <= 12*3
#define MIN_BN(an) (MAX ((an*4)/12, 86) )
#else
#define MIN_BN(an) (MAX ((an*4)/13, 86) )
#endif
#endif
#endif

#include "toom-shared.h"
