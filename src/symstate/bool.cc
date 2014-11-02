

#include "src/symstate/bool.h"

using namespace std;
using namespace stoke;

/* Bool Operators */
SymBoolAnd& SymBool::operator&(const SymBool& other) const {
  return *(new SymBoolAnd(*this, other));
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

/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBool& b) {
  //bv.write_text(out);
  return out;
}
