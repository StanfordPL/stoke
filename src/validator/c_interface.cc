#include "c_interface.h"
#include <iostream>
using namespace std;
using namespace z3;
  void vc_setInterfaceFlags(VC vc, enum ifaceflag_t f, int param_value){}

  // defines division by zero to equal 1, x%0 to equal x.
  // avoids division by zero errors.
  void make_division_total(VC vc){}

  //! Flags can be NULL
  VC vc_createValidityChecker(void)
  {
    //RS: Creating a memory leak?
    return new context();
    
  }

  // Basic types
  Type vc_boolType(VC vc){return vc->bool_sort();}

  //! Create an array type
  //Type vc_arrayType(VC vc, Type typeIndex, Type typeData){return 0;}

  /////////////////////////////////////////////////////////////////////////////
  // Expr manipulation methods                                               //
  /////////////////////////////////////////////////////////////////////////////

  //! Create a variable with a given name and type
  /*! The type cannot be a function type. The var name can contain
    only variables, numerals and underscore. If you use any other
    symbol, you will get a segfault. */
  Expr vc_varExpr(VC vc, const char * name, Type type){return vc->constant(name,type);}

  //The var name can contain only variables, numerals and
  //underscore. If you use any other symbol, you will get a segfault.
  //Expr vc_varExpr1(VC vc, const char* name,                   int indexwidth, int valuewidth){return 0;}


  //! Get the type of the Expr.
  //Type vc_getType(VC vc, Expr e){return 0;}

  int vc_getBVLength(VC vc, Expr e){return 0;}

  //! Create an equality expression.  The two children must have the same type.
   Expr vc_eqExpr(VC vc, Expr child0, Expr child1){return child0==child1;}

  // Boolean expressions

  // The following functions create Boolean expressions.  The children
  // provided as arguments must be of type Boolean (except for the
  // function vc_iteExpr(). In the case of vc_iteExpr() the
  // conditional must always be Boolean, but the ifthenpart
  // (resp. elsepart) can be bit-vector or Boolean type. But, the
  // ifthenpart and elsepart must be both of the same type)
  Expr vc_trueExpr(VC vc){return vc->bool_val(true);}
  Expr vc_falseExpr(VC vc){return vc->bool_val(false);}
  Expr vc_notExpr(VC vc, Expr child){return !child;}
  Expr vc_andExpr(VC vc, Expr left, Expr right){return left && right;}
  //Expr vc_andExprN(VC vc, Expr* children, int numOfChildNodes){return 0;}
  Expr vc_orExpr(VC vc, Expr left, Expr right){return left||right;}
  Expr vc_xorExpr(VC vc, Expr left, Expr right){return left!=right;}
  //Expr vc_orExprN(VC vc, Expr* children, int numOfChildNodes){return 0;}
  Expr vc_impliesExpr(VC vc, Expr hyp, Expr conc){return implies(hyp,conc);}
  Expr vc_iffExpr(VC vc, Expr left, Expr right){return left==right;}
  //The output type of vc_iteExpr can be Boolean (formula-level ite)
  //or bit-vector (word-level ite)
  Expr vc_iteExpr(VC vc, Expr conditional, Expr ifthenpart, Expr elsepart){return to_expr(*vc, Z3_mk_ite(*vc, conditional, ifthenpart,elsepart)) ;}

  //Boolean to single bit BV Expression
  Expr vc_boolToBVExpr(VC vc, Expr form){return vc_iteExpr(vc, vc_iffExpr(vc, form, vc_trueExpr(vc)), vc->bv_val(1,1), vc->bv_val(1,0) );}

  //Parameterized Boolean Expression (PARAMBOOL, Boolean_Var, parameter)
  //Expr vc_paramBoolExpr(VC vc, Expr var, Expr param){return 0;}

  // Arrays

  //! Create an expression for the value of array at the given index
  //Expr vc_readExpr(VC vc, Expr array, Expr index){return 0;}

  //! Array update; equivalent to "array WITH [index] := newValue"
  //Expr vc_writeExpr(VC vc, Expr array, Expr index, Expr newValue){return 0;}

  // Expr I/O: Parses directly from file in the c_interface. pretty cool!!
  //Expr vc_parseExpr(VC vc, const char* s){return 0;}

  //! Prints 'e' to stdout.
  void vc_printExpr(VC vc, Expr e){
#ifdef DEBUG_VALIDATOR
    std::cout << e ;
#endif
  }

  //! Prints 'e' to stdout as C code
  void vc_printExprCCode(VC vc, Expr e){}

  //! print in smtlib format
  char * vc_printSMTLIB(VC vc, Expr e){return 0;}

  //! Prints 'e' into an open file descriptor 'fd'
  void vc_printExprFile(VC vc, Expr e, int fd){}

  //! Prints state of 'vc' into malloc'd buffer '*buf' and stores the
  //  length into '*len'.  It is the responsibility of the caller to
  //  free the buffer.
  //void vc_printStateToBuffer(VC vc, char **buf, unsigned long *len);

  //! Prints 'e' to malloc'd buffer '*buf'.  Sets '*len' to the length of
  //  the buffer. It is the responsibility of the caller to free the buffer.
  void vc_printExprToBuffer(VC vc, Expr e, char **buf, unsigned long * len){}

  //! Prints counterexample to stdout.
  void vc_printCounterExample(VC vc){}

  //! Prints variable declarations to stdout.
  void vc_printVarDecls(VC vc){}

  //! Clear the internal list of variables to declare maintained for
  //  vc_printVarDecls. Do this after you've printed them, or if you
  //  never want to print them, to prevent a memory leak.
  void vc_clearDecls(VC vc){}

  //! Prints asserts to stdout. The flag simplify_print must be set to
  //"1" if you wish simplification to occur dring printing. It must be
  //set to "0" otherwise
  void vc_printAsserts(VC vc, int simplify_print){}

  //! Prints the state of the query to malloc'd buffer '*buf' and
  //stores ! the length of the buffer to '*len'.  It is the
  //responsibility of the caller to free the buffer. The flag
  //simplify_print must be set to "1" if you wish simplification to
  //occur dring printing. It must be set to "0" otherwise
  void vc_printQueryStateToBuffer(VC vc, Expr e,
                                  char **buf, unsigned long *len, int simplify_print){}

  //! Similar to vc_printQueryStateToBuffer()
  void vc_printCounterExampleToBuffer(VC vc, char **buf,unsigned long *len){}

  //! Prints query to stdout.
  void vc_printQuery(VC vc){}

  /////////////////////////////////////////////////////////////////////////////
  // Context-related methods                                                 //
  /////////////////////////////////////////////////////////////////////////////

  //! Assert a new formula in the current context.
  /*! The formula must have Boolean type. */
  void vc_assertFormula(VC vc, Expr e){}

  //! Simplify e with respect to the current context
  //Expr vc_simplify(VC vc, Expr e){return 0;}

  //! Check validity of e in the current context. e must be a FORMULA
  //returns 0 -> the input is INVALID
  //returns 1 -> the input is VALID
  //returns 2 -> then ERROR
  //returns 3 -> then TIMEOUT

  // NB. The timeout is a soft timeout, use the -g flag for a hard timeout that
  // will abort automatically. The soft timeout is checked sometimes in the code,
  // and if the time has passed, then "timeout" will be returned. It's only checked
  // sometimes though, so the actual timeout may be larger. Cryptominisat doesn't check
  // the timeout yet..

  // The C-language doesn't allow default arguments, so to get it compiling, I've split
  // it into two functions.
  int vc_query_with_timeout(VC vc, Expr e, int timeout_ms){return 0;}
  int vc_query(VC vc, Expr e){return 0;}


  //! Return the counterexample after a failed query.
  //Expr vc_getCounterExample(VC vc, Expr e){return 0;}

  //! Return an array from a counterexample after a failed query.
  void vc_getCounterExampleArray(VC vc, Expr e, Expr **indices, Expr **values, int *size){}
    
  //! get size of counterexample, i.e. the number of variables/array
  //locations in the counterexample.
  int vc_counterexample_size(VC vc){return 0;}

  //! Checkpoint the current context and increase the scope level
  void vc_push(VC vc){}

  //! Restore the current context to its state at the last checkpoint
  void vc_pop(VC vc){}

  //! Return an int from a constant bitvector expression
  int getBVInt(Expr e){return 0/*to_expr(*vc, Z3_mk_bv2int(*vc, conditional, e, true))*/;}
  //! Return an unsigned int from a constant bitvector expression
  unsigned int getBVUnsigned(Expr e){return 0/*to_expr(*vc, Z3_mk_bv2int(*vc, e, false))*/;}
  //! Return an unsigned long long int from a constant bitvector expressions
  unsigned long long int getBVUnsignedLongLong(Expr e){return 0/*to_expr(*vc, Z3_mk_bv2int(*vc, e, false))*/;}

  /**************************/
  /* BIT VECTOR OPERATIONS  */
  /**************************/
  Type vc_bvType(VC vc, int no_bits){return vc->bv_sort(no_bits);}
  //Type vc_bv32Type(VC vc){return 0;}

  //Expr vc_bvConstExprFromDecStr(VC vc, int width, const char* decimalInput ){return 0;}
  //Expr vc_bvConstExprFromStr(VC vc, const char* binary_repr){return 0;}
  Expr vc_bvConstExprFromInt(VC vc, int n_bits, unsigned int value){return vc->bv_val(value,n_bits);}
  Expr vc_bvConstExprFromLL(VC vc, int n_bits, unsigned long long value){return vc->bv_val(((long long unsigned int)value),n_bits);}
  Expr vc_bv32ConstExprFromInt(VC vc, unsigned int value){return vc->bv_val(value,32);}

  Expr vc_bvConcatExpr(VC vc, Expr left, Expr right){return to_expr(*vc, Z3_mk_concat(*vc, left, right));}
  Expr vc_bvPlusExpr(VC vc, int n_bits, Expr left, Expr right){return left+right;}
  //Expr vc_bvPlusExprN(VC vc, int n_bits, Expr* children, int numOfChildNodes){return 0;}
  //Expr vc_bv32PlusExpr(VC vc, Expr left, Expr right){return 0;}
  Expr vc_bvMinusExpr(VC vc, int n_bits, Expr left, Expr right){return left-right;}
  //Expr vc_bv32MinusExpr(VC vc, Expr left, Expr right){return 0;}
  Expr vc_bvMultExpr(VC vc, int n_bits, Expr left, Expr right){return left*right;}
  //Expr vc_bv32MultExpr(VC vc, Expr left, Expr right){return 0;}
  // left divided by right i.e. left/right
  Expr vc_bvDivExpr(VC vc, int n_bits, Expr left, Expr right){return udiv(left,right);}
  // left modulo right i.e. left%right
  Expr vc_bvModExpr(VC vc, int n_bits, Expr left, Expr right){return to_expr(*vc, Z3_mk_bvurem(*vc, left, right));}
  // signed left divided by right i.e. left/right
  Expr vc_sbvDivExpr(VC vc, int n_bits, Expr left, Expr right){return left/right;}
  // signed left modulo right i.e. left%right
  Expr vc_sbvModExpr(VC vc, int n_bits, Expr left, Expr right){return to_expr(*vc, Z3_mk_bvsrem(*vc, left, right));}
  //Expr vc_sbvRemExpr(VC vc, int n_bits, Expr left, Expr right){return 0;}

  Expr vc_bvLtExpr(VC vc, Expr left, Expr right){return ult(left,right);}
  Expr vc_bvLeExpr(VC vc, Expr left, Expr right){return ule(left,right);}
  Expr vc_bvGtExpr(VC vc, Expr left, Expr right){return ugt(left,right);}
  Expr vc_bvGeExpr(VC vc, Expr left, Expr right){return uge(left,right);}

  Expr vc_sbvLtExpr(VC vc, Expr left, Expr right){return left<right;}
  Expr vc_sbvLeExpr(VC vc, Expr left, Expr right){ return left<=right;;}
  Expr vc_sbvGtExpr(VC vc, Expr left, Expr right){return left>right;}
  Expr vc_sbvGeExpr(VC vc, Expr left, Expr right){return left>=right;}

  Expr vc_bvUMinusExpr(VC vc, Expr child){return -child;}

  // bitwise operations: these are terms not formulas
  Expr vc_bvAndExpr(VC vc, Expr left, Expr right){return left & right;}
  Expr vc_bvOrExpr(VC vc, Expr left, Expr right){return left | right;}
  Expr vc_bvXorExpr(VC vc, Expr left, Expr right){return left^right;}
  Expr vc_bvNotExpr(VC vc, Expr child){return ~child;}

  // Shift an expression by another expression. This is newstyle.
  Expr vc_bvLeftShiftExprExpr(VC vc, int n_bits, Expr left, Expr right){return to_expr(*vc, Z3_mk_bvshl(*vc, left, right));}
  Expr vc_bvRightShiftExprExpr(VC vc, int n_bits,  Expr left, Expr right){return to_expr(*vc, Z3_mk_bvlshr(*vc, left, right));}
  Expr vc_bvSignedRightShiftExprExpr(VC vc, int n_bits, Expr left, Expr right){return to_expr(*vc, Z3_mk_bvashr(*vc, left, right));}

  // These shifts are old-style. Kept for compatability---oldstyle.
  //Expr vc_bvLeftShiftExpr(VC vc, int sh_amt, Expr child){return to_expr(*vc, Z3_mk_bvshl(*vc, left, right));}
  //Expr vc_bvRightShiftExpr(VC vc, int sh_amt, Expr child){return 0;}
  /* Same as vc_bvLeftShift only that the answer in 32 bits long */
  //Expr vc_bv32LeftShiftExpr(VC vc, int sh_amt, Expr child){return 0;}
  /* Same as vc_bvRightShift only that the answer in 32 bits long */
  //Expr vc_bv32RightShiftExpr(VC vc, int sh_amt, Expr child){return 0;}
  //Expr vc_bvVar32LeftShiftExpr(VC vc, Expr sh_amt, Expr child){return 0;}
  //Expr vc_bvVar32RightShiftExpr(VC vc, Expr sh_amt, Expr child){return 0;}
  //Expr vc_bvVar32DivByPowOfTwoExpr(VC vc, Expr child, Expr rhs){return 0;}

  Expr vc_bvExtract(VC vc, Expr child, int high_bit_no, int low_bit_no){return to_expr(*vc, Z3_mk_extract(*vc, high_bit_no, low_bit_no, child));}

  //accepts a bitvector and position, and returns a boolean
  //corresponding to that position. More precisely, it return the
  //equation (x[bit_no:bit_no] == 0)
  Expr vc_bvBoolExtract(VC vc, Expr x, int bit_no){return vc_bvExtract(vc, x, bit_no, bit_no)==vc->bv_val(0,1);}
  Expr vc_bvBoolExtract_Zero(VC vc, Expr x, int bit_no){return vc_bvExtract(vc, x, bit_no, bit_no)==vc->bv_val(0,1);}

  //accepts a bitvector and position, and returns a boolean
  //corresponding to that position. More precisely, it return the
  //equation (x[bit_no:bit_no] == 1)
  Expr vc_bvBoolExtract_One(VC vc, Expr x, int bit_no){return vc_bvExtract(vc, x, bit_no, bit_no)==vc->bv_val(1,1);}
  Expr vc_bvSignExtend(VC vc, Expr child, int nbits){return to_expr(*vc, Z3_mk_sign_ext(*vc, nbits-child.get_sort().bv_size(), child));} 

  /*C pointer support:  C interface to support C memory arrays in CVCL */
  //Expr vc_bvCreateMemoryArray(VC vc, const char * arrayName){return 0;}
  //Expr vc_bvReadMemoryArray(VC vc,                            Expr array, Expr byteIndex, int numOfBytes){return 0;}
  //Expr vc_bvWriteToMemoryArray(VC vc,                               Expr array, Expr  byteIndex,                               Expr element, int numOfBytes){return 0;}


  // return a string representation of the Expr e. The caller is responsible
  // for deallocating the string with free()
  char* exprString(Expr e){return 0;}

  // return a string representation of the Type t. The caller is responsible
  // for deallocating the string with free()
  char* typeString(Type t){return 0;}

  //Expr getChild(Expr e, int i){return 0;}

  //1.if input expr is TRUE then the function returns 1{return 0;}
  //
  //2.if input expr is FALSE then function returns 0;
  //
  //3.otherwise the function returns -1
  int vc_isBool(Expr e){return 0;}

  /* Register the given error handler to be called for each fatal error.*/
  void vc_registerErrorHandler(void (*error_hdlr)(const char* err_msg)){}

  int vc_getHashQueryStateToBuffer(VC vc, Expr query){return 0;}

  //destroys the STP instance, and removes all the created expressions
  void vc_Destroy(VC vc){}

  //deletes the expression e
  void vc_DeleteExpr(Expr e){}

  //Get the whole counterexample from the current context
  //WholeCounterExample vc_getWholeCounterExample(VC vc){return 0;}

  //Get the value of a term expression from the CounterExample
  //Expr vc_getTermFromCounterExample(VC vc, Expr e, WholeCounterExample c){return 0;}


  // Free the return value of vc_getWholeCounterExample
  void vc_deleteWholeCounterExample(WholeCounterExample cc){}


  // get the number of children nodes
  int getDegree (Expr e){return 0;}

  // get the bv length
  int getBVLength(Expr e){return 0;}

  // get expression type


  // get value bit width
  int getVWidth (Expr e){return 0;}

  // get index bit width
  int getIWidth (Expr e){return 0;}

  // Prints counterexample to an open file descriptor 'fd'
  void vc_printCounterExampleFile(VC vc, int fd){}

  // get name of expression. must be a variable.
  const char* exprName(Expr e){return 0;}

  // get the node ID of an Expr.
  int getExprID (Expr ex){return 0;}

  // parse the expr from memory string!
  int vc_parseMemExpr(VC vc, const char* s, Expr* oquery, Expr* oasserts ){return 0;}
