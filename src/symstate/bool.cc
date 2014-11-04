

#include "src/symstate/bool.h"
#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

/* Bool constructors */
SymBoolFalse& SymBool::_false() {
  return *(new SymBoolFalse());
}

SymBoolTrue& SymBool::_true() {
  return *(new SymBoolTrue());
}

SymBoolVar& SymBool::var(std::string name) {
  return *(new SymBoolVar(name));
}

/* Bool Operators */
SymBoolAnd& SymBool::operator&(const SymBool& other) const {
  return *(new SymBoolAnd(*this, other));
}

SymBoolIff& SymBool::operator==(const SymBool& other) const {
  return *(new SymBoolIff(*this, other));
}

SymBoolImplies& SymBool::implies(const SymBool& other) const {
  return *(new SymBoolImplies(*this, other));
}

SymBoolNot& SymBool::operator!() const {
  return *(new SymBoolNot(*this));
}

SymBoolOr& SymBool::operator|(const SymBool& other) const {
  return *(new SymBoolOr(*this, other));
}

SymBoolXor& SymBool::operator^(const SymBool& other) const {
  return *(new SymBoolXor(*this, other));
}

SymBoolNot& SymBool::operator!=(const SymBool& other) const {
  return !(*this == other);
}

/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBool& b) {
  SymPrintVisitor spv(out);
  spv(b);
  return out;
}
