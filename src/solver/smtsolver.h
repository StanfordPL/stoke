
#ifndef _STOKE_SRC_SOLVER_SMTSOLVER_H
#define _STOKE_SRC_SOLVER_SMTSOLVER_H

#include <vector>

#include "src/symstate/bitvector.h"
#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class SMTSolver {

  public:

    /* Resets the state common to SMT solvers */
    SMTSolver() {
      timeout_ = 0;
      error_ = "";
    }

    /** Set the maximum time to spend solving */
    virtual SMTSolver& set_timeout(uint64_t ms) {
      timeout_ = ms;
      return *this;
    }

    /** Check if a query is satisfiable given constraints */
    virtual bool is_sat(const std::vector<SymBool>& constraints) = 0;

    /** Check if a satisfying assignment is available. */
    virtual bool has_model() const = 0;
    /** Get the satisfying assignment for a bit-vector from the model. 
        For now, one must specify the expected number of octwords. */
    virtual cpputil::BitVector get_model_bv(const std::string& var, uint16_t octs) = 0;
    /** Get the satisfying assignment for a bit from the model. */
    virtual bool get_model_bool(const std::string& var) = 0;


    /** Check if the last query trivvered an error. */
    virtual bool has_error() {
      return error_.size() > 0;
    }
    /** Report the last encountered error. */
    virtual std::string get_error() {
      return error_;
    }


  protected:

    /** Used to set the timeout before invoking solver */
    uint64_t timeout_;
    /** Current error message */
    std::string error_;

};

} //namespace stoke

#endif
