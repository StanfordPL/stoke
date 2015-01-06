// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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



#include "src/symstate/bitvector.h"
#include "src/symstate/function.h"

using namespace stoke;

/** Constructs a bitvector corresponding to an arity-1 function application */
SymBitVector SymFunction::operator()(SymBitVector a1) const {
  return SymBitVector(new SymBitVectorFunction(*this, a1.ptr));
}
/** Constructs a bitvector corresponding to an arity-2 function application */
SymBitVector SymFunction::operator()(SymBitVector a1, SymBitVector a2) const {
  return SymBitVector(new SymBitVectorFunction(*this, a1.ptr, a2.ptr));
}
/** Constructs a bitvector corresponding to an arity-3 function application */
SymBitVector SymFunction::operator()(SymBitVector a1, SymBitVector a2, SymBitVector a3) const {
  return SymBitVector(new SymBitVectorFunction(*this, a1.ptr, a2.ptr, a3.ptr));
}


