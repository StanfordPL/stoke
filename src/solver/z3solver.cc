
#include <iostream>

#include "src/ext/z3/include/z3++.h"
#include "src/solver/z3solver.h"
#include "src/symstate/bitvector.h"

using namespace stoke;
using namespace z3;
using namespace std;


bool Z3Solver::is_sat(const vector<SymBool*>& constraints) {

  /* Context for Z3 solver */
  context c;
  solver s(c);

  /* Convert constraints and query to z3 object */
  for(auto it : constraints) {
    //s.add(constraint_to_z3(*it, c));
  }

  /* Run the solver and see */
  switch (s.check()) {
    case unsat:
      return false;
    case sat:
      return true;
    case unknown:
      return false;
  }
}

bool Z3Solver::has_model() const {
  return false;
}

SymBitVector& Z3Solver::get_model(const std::string& var) const {
  return *(new SymBitVectorConstant(1, 0));
}


