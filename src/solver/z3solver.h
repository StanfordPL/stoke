
#include "src/solver/smtsolver.h"
#include "src/ext/z3/include/z3++.h"

namespace stoke {

class Z3Solver : public SMTSolver {


  public:
    /** Check if a query is satisfiable given constraints */
    bool is_sat(const std::vector<SymBool*>& constraints);

    /** Check if a satisfying assignment is available. */
    bool has_model() const;
    /** Get the satisfying assignment from the model. */
    SymBitVector& get_model(const std::string& var) const;

  private:

    /* Takes a STOKE symbolic expression and translates it to a Z3 one. */
    z3::expr constraint_to_z3(const SymBitVector& constraint, z3::context& c);
    z3::expr constraint_to_z3(const SymBool& constraint, z3::context& c);
};

} //namespace stoke
