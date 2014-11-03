
#ifndef _STOKE_SRC_SOLVER_Z3SOLVER_H
#define _STOKE_SRC_SOLVER_Z3SOLVER_H

#include <map>

#include "src/ext/z3/include/z3++.h"
#include "src/solver/smtsolver.h"
#include "src/symstate/bitvector.h"

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

    class ExprConverter : public SymVisitor<z3::expr> {

      public:
        ExprConverter(z3::context& cntx) : context_(cntx) {}

        // The following is for debugging the Z3 driver.
        /*
        z3::expr operator()(const SymBitVector& bv) {
          SymPrintVisitor spv(std::cout);
          std::cout << "Visiting ";
          spv(bv);
          std::cout << std::endl;
          return SymVisitor<z3::expr>::operator()(bv);
        }

        z3::expr operator()(const SymBool& b) {
          SymPrintVisitor spv(std::cout);
          std::cout << "Visiting ";
          spv(b);
          std::cout << std::endl;
          return SymVisitor<z3::expr>::operator()(b);
        }
        */

        /** Visit a bit-vector AND */
        z3::expr visit(const SymBitVectorAnd& bv);
        /** Visit a bit-vector concatenation */
        z3::expr visit(const SymBitVectorConcat& bv);
        /** Visit a bit-vector constant */
        z3::expr visit(const SymBitVectorConstant& bv);
        /** Visit a bit-vector extract */
        z3::expr visit(const SymBitVectorExtract& bv);
        /** Visit a bit-vector if-then-else */
        z3::expr visit(const SymBitVectorIte& bv);
        /** Visit a bit-vector NOT */
        z3::expr visit(const SymBitVectorNot& bv);
        /** Visit a bit-vector OR */
        z3::expr visit(const SymBitVectorOr& bv);
        /** Visit a bit-vector plus */
        z3::expr visit(const SymBitVectorPlus& bv);
        /** Visit a bit-vector shift-left */
        z3::expr visit(const SymBitVectorShiftLeft& bv);
        /** Visit a bit-vector shift-right */
        z3::expr visit(const SymBitVectorShiftRight& bv);
        /** Visit a bit-vector variable */
        z3::expr visit(const SymBitVectorVar& bv);
        /** Visit a bit-vector XOR */
        z3::expr visit(const SymBitVectorXor& bv);

        /** Visit a bit-vector EQ */
        z3::expr visit(const SymBoolEq& b);
        
        /** Visit a boolean AND */
        z3::expr visit(const SymBoolAnd& b);
        /** Visit a boolean FALSE */
        z3::expr visit(const SymBoolFalse& b);
        /** Visit a boolean IFF */
        z3::expr visit(const SymBoolIff& b);
        /** Visit a boolean implies */
        z3::expr visit(const SymBoolImplies& b);
        /** Visit a boolean NOT */
        z3::expr visit(const SymBoolNot& b);
        /** Visit a boolean OR */
        z3::expr visit(const SymBoolOr& b);
        /** Visit a boolean TRUE */
        z3::expr visit(const SymBoolTrue& b);
        /** Visit a boolean VAR */
        z3::expr visit(const SymBoolVar& b);
        /** Visit a boolean XOR */
        z3::expr visit(const SymBoolXor& b);

      private:

        z3::symbol get_symbol(std::string s) {
          return context_.str_symbol(s.c_str());
        }

        z3::context& context_;
    };
};

} //namespace stoke

#endif
