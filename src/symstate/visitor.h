

/** This abstract class is used to visit SymBitVector and SymBool classes to
 * perform operations on the AST.  To use, implement a subclass. */
template <typename T>
class SymVisitor {

  public:
    /* Visit a symbolic bit vector */
    T operator()(SymBitVector& bv);
    /* Visit a symbolic bool */
    T operator()(SymBool& b);

    /* Visit a bit-vector AND */
    virtual T visit(SymBitVectorAnd& bv) = 0;
    /* Visit a bit-vector concatenation */
    virtual T visit(SymBitVectorConcat& bv) = 0;
    /* Visit a bit-vector extract */
    virtual T visit(SymBitVectorExtract& bv) = 0;
    /* Visit a bit-vector NOT */
    virtual T visit(SymBitVectorNot& bv) = 0;
    /* Visit a bit-vector OR */
    virtual T visit(SymBitVectorOr& bv) = 0;
    /* Visit a bit-vector XOR */
    virtual T visit(SymBitVectorXor& bv) = 0;

    /* Visit a bit-vector EQ */
    virtual T visit(SymBitVectorEq& eq) = 0;
    
    /* Visit a boolean AND */
    virtual T visit(SymBoolAnd& b) = 0;
    /* Visit a boolean NOT */
    virtual T visit(SymBoolNot& b) = 0;
    /* Visit a boolean IFF */
    virtual T visit(SymBoolIff& b) = 0;
    /* Visit a boolean OR */
    virtual T visit(SymBoolOr& b) = 0;
    /* Visit a boolean XOR */
    virtual T visit(SymBoolXor& b) = 0;

};
