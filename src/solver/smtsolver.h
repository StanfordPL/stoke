
#include <vector>

#include "src/symstate/bitvector.h"

namespace stoke {

class SMTSolver {

  public:

    /** Check if a query is satisfiable given constraints */
    virtual bool is_sat(const std::vector<SymBool*>& constraints) = 0;

    /** Check if the last query trivvered an error. */
    virtual bool has_error() {
      return error_.size() > 0;
    }
    /** Report the last encountered error. */
    virtual std::string get_error() {
      return error_;
    }

    /** Check if a satisfying assignment is available. */
    virtual bool has_model() const = 0;
    /** Get the satisfying assignment from the model. */
    virtual SymBitVector& get_model(const std::string& var) const = 0;


    /** Set the maximum time to spend solving */
    virtual SMTSolver& set_timeout(uint64_t ms) {
      timeout_ = ms;
      return *this;
    }

  private:

    /** Used to set the timeout before invoking solver */
    uint64_t timeout_;
    /** Current error message */
    std::string error_;

};

} //namespace stoke
