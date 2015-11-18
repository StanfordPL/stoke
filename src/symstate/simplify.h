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

#ifndef STOKE_SRC_SYMSTATE_SIMPLIFY_H
#define STOKE_SRC_SYMSTATE_SIMPLIFY_H

#include "src/symstate/bitvector.h"
#include "src/symstate/bool.h"

namespace stoke {

class SymSimplify {
public:
  /** Simplify a given bit vector */
  SymBitVector simplify(const SymBitVector& b);
  /** Simplify a given bool */
  SymBool simplify(const SymBool& b);

  /** Constructions a new simplifier.  Any node sharing will be preserved for all circuits simplified with this simplifier. */
  SymSimplify() {}

private:
  /** Simplification cache for bools. */
  std::map<SymBoolAbstract*, SymBoolAbstract*> cache_bool1_;
  std::map<SymBoolAbstract*, SymBoolAbstract*> cache_bool2_;
  std::map<SymBoolAbstract*, SymBoolAbstract*> cache_bool3_;
  /** Simplification cache for bitvectors. */
  std::map<SymBitVectorAbstract*, SymBitVectorAbstract*> cache_bits1_;
  std::map<SymBitVectorAbstract*, SymBitVectorAbstract*> cache_bits2_;
  std::map<SymBitVectorAbstract*, SymBitVectorAbstract*> cache_bits3_;
};

} // namespace stoke

#endif
