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



#include "src/symstate/bool.h"
#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

/* Bool constructors */
SymBool SymBool::_false() {
  return SymBool(new SymBoolFalse());
}

SymBool SymBool::_true() {
  return SymBool(new SymBoolTrue());
}

SymBool SymBool::ite(const SymBool t, const SymBool f) const {
  return ((*this & t) | (!(*this) & f));
}

SymBitVector SymBool::ite(const SymBitVector t, const SymBitVector f) const {
  return SymBitVector(new SymBitVectorIte(ptr, t.ptr, f.ptr));
}

SymBool SymBool::var(std::string name) {
  return SymBool(new SymBoolVar(name));
}

/* Bool Operators */
SymBool SymBool::operator&(const SymBool other) const {
  return SymBool(new SymBoolAnd(ptr, other.ptr));
}

SymBool SymBool::operator==(const SymBool other) const {
  return SymBool(new SymBoolIff(ptr, other.ptr));
}

SymBool SymBool::implies(const SymBool other) const {
  return SymBool(new SymBoolImplies(ptr, other.ptr));
}

SymBool SymBool::operator!() const {
  return SymBool(new SymBoolNot(ptr));
}

SymBool SymBool::operator|(const SymBool other) const {
  return SymBool(new SymBoolOr(ptr, other.ptr));
}

SymBool SymBool::operator^(const SymBool other) const {
  return SymBool(new SymBoolXor(ptr, other.ptr));
}

SymBool SymBool::operator!=(const SymBool other) const {
  return !(*this == other);
}

/* bool type */
SymBool::Type SymBool::type() const {
  if(ptr)
    return ptr->type();
  else
    return NONE;
}
/* equality */
bool SymBool::equals(const SymBool other) const {
  if(ptr && other.ptr)
    return ptr->equals(other.ptr);
  else
    return ptr == other.ptr;
}

/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBool& b) {
  SymPrintVisitor spv(out);
  spv(b);
  return out;
}

/* equality for SymBitVectorCompares */
bool SymBoolCompare::equals(const SymBoolAbstract * const other) const {
  if(type() != other->type()) return false;
  auto cast = static_cast<const SymBoolCompare * const>(other);
  return a_->equals(cast->a_) && b_->equals(cast->b_);
}
