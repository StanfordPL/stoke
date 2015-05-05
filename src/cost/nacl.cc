// Copyright 2013-2015 Stanford University
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

#include "src/cost/nacl.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;


namespace stoke {

/** Evaluate a rewrite. This method may shortcircuit and return max as soon as its
  result would equal or exceed that value. */
NaClCost::result_type NaClCost::operator()(const Cfg& cfg, const Cost max) {

  return result_type(true, 1);
}

} // namespace stoke
