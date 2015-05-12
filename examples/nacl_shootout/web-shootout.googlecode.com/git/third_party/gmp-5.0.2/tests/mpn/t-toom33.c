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

#define mpn_toomMN_mul mpn_toom33_mul
#define mpn_toomMN_mul_itch mpn_toom33_mul_itch

/* Smaller sizes not supported; may lead to recursive calls to
   toom22_mul with invalid input size. */
#define MIN_AN MUL_TOOM33_THRESHOLD
#define MIN_BN(an) (1 + 2*(((an)+2)/(size_t) 3))

#define COUNT 1000

#include "toom-shared.h"
