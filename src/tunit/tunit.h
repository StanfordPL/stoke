// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_TUNIT_TUNIT_H
#define STOKE_SRC_TUNIT_TUNIT_H

#include <iostream>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct TUnit {
  /** The name of the function in this translation unit. */
  std::string name;
  /** The text of the function in this translation unit. */
  x64asm::Code code;
};

std::istream& operator>>(std::istream& is, TUnit& t);
std::ostream& operator<<(std::ostream& os, const TUnit& t);

} // namespace stoke

#endif
