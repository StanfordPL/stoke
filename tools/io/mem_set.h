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

#ifndef STOKE_TOOLS_IO_MEM_SET_H
#define STOKE_TOOLS_IO_MEM_SET_H

#include <set>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct MemSetReader {
  void operator()(std::istream& is, std::set<x64asm::M8>& ms);
};

struct MemSetWriter {
  void operator()(std::ostream& os, const std::set<x64asm::M8>& ms);
};

} // namespace stoke

#endif
