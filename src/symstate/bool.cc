

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

SymBool SymBool::var(std::string name) {
  return SymBool(new SymBoolVar(name));
}

SymBool SymBool::z3(const z3::expr& e) {
  return SymBool(new SymBoolZ3(e));
}

/* Bool Operators */
SymBool SymBool::operator&(const SymBool& other) const {
  return SymBool(new SymBoolAnd(ptr, other.ptr));
}

SymBool SymBool::operator==(const SymBool& other) const {
  return SymBool(new SymBoolIff(ptr, other.ptr));
}

SymBool SymBool::implies(const SymBool& other) const {
  return SymBool(new SymBoolImplies(ptr, other.ptr));
}

SymBool SymBool::operator!() const {
  return SymBool(new SymBoolNot(ptr));
}

SymBool SymBool::operator|(const SymBool& other) const {
  return SymBool(new SymBoolOr(ptr, other.ptr));
}

SymBool SymBool::operator^(const SymBool& other) const {
  return SymBool(new SymBoolXor(ptr, other.ptr));
}

SymBool SymBool::operator!=(const SymBool& other) const {
  return !(*this == other);
}

/* Bit vector type */
SymBool::Type SymBool::type() const { 
  if(ptr)
    return ptr->type();
  else
    return NONE;
}

/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBool& b) {
  SymPrintVisitor spv(out);
  spv(b);
  return out;
}


