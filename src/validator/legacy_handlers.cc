
#include <sstream>

#include "src/validator/legacy_handlers.h"
#include "src/validator/switch.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


#ifdef DEBUG_VALIDATOR
#define ADD_CONS(s) {cout << "Adding constraint: " << endl << s << endl;}
#else
#define ADD_CONS(S)
#endif


#include "src/validator/helpers.cc"

//Add with carry. Promote arguments to bitWidth+2 (66 from 64) bits, do the additions, and set the flags.
//If the destination register is not 64 bit then model the effects on the rest of the parent register of the destination register.
//E_dest, E_src1, E_src2 all have the same bitWidth
void adcHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {



  //This contains n+2 bit result.
  auto E_result = SymBitVector::var(bitWidth+2, ("ADCTEMP"+d.pre_suffix+itoa(d.instr_no)).c_str());

  //Promote arguments to n bits
  auto E_arg1 = SymBitVector::constant(2, 0) || E_src1;
  auto E_arg2 = SymBitVector::constant(2, 0) || E_src2;

  //Get a bitWidth+2 bitvector with the lsb as carry
  auto E_carry = SymBitVector::var(bitWidth+2, ("CARRY"+d.pre_suffix+itoa(d.instr_no)).c_str());
  SymBool retval = (SymBool)(E_carry)[0] == getBoolExpr(V_CF, d.pre_suffix, d.Vn);
  retval = retval & vc_eqExpr((E_carry)[bitWidth+1][1],  SymBitVector::constant(1, 0) || SymBitVector::constant(bitWidth, 0));

  //E_src1 + E_src2 + Carry
  retval = retval & vc_eqExpr(E_result,vc_bvPlusExpr(bitWidth+2, vc_bvPlusExpr(bitWidth+2, E_arg1, E_arg2), E_carry));
  retval = retval & E_dest == (E_result)[bitWidth-1][0];

  //Handle effects on parent register
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }

  //Push the constraints
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);

  //Set flags accordingly
  setFlag(d.Vnprime, V_OF, getOFExpr((E_arg1)[bitWidth - 1], (E_arg2)[bitWidth - 1],
                                     (E_result)[bitWidth - 1]), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, (E_result)[bitWidth] | (E_result)[bitWidth+1], d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}

void addHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {



  /* add the first four bits together of each source to set AF flag if needed */
  string aux_name = string("ADDTEMP_AUX") + d.pre_suffix + to_string(d.instr_no);

  auto auxiliary = SymBitVector::var(5, aux_name.c_str());
  SymBool set_aux_to_sum = vc_eqExpr(auxiliary,
                                     vc_bvPlusExpr(5,
                                         SymBitVector::constant(1, 0) || (E_src1)[3][0],
                                         SymBitVector::constant(1, 0) || (E_src2)[3][0])
                                    );
  d.constraints.push_back(set_aux_to_sum);


  /* Do the addition */
  auto E_result = SymBitVector::var(bitWidth+2, "ADDTEMP"+d.pre_suffix+to_string(d.instr_no));

  auto E_arg1 = SymBitVector::constant(2, 0) || E_src1;
  auto E_arg2 = SymBitVector::constant(2, 0) || E_src2;

  SymBool retval = SymBool::_true();
  retval = retval & vc_eqExpr(E_result, vc_bvPlusExpr(bitWidth+2, E_arg1, E_arg2));
  retval = retval & E_dest == (E_result)[bitWidth-1][0];

  /* Set unchanged bits */
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);

  /* Set the AF flag */
  setFlag(d.Vnprime, V_AF, (auxiliary)[4],
          d.constraints, d.post_suffix);

  /* Set the overflow flag */
  setFlag(d.Vnprime, V_OF,
          getOFExpr((E_arg1)[bitWidth - 1],
                    (E_arg2)[bitWidth - 1],
                    (E_result)[bitWidth - 1]),
          d.constraints, d.post_suffix);

  /* Set the carry flag */
  setFlag(d.Vnprime, V_CF, E_result[bitWidth] | E_result[bitWidth + 1],
          d.constraints, d.post_suffix);

  /* Set the SFZ flags */
  setSFPFZF(E_dest, d, bitWidth);
}



void adddHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {
  throw VALIDATOR_ERROR("uninterpreted functions not supported");

  /*
  #define DADDPATT(x)\
  {\
    auto E_result = (E_dest)[x+63][x];\
    auto E_arg1 = (E_src1)[x+63][x];\
    auto E_arg2 = (E_src2)[x+63][x];\
    retval = retval & (E_result == dadd(E_arg1,E_arg2));\
  }


  uint bitWidth = numops*64;
  z3::sort fl = vc->bv_sort(64);
  z3::func_decl dadd = z3::function("addd", fl, fl, fl);
  SymBool retval = SymBool::_true();
  if(numops==1)
  {
    DADDPATT(0)
  }
  else
  {
    DADDPATT(0)
    DADDPATT(64)
  }
  if(dest_is_reg && numops == 1)
  {
    SS_Id id_dest = XMM_BEG+getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  #undef DADDPATT
  */
}




void addfHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  throw VALIDATOR_ERROR("uninterpreted functions not supported");
  /*
  #define FADDPATT(x)\
  {\
    auto E_result = (E_dest)[x+31][x];\
    auto E_arg1 = (E_src1)[x+31][x];\
    auto E_arg2 = (E_src2)[x+31][x];\
    retval = retval & (E_result == fadd(E_arg1,E_arg2));\
  }


  uint bitWidth = numops*32;
  //z3::sort fl = vc->bv_sort(32);
  //z3::func_decl fadd = z3::function("addf", fl, fl, fl);
  SymBool retval = SymBool::_true();
  if(numops==1)
  {
    FADDPATT(0)
  }
  else
  {
    FADDPATT(0)
    FADDPATT(32)
    FADDPATT(64)
    FADDPATT(96)
  }
  if(dest_is_reg && numops < 4)
  {
    SS_Id id_dest = XMM_BEG+getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  #undef FADDPATT
  */
}

//This is more general than what the name suggests
void addmul64rr(Expr E_arg1, Expr E_arg2, Expr E_dest, v_data d, bool add_sym=true) {

  VALIDATOR_ERROR("addmul64rr suspisciously commented out -- aborting.");
}




void andHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {



  auto E_result = vc_bvAndExpr(E_src1, E_src2 );
  SymBool retval = (E_dest) == (E_result);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}


void andpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {



  auto E_result = vc_bvAndExpr(E_src1, E_src2 );
  SymBool retval = (E_dest) == (E_result);
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}


//If E_src[0]==1 then 0 else if E_src[1]==1 then 1 else ...
//A new unconstrained variable if E_src == 0
void bsfHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src) {


  setFlag(d.Vnprime,V_ZF, vc_eqExpr(E_src, SymBitVector::constant(bitWidth, 0)), d.constraints, d.post_suffix);


  //  auto E_result = SymBitVector::var(bitWidth, ("BSFTEMP"+d.pre_suffix+itoa(d.instr_no)).c_str());
  auto E_result = SymBitVector::constant(bitWidth, 0);
  for(int i = (int)bitWidth - 1; i>=0; i-- )
  {
    E_result = vc_iteExpr((E_src)[i], SymBitVector::constant(bitWidth, i), E_result);
  }
  SymBool retval = (E_dest) == (E_result);

  if(bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}

//If E_src[bitWidth-1]==1 then bitWidth else if E_src[bitWidth-2]==1 then bitWidth-2 else ...
//A new unconstrained variable if E_src == 0
void bsrHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src) {


  setFlag(d.Vnprime,V_ZF, vc_eqExpr(E_src, SymBitVector::constant(bitWidth, 0)), d.constraints, d.post_suffix);


  //  auto E_result = SymBitVector::var(bitWidth, ("BSRTEMP"+d.pre_suffix+itoa(d.instr_no)).c_str());
  auto E_result = SymBitVector::constant(bitWidth, 0);
  for(unsigned int i = 0 ; i<bitWidth; i++ )
  {
    E_result = vc_iteExpr((E_src)[i], SymBitVector::constant(bitWidth, i), E_result);
  }
  SymBool retval = (E_dest) == (E_result);

  if(bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

//Do a byte by byte swap
void bswapHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src) {


  unsigned int ratio = bitWidth/8;
  SymBool retval = SymBool::_true();
  for(unsigned int i = 0; i<ratio; i++)
  {
    retval = retval & vc_eqExpr(E_dest[((i+1)*8)-1][i*8], E_src[(ratio - i)*8-1][(ratio -i -1)*8]);
  }

  if(bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void btHandler(v_data d, unsigned int bitWidth, Expr E_operand, Expr E_offset) {


  auto E_idx = vc_bvAndExpr(SymBitVector::constant(bitWidth, bitWidth -1), E_offset);
  SymBool E_result = SymBool::_true();
  for(unsigned int i = 0; i<bitWidth; i++)
  {
    E_result = vc_iteExpr(E_idx == SymBitVector::constant(bitWidth, i), (E_operand)[i], E_result);
  }
  setFlag(d.Vnprime,V_CF, E_result, d.constraints, d.post_suffix);
}


void btcHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_operand, Expr E_offset, bool dest_is_reg = true) {


  SymBool E_carry = getBoolExpr(V_CF, d.post_suffix, d.Vnprime);
  auto E_idx = SymBitVector::constant(bitWidth, bitWidth -1) & E_offset;
  SymBool retval = SymBool::_true();
  for(unsigned int i = 0; i<bitWidth; i++)
  {
    retval = vc_iteExpr(vc_eqExpr(E_idx, SymBitVector::constant(bitWidth, i)),
                        (E_carry == (E_operand)[i]) &
                        setBit(E_dest, E_operand, i, vc_bvNotExpr((E_operand)[i][i]), bitWidth)
                        ,
                        retval);
  }
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void btvalHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_operand, Expr E_offset, bool val, bool dest_is_reg = true) {


  SymBool E_carry = getBoolExpr(V_CF, d.post_suffix, d.Vnprime);
  auto E_idx = vc_bvAndExpr(SymBitVector::constant(bitWidth, bitWidth -1), E_offset);
  SymBool retval = SymBool::_true();
  for(unsigned int i = 0; i<bitWidth; i++)
  {
    retval = vc_iteExpr(vc_eqExpr(E_idx, SymBitVector::constant(bitWidth, i)),
                        ( E_carry == (E_operand)[i]) &
                        setBit(E_dest, E_operand, i, SymBitVector::constant(1, val), bitWidth)
                        ,
                        retval);
  }
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  /out << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void cmovccHandler(v_data d, unsigned int bitWidth, string cc, Expr E_dest, Expr E_dest_pre,
                   Expr E_src, bool dest_is_reg) {

  SymBool pred = get_condition_predicate(d, cc);

  // If the predicate is true, then we set the destination equal to the new value
  // If it's false, we set the destination equal to the previous value.
  auto setif = vc_iteExpr(pred,
                          (E_dest) == (E_src),
                          (E_dest) == (E_dest_pre));

  d.constraints.push_back(setif);

  // Preserve the other bits in registers
  if (dest_is_reg && bitWidth < V_UNITSIZE) {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    auto preserve = UnmodifiedBitsPreserve(id_dest, d, bitWidth);
    d.constraints.push_back(preserve);
  }

}

void cmpHandler(v_data d, unsigned int bitWidth, Expr E_src1, Expr E_src2) {


  auto E_dest = SymBitVector::var(bitWidth, ("CMPTEMP"+d.pre_suffix+itoa(d.instr_no)).c_str());
  auto E_arg1 = SymBitVector::constant(1, 0) || E_src1;
  auto E_arg2 = SymBitVector::constant(1, 0) || E_src2;

  SymBool retval = E_dest == (E_arg1 - E_arg2)[bitWidth - 1][0];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
  setFlag(d.Vnprime, V_OF, getOFExpr(E_src1[bitWidth - 1], E_src2[bitWidth - 1],  E_dest[bitWidth - 1]),
          d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, vc_bvLtExpr(E_src1, E_src2), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}



void cmppsHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm) {

  throw VALIDATOR_ERROR("uninterpreted function");

  /*
  #define FCMPPATT(x)\
  {\
    auto E_dest_part = (E_dest)[x+31][x];\
    auto E_src1 = (E_src)[x+31][x];\
    auto E_src2 = (E_dest_pre)[x+31][x];\
    auto E_cmp_res = fcmp(E_src1, E_src2);\
    auto E_gt = vc_andExpr(!((E_cmp_res)[1],(E_cmp_res)[0]; \
    retval = retval & vc_iteExpr(E_gt, (E_dest_part) == (ones), (E_dest_part) == (zeros));\
  }

  #define FCMPPATT2(x)\
  {\
    auto E_dest_part = (E_dest)[x+31][x];\
    auto E_src1 = (E_dest_pre)[x+31][x];\
    auto E_src2 = (E_src)[x+31][x];\
    auto E_cmp_res = fcmp(E_src1, E_src2);\
    auto E_gt = !(SymBool)(E_cmp_res)[1] & (E_cmp_res)[0]; \
    retval = retval & vc_iteExpr(E_gt, (E_dest_part) == (zeros), (E_dest_part) == (ones));\
  }


  imm =imm &0x7;
  if (imm != 1 && imm != 2)
    throw VALIDATOR_ERROR("cmpps is only implemented for immediate of 1 or 2");
  if(imm==1)
  {
    z3::sort fl = vc->bv_sort(32);
    z3::sort cmp_res = vc->bv_sort(2);
    z3::func_decl fcmp = z3::function("cmpf", fl, fl, cmp_res);
    SymBool retval = SymBool::_true();
    auto zeros = SymBitVector::constant(32, 0);
    auto ones = SymBitVector::constant(32, -1);

    FCMPPATT(0);
    FCMPPATT(32);
    FCMPPATT(64);
    FCMPPATT(96);

  #ifdef DEBUG_VALIDATOR
    cout << "Adding constraint " << retval << endl;
  #endif
    d.constraints.push_back(retval);
  }
  if(imm==2)
  {
    z3::sort fl = vc->bv_sort(32);
    z3::sort cmp_res = vc->bv_sort(2);
    z3::func_decl fcmp = z3::function("cmpf", fl, fl, cmp_res);
    SymBool retval = SymBool::_true();
    auto zeros = SymBitVector::constant(32, 0);
    auto ones = SymBitVector::constant(32, -1);

    FCMPPATT2(0);
    FCMPPATT2(32);
    FCMPPATT2(64);
    FCMPPATT2(96);

  #ifdef DEBUG_VALIDATOR
    cout << "Adding constraint " << retval << endl;
  #endif
    d.constraints.push_back(retval);
  }
  #undef FCMPPATT
  */
}


void cmpxchgHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, Expr E_dest_pre, bool dest_is_reg = true) {
  if(bitWidth == 32)
    throw VALIDATOR_ERROR("Internal error: for bitWidth=32 support, use chmxchg32Handler");

  auto E_rax_pre = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE);
  auto E_rax_post = regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE);
  auto E_acc_pre = (E_rax_pre)[bitWidth - 1][0];
  auto E_acc_post = (E_rax_post)[bitWidth - 1][0];

  cmpHandler(d, bitWidth, E_acc_pre, E_dest_pre);
  SymBool retval = vc_iteExpr(getBoolExpr(V_ZF, d.post_suffix, d.Vnprime),
                              (E_dest == E_src) & (E_acc_post == E_acc_pre),
                              (E_acc_post == E_dest) & (E_dest == E_dest_pre));

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
    retval = retval &  UnmodifiedBitsPreserve(rax, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void cmpxchg32Handler(v_data d, unsigned int bitWidth, Expr E_dest_post, Expr E_src, Expr E_dest_pre, bool dest_is_reg = true) {

  if(bitWidth != 32)
    throw VALIDATOR_ERROR("Internal error: for bitWidth!=32 support, use chmxchgHandler");



  auto E_rax_pre = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE);
  auto E_rax_post = regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE);
  auto E_acc_pre = (E_rax_pre)[bitWidth - 1][0];
  auto E_acc_post = (E_rax_post)[bitWidth - 1][0];

  cmpHandler(d, bitWidth, E_acc_pre, E_dest_pre);
  SymBool retval = vc_iteExpr(getBoolExpr(V_ZF, d.post_suffix, d.Vnprime),
                              (E_dest_post == E_src) & (E_acc_post == E_acc_pre),
                              (E_acc_post == E_dest_post) & (E_dest_post == E_dest_pre));

  if(dest_is_reg)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    auto E_full_dest_pre = regExprWVN(id_dest, d.pre_suffix, d.Vn, V_UNITSIZE);
    auto E_full_dest_post = regExprWVN(id_dest, d.post_suffix, d.Vnprime, V_UNITSIZE);

    retval = vc_iteExpr(getBoolExpr(V_ZF, d.post_suffix, d.Vnprime),
                        (E_rax_pre[63][32] == E_rax_post[63][32]) &
                        (SymBitVector::constant(32, 0) == E_full_dest_post[63][32]),
                        (E_full_dest_pre[63][32] == E_full_dest_post[63][32]) &
                        (SymBitVector::constant(32, 0) == E_rax_post[63][32]));
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void convert_cdq_Handler(v_data d, SymBool pred, unsigned int bitWidth) {


  SS_Id id_dest = rdx;
  auto E_dest = regExprWVN(id_dest, d.post_suffix, d.Vnprime, V_UNITSIZE)[bitWidth - 1][0];
  auto E_src = vc_iteExpr(pred, SymBitVector::constant(bitWidth, -1),  SymBitVector::constant(bitWidth, 0));
  SymBool retval = (E_dest) == (E_src);
  if(bitWidth < V_UNITSIZE)
    retval = retval & UnmodifiedBitsPreserve(id_dest, d, bitWidth);
#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void convert_e_Handler(v_data d, unsigned int bitWidth) {

  if(bitWidth >= 64)
    throw VALIDATOR_ERROR("Internal error: bitWidth should be for the source, not the destination");

  SS_Id id_dest = rax;
  auto E_dest = (regExprWVN(id_dest, d.post_suffix, d.Vnprime, V_UNITSIZE))[2*bitWidth - 1][0];
  auto E_src = (regExprWVN(id_dest, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
  auto E_result = vc_bvSignExtend(E_src, 2*bitWidth);
  SymBool retval = (E_dest) == (E_result);
  if(2*bitWidth < V_UNITSIZE)
    retval = retval & UnmodifiedBitsPreserve(id_dest, d, 2*bitWidth);
#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void crc32r32Handler(v_data d, Expr E_dest, Expr E_dest_pre, Expr E_src) {
//These are for CRC32
#define REFLECT_INNER(x,firstshift, firsthex, secondshift, secondhex)\
  vc_bvOrExpr(\
      vc_bvLeftShiftExprExpr(32, vc_bvAndExpr((x), SymBitVector::constant(32,  (firsthex))), SymBitVector::constant(32, (firstshift))),\
      vc_bvRightShiftExprExpr(32, vc_bvAndExpr((x), SymBitVector::constant(32, (secondhex))), SymBitVector::constant(32,(secondshift)))\
      );

#define REFLECT(x, s1, s2, s3, s4, s5)\
auto s1 = REFLECT_INNER(x,  1,  0x55555555, 1,  0xAAAAAAAA);\
auto s2 = REFLECT_INNER(s1, 2,  0x33333333, 2,  0xCCCCCCCC);\
auto s3 = REFLECT_INNER(s2, 4,  0x0F0F0F0F, 4,  0xF0F0F0F0);\
auto s4 = REFLECT_INNER(s3, 8,  0x00FF00FF, 8,  0xFF00FF00);\
auto s5 = REFLECT_INNER(s4, 16, 0x0000FFFF, 16, 0xFFFF0000);\

#define POLYDIV(dest, src, poly, idx,n, s)\
  auto dest = SymBitVector::var(64, ("DIVCRCTEMP"+itoa((idx))+s+itoa((n))).c_str());\
  temp = vc_iteExpr((src)[(idx)+32],\
    vc_bvXorExpr(src, SymBitVector::constant(31-idx, 0) || poly || SymBitVector::constant(idx, 0)),\
  src\
  ); \
  \
  retval = retval & (dest) == (temp);




  SymBool retval = SymBool::_true();
  auto E_temp1 = SymBitVector::var(32, ("TEMP1CRC"+d.pre_suffix+itoa(d.instr_no)).c_str());

  REFLECT(E_src, E_temp1_1, E_temp1_2, E_temp1_3, E_temp1_4, E_temp1_5)

#ifdef DEBUG_VALIDATOR
  //cout << "TEMP1CRC done" << endl ;
#endif

  retval =retval & (E_temp1) == (E_temp1_5);

  auto E_temp2 = SymBitVector::var(32, ("TEMP2CRC"+d.pre_suffix+itoa(d.instr_no)).c_str());

  REFLECT(E_dest_pre, E_temp2_1, E_temp2_2, E_temp2_3, E_temp2_4, E_temp2_5)
  retval =retval & (E_temp2) == (E_temp2_5);

  auto E_temp3 = E_temp1 || SymBitVector::constant(32, 0);
  auto E_temp4 = E_temp2 || SymBitVector::constant(32, 0);

  auto E_temp5 = SymBitVector::var(64, ("TEMP5CRC"+d.pre_suffix+itoa(d.instr_no)).c_str());
  retval =retval & vc_eqExpr(E_temp5, vc_bvXorExpr(E_temp3, E_temp4));

  auto E_temp6 = SymBitVector::var(32, ("TEMP6CRC"+d.pre_suffix+itoa(d.instr_no)).c_str());


  auto E_poly = SymBitVector::constant(33, 0x11EDC6F41);
  auto E_var31 = vc_iteExpr((E_temp5)[63], vc_bvXorExpr(E_poly || SymBitVector::constant(31, 0), E_temp5), E_temp5);

  SymBitVector temp = SymBitVector::constant(32, 0);
  POLYDIV(E_var30, E_var31, E_poly, 30, d.instr_no, d.pre_suffix)
  POLYDIV(E_var29, E_var30, E_poly, 29, d.instr_no, d.pre_suffix)
  POLYDIV(E_var28, E_var29, E_poly, 28, d.instr_no, d.pre_suffix)
  POLYDIV(E_var27, E_var28, E_poly, 27, d.instr_no, d.pre_suffix)
  POLYDIV(E_var26, E_var27, E_poly, 26, d.instr_no, d.pre_suffix)
  POLYDIV(E_var25, E_var26, E_poly, 25, d.instr_no, d.pre_suffix)
  POLYDIV(E_var24, E_var25, E_poly, 24, d.instr_no, d.pre_suffix)
  POLYDIV(E_var23, E_var24, E_poly, 23, d.instr_no, d.pre_suffix)
  POLYDIV(E_var22, E_var23, E_poly, 22, d.instr_no, d.pre_suffix)
  POLYDIV(E_var21, E_var22, E_poly, 21, d.instr_no, d.pre_suffix)
  POLYDIV(E_var20, E_var21, E_poly, 20, d.instr_no, d.pre_suffix)
  POLYDIV(E_var19, E_var20, E_poly, 19, d.instr_no, d.pre_suffix)
  POLYDIV(E_var18, E_var19, E_poly, 18, d.instr_no, d.pre_suffix)
  POLYDIV(E_var17, E_var18, E_poly, 17, d.instr_no, d.pre_suffix)
  POLYDIV(E_var16, E_var17, E_poly, 16, d.instr_no, d.pre_suffix)
  POLYDIV(E_var15, E_var16, E_poly, 15, d.instr_no, d.pre_suffix)
  POLYDIV(E_var14, E_var15, E_poly, 14, d.instr_no, d.pre_suffix)
  POLYDIV(E_var13, E_var14, E_poly, 13, d.instr_no, d.pre_suffix)
  POLYDIV(E_var12, E_var13, E_poly, 12, d.instr_no, d.pre_suffix)
  POLYDIV(E_var11, E_var12, E_poly, 11, d.instr_no, d.pre_suffix)
  POLYDIV(E_var10, E_var11, E_poly, 10, d.instr_no, d.pre_suffix)
  POLYDIV(E_var9 , E_var10, E_poly,  9, d.instr_no, d.pre_suffix)
  POLYDIV(E_var8 , E_var9 , E_poly,  8, d.instr_no, d.pre_suffix)
  POLYDIV(E_var7 , E_var8 , E_poly,  7, d.instr_no, d.pre_suffix)
  POLYDIV(E_var6 , E_var7 , E_poly,  6, d.instr_no, d.pre_suffix)
  POLYDIV(E_var5 , E_var6 , E_poly,  5, d.instr_no, d.pre_suffix)
  POLYDIV(E_var4 , E_var5 , E_poly,  4, d.instr_no, d.pre_suffix)
  POLYDIV(E_var3 , E_var4 , E_poly,  3, d.instr_no, d.pre_suffix)
  POLYDIV(E_var2 , E_var3 , E_poly,  2, d.instr_no, d.pre_suffix)
  POLYDIV(E_var1 , E_var2 , E_poly,  1, d.instr_no, d.pre_suffix)

  auto E_var0 = vc_iteExpr((E_var1)[32], vc_bvXorExpr(SymBitVector::constant(31, 0) || E_poly, E_var1), E_var1);
  retval = retval & E_temp6 == (E_var0)[31][0];

  REFLECT(E_temp6, E_temp6_1, E_temp6_2, E_temp6_3, E_temp6_4, E_temp6_5)
  retval = retval & (E_dest) == (E_temp6_5);

#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);

#undef REFLECT
#undef REFLECT_INNER
#undef POLYDIV
}



// This handles CWD, CDQ, CQO
void cwd_cdq_cqoHandler(v_data d, int width) {



  // Unfortunately, we need to manually get the symbols for the "source" and
  // "destination".  By "source" I mean the sub-register of RAX and by
  // "destination" I mean the subregister of RDX.

  Expr rax_expr       = regExprWVN(rax, d.post_suffix, d.Vn, 64);
  Expr rdx_end_expr   = regExprWVN(rdx, d.post_suffix, d.Vnprime, 64);
  auto rdx_start_expr = regExprWVN(rdx, d.post_suffix, d.Vn, 64);


  // Extract the top bit of the source register
  auto last_bit_of_src = (rax_expr)[width - 1][width - 1];

  // Constrain all the bits of the destination register.
  for(int i = 0; i < width; ++i) {
    auto bit_of_dst = (rdx_end_expr)[i][i];
    auto equal = (bit_of_dst) == (last_bit_of_src);
    d.constraints.push_back(equal);
  }

  // Constrain remaining bits of rdx.
  if (width < 64) {
    auto rdx_start_remaining = (rdx_start_expr)[63][width];
    auto rdx_end_remaining = (rdx_end_expr)[63][width];
    auto equal = (rdx_start_remaining) == (rdx_end_remaining);
    d.constraints.push_back(equal);
  }
}

//OF is SET iff original value is 0
void decHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


#ifdef DEBUG_VALIDATOR
  //cout << E_dest << E_src <<  endl << bitWidth << endl ;
#endif

  auto E_result = vc_bvMinusExpr(bitWidth+1,
                                 SymBitVector::constant(1, 0) || E_src,
                                 SymBitVector::constant(1, 0) || SymBitVector::constant(bitWidth, 1));
  SymBool retval = E_dest == (E_result)[bitWidth - 1][0];
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);

  setFlag(d.Vnprime,V_OF, vc_eqExpr(E_dest,SymBitVector::constant(bitWidth, 0)), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}



void divHandler(v_data d, unsigned int bitWidth, Expr E_src2) {


  E_src2 = SymBitVector::constant(bitWidth, 0) || E_src2;

  //  SS_Id rdx = rdx;
  //  SS_Id rax = rax;
  if(bitWidth > 8)
  {
    auto E_src1 = (regExprWVN(rdx, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0] ||
                  (regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
    auto E_quotient = (E_src1 / E_src2)[bitWidth - 1][0];
    auto E_remainder = (E_src1 % E_src2)[bitWidth - 1][0];
    auto E_rem_dest = (regExprWVN(rdx, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_quot_dest = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];

    SymBool retval = (E_quot_dest == E_quotient) & (E_rem_dest == E_remainder);
    if( bitWidth < V_UNITSIZE)
    {
      retval = retval &  UnmodifiedBitsPreserve(rdx, d, bitWidth);
      retval = retval &  UnmodifiedBitsPreserve(rax, d, bitWidth);
    }
#ifdef DEBUG_VALIDATOR
    //cout << "Adding constraint " << retval << endl;
#endif
    d.constraints.push_back(retval);
  }
  else
  {
    auto E_src1 = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE)[2*bitWidth - 1][bitWidth] ||
                  regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE)[bitWidth - 1][0];
    E_src2 = SymBitVector::constant(bitWidth, 0) || E_src2;
    auto E_quotient = (E_src1 / E_src2)[bitWidth - 1][0];
    auto E_remainder = (E_src1 % E_src2)[bitWidth - 1][0];
    auto E_rem_dest = regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE)[2*bitWidth - 1][bitWidth];
    auto E_quot_dest = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];

    SymBool retval = (E_quot_dest == E_quotient) & (E_rem_dest == E_remainder);

    retval = retval &  UnmodifiedBitsPreserve(rax, d, 2*bitWidth);

#ifdef DEBUG_VALIDATOR
    //cout << "Adding constraint " << retval << endl;
#endif
    d.constraints.push_back(retval);
  }
}

void div_uif_Handler(v_data d, unsigned int bitWidth, Expr E_src2 ) {
  VALIDATOR_ERROR("div_uif suspisciously commented out -- aborting.");
}


void dppdHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm) {

  throw VALIDATOR_ERROR("uninterpreted function");
  /*
  imm = imm & 0xFF;


  auto E_temp1 = SymBitVector::var(V_XMMUNIT, ("DPPD_TEMP1"+d.pre_suffix+itoa(d.instr_no)).c_str());
  auto E_temp2 = SymBitVector::var(V_UNITSIZE, ("DPPD_TEMP2"+d.pre_suffix+itoa(d.instr_no)).c_str());
  SymBool retval = SymBool::_true();

  if(imm & 0x10)
    retval = retval & dmul((E_temp1)[63][0], (E_dest_pre)[63][0], (E_src)[63][0]);
  else
    retval = retval & vc_eqExpr((E_temp1)[63][0], SymBitVector::constant(64, 0));

  if(imm & 0x20)
    retval = retval & dmul((E_temp1)[127][64], (E_dest_pre)[127][64], (E_src)[127][64]);
  else
    retval = retval & vc_eqExpr((E_temp1)[127][64], SymBitVector::constant(64, 0));

  retval = retval & dadd(E_temp2, (E_temp1)[127][64], (E_temp1)[63][0]);

  if( imm & 0x1)
    retval = retval & (E_dest)[63][0] == E_temp2;
  else
    retval = retval & vc_eqExpr((E_dest)[63][0], SymBitVector::constant(64, 0) );

  if( imm & 0x2)
    retval = retval & (E_dest)[127][64] == E_temp2;
  else
    retval = retval & vc_eqExpr((E_dest)[127][64], SymBitVector::constant(64, 0) );

  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);
  */
}



void haddpdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {


  throw VALIDATOR_ERROR("uninterpreted function");
  /*

  z3::sort fl = vc->bv_sort(64);
  z3::func_decl dadd = z3::function("addd", fl, fl, fl);
  SymBool retval = SymBool::_true();

  auto e1_src1 = (E_src1)[63][0];
  auto e2_src1 = (E_src1)[127][64];

  auto e1_src2 = (E_src2)[63][0];
  auto e2_src2 = (E_src2)[127][64];


  auto e1_dest = (E_dest)[63][0];
  auto e2_dest = (E_dest)[127][64];

  retval = retval & e1_dest == dadd(e2_src1,e1_src1);
  retval = retval & e2_dest == dadd(e2_src2,e1_src2);

  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  */

}

void haddpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  throw VALIDATOR_ERROR("uninterpreted function");

  /*

  z3::sort fl = vc->bv_sort(32);
  z3::func_decl fadd = z3::function("addf", fl, fl, fl);
  SymBool retval = SymBool::_true();

  auto e1_src1 = (E_src1)[31][0];
  auto e2_src1 = (E_src1)[63][32];
  auto e3_src1 = (E_src1)[95][64];
  auto e4_src1 = (E_src1)[127][96];


  auto e1_src2 = (E_src2)[31][0];
  auto e2_src2 = (E_src2)[63][32];
  auto e3_src2 = (E_src2)[95][64];
  auto e4_src2 = (E_src2)[127][96];


  auto e1_dest = (E_dest)[31][0];
  auto e2_dest = (E_dest)[63][32];
  auto e3_dest = (E_dest)[95][64];
  auto e4_dest = (E_dest)[127][96];

  retval = retval & e1_dest == fadd(e2_src1,e1_src1);
  retval = retval & e2_dest == fadd(e4_src1,e3_src1);
  retval = retval & e3_dest == fadd(e2_src2,e1_src2);
  retval = retval & e4_dest == fadd(e4_src2,e3_src2);

  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  */
}


void idivHandler(v_data d, unsigned int bitWidth, Expr E_src2) {


  //  SS_Id rdx = rdx;
  //  SS_Id rax = rax;
  if(bitWidth > 8)
  {
    auto E_src1 = (regExprWVN(rdx, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0] ||
                  (regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
    E_src2 = vc_bvSignExtend(E_src2, 2*bitWidth);
    auto E_quotient = (E_src1.s_div(E_src2))[bitWidth - 1][0];
    auto E_remainder = (E_src1.s_mod(E_src2))[bitWidth - 1][0];
    auto E_rem_dest = (regExprWVN(rdx, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_quot_dest = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];

    SymBool retval = (E_quot_dest == E_quotient) & (E_rem_dest == E_remainder) ;
    if( bitWidth < V_UNITSIZE)
    {
      retval = retval &  UnmodifiedBitsPreserve(rdx, d, bitWidth);
      retval = retval &  UnmodifiedBitsPreserve(rax, d, bitWidth);
    }
    //cout << "Adding constraint " << retval << endl;
    d.constraints.push_back(retval);
  }
  else
  {
    auto E_src1 = (regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[(2*bitWidth) - 1][bitWidth] || (regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
    E_src2 = vc_bvSignExtend(E_src2, 2*bitWidth);
    auto E_quotient = (E_src1.s_div(E_src2))[bitWidth - 1][0];
    auto E_remainder = (E_src1.s_mod(E_src2))[bitWidth - 1][0];
    auto E_rem_dest = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[(2*bitWidth) - 1][bitWidth];
    auto E_quot_dest = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];

    SymBool retval = (E_quot_dest == E_quotient) & (E_rem_dest == E_remainder) ;

    retval = retval &  UnmodifiedBitsPreserve(rax, d, 2*bitWidth);

    //cout << "Adding constraint " << retval << endl;
    d.constraints.push_back(retval);
  }
}


void imul1Handler(v_data d, unsigned int bitWidth, Expr E_src2, bool dest_is_reg=true) {


  //  SS_Id rdx = rdx;
  //  SS_Id rax = rax;
  if(bitWidth > 8)
  {
    E_src2 = vc_bvSignExtend(E_src2, 2*bitWidth);
    auto E_src1 = vc_bvSignExtend((regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0], 2*bitWidth);
    auto E_rdx = (regExprWVN(rdx, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_rax = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_dest = E_rdx || E_rax;

    auto E_result = vc_bvMultExpr(2*bitWidth, E_src1, E_src2 );
    SymBool retval = (E_dest) == (E_result);

    if(dest_is_reg && bitWidth < V_UNITSIZE)
    {
      retval = retval &  UnmodifiedBitsPreserve(rdx, d, bitWidth);
      retval = retval &  UnmodifiedBitsPreserve(rax, d, bitWidth);

    }

    //cout << "Adding constraint " << retval << endl;
    d.constraints.push_back(retval);

    unsigned int flagBitWidth = 2*bitWidth;
    auto E_flag_src1 = vc_bvSignExtend(E_rax, flagBitWidth);
    auto E_flag_src2 = E_dest;
    auto E_flag_result = !((E_flag_src1) == (E_flag_src2));
    setFlag(d.Vnprime,V_OF, setFlag(d.Vnprime,V_CF, E_flag_result, d.constraints, d.post_suffix), d.constraints, d.post_suffix);
    //Rest flags are undefined
  }
  else
  {
    E_src2 = vc_bvSignExtend(E_src2, 2*bitWidth);
    auto E_src1 = vc_bvSignExtend((regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0], 2*bitWidth);
    auto E_rdx = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[(2*bitWidth) - 1][bitWidth];
    auto E_rax = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_dest = E_rdx || E_rax;

    auto E_result = vc_bvMultExpr(2*bitWidth, E_src1, E_src2 );
    SymBool retval = (E_dest) == (E_result);

    if(dest_is_reg) retval = retval &  UnmodifiedBitsPreserve(rax, d, 2*bitWidth);

    //cout << "Adding constraint " << retval << endl;
    d.constraints.push_back(retval);

    unsigned int flagBitWidth = 2*bitWidth;
    auto E_flag_src1 = vc_bvSignExtend(E_rax, flagBitWidth);
    auto E_flag_src2 = E_dest;
    auto E_flag_result = !((E_flag_src1) == (E_flag_src2));
    setFlag(d.Vnprime,V_OF, setFlag(d.Vnprime,V_CF, E_flag_result, d.constraints, d.post_suffix), d.constraints, d.post_suffix);
  }
}



void imul3Handler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2) {



  auto E_result = vc_bvMultExpr(bitWidth, E_src1, E_src2 );
  SymBool retval = (E_dest) == (E_result);

  if( bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }

  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);

  unsigned int flagBitWidth = 2*bitWidth;
  auto E_flag_src1 = vc_bvSignExtend(E_src1, flagBitWidth);
  auto E_flag_src2 = vc_bvSignExtend(E_src2, flagBitWidth);
  auto E_prod = E_flag_src1 * E_flag_src2;
  //TODO auto E_old_prod = vc_bvSignExtend(E_result, flagBitWidth);
  //auto E_flag_result = !((E_prod) == (E_old_prod));
  auto E_flag_result = (E_prod[flagBitWidth-1][bitWidth] != SymBitVector::constant(bitWidth, 0)) &
                       (E_prod[flagBitWidth-1][bitWidth] != SymBitVector::constant(bitWidth, -1));
  //CF = OF = (temp=/=dest)
  setFlag(d.Vnprime,V_OF, setFlag(d.Vnprime,V_CF, E_flag_result, d.constraints, d.post_suffix), d.constraints, d.post_suffix);
  //Rest flags are undefined
}

//imul when mul is an uninterpreted function
void imul64rrHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {

  throw VALIDATOR_ERROR("imul64rr suspisciously commented out -- aborting");
  /*

      addmul64rr(E_src1, E_src2, E_dest, mul, d);*/
}

void incHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {

  //cout << E_dest << E_src <<  endl << bitWidth << endl ;

  auto E_result = (SymBitVector::constant(1, 0) || E_src) + 
                  (SymBitVector::constant(1, 0) || SymBitVector::constant(bitWidth, 1));

  SymBool retval = E_dest == (E_result)[bitWidth - 1][0];
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);

  // The AF flag will be set exactly if the lowest four bits of src are all one.
  //  (which is equivalent to lowest four bits of destination being all zero)
  setFlag(d.Vnprime, V_AF,
          SymBitVector::constant(4, 0) == E_dest[3][0],
          d.constraints, d.post_suffix);


  // The OF flag will be set exactly if the destination is 0 (i.e. the src is -1).
  setFlag(d.Vnprime, V_OF,
          E_dest == SymBitVector::constant(bitWidth, 0),
          d.constraints, d.post_suffix);

  setSFPFZF(E_dest, d, bitWidth);
}


void lahfHandler(v_data d) {


  auto E_rax_post = regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE);
  auto E_src = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE);
  SymBool retval = SymBool::_true();
  retval = retval & (E_src)[63][16] == (E_rax_post)[63][16];
  retval = retval & (E_src)[7][0] == (E_rax_post)[7][0];
  retval = retval & (E_rax_post)[15] == getBoolExpr(V_SF, d.pre_suffix, d.Vn);
  retval = retval & (E_rax_post)[14] == getBoolExpr(V_ZF, d.pre_suffix, d.Vn);
  retval = retval & (E_rax_post)[13] == SymBool::_false();
  retval = retval & (E_rax_post)[12] == getBoolExpr(V_AF, d.pre_suffix, d.Vn);
  retval = retval & (E_rax_post)[11]== SymBool::_false();
  retval = retval & (E_rax_post)[10] == getBoolExpr(V_PF, d.pre_suffix, d.Vn);
  retval = retval & (E_rax_post)[9] == SymBool::_true();
  retval = retval & (E_rax_post)[8] == getBoolExpr(V_CF, d.pre_suffix, d.Vn);
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}



void leaHandler(v_data d, unsigned int bitWidth) {



  SS_Id id_dest = getRegisterFromInstr(d.instr,0);
  auto E_dest = (regExprWVN(id_dest, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
  auto addr = d.instr.get_operand<M8>(1);
  auto E_addr = SymBitVector::var(V_UNITSIZE, ("ADDRTEMPEXPR"+d.pre_suffix+itoa(d.instr_no)).c_str());

  SymBool retval = ConstrainAddr(E_addr, addr, d); //Compute 64 bit address
  retval = retval & E_dest == (E_addr)[bitWidth-1][0];

  if(bitWidth < V_UNITSIZE)
    retval = retval & UnmodifiedBitsPreserve(id_dest, d, bitWidth);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}



void maxpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {

  throw VALIDATOR_ERROR("uninterpreted function");

  /*
  z3::sort pfl = vc->bv_sort(128);
  z3::func_decl fpmax = z3::function("maxfp", pfl, pfl, pfl);
  auto E_result = fpmax(E_src1, E_src2);
  SymBool retval = (E_dest) == (E_result);
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif

  d.constraints.push_back(retval);
  */
}


void movHandler(v_data d, unsigned int bitWidthTarget, unsigned int bitWidthSource, Expr E_dest, Expr E_src, bool signExtend,  bool dest_is_reg=true) {


  E_dest = (E_dest)[bitWidthTarget-1][0]; //Noop except for xmm
  if(signExtend && bitWidthTarget>bitWidthSource)
    E_src = vc_bvSignExtend(E_src, bitWidthTarget);
  else if(bitWidthTarget > bitWidthSource)
    E_src = SymBitVector::constant(bitWidthTarget-bitWidthSource, 0) || E_src;
  else if ( bitWidthSource > bitWidthTarget)
    E_src = (E_src)[bitWidthTarget-1][0];
  SymBool retval = (E_dest) == (E_src);
  if(dest_is_reg /*&& bitWidthTarget < full_size*/)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0) + (is_dest_xmm(E_dest) ? XMM_BEG : 0);
    uint full_size = V_UNITSIZE*all_state_info.second[id_dest];
    if(bitWidthTarget<full_size)
      retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidthTarget);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void movddupHandler(v_data d, Expr E_dest, Expr E_src) {


  E_src = (E_src)[63][0];
  SymBool retval = SymBool::_true();
  retval = retval & (E_dest)[63][0] == (E_src)[63][0];
  retval = retval & (E_dest)[127][64] == (E_src)[63][0];

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);

}



void movhHandler(v_data d, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  SymBool retval = SymBool::_true();
  if(dest_is_reg)
  {
    retval = retval & (E_dest)[127][64] == (E_src)[63][0];
    SS_Id id_dest = getRegisterFromInstr(d.instr,0) + (is_dest_xmm(E_dest) ? XMM_BEG : 0);
    auto E_dest_pre = regExprWVN(id_dest, d.pre_suffix, d.Vn, 128);
    retval = retval & (E_dest)[63][0] == (E_dest_pre)[63][0];
  }
  else
  {
    retval = retval & E_dest == (E_src)[127][64];
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void movhlpsHandler(v_data d, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  SymBool retval = SymBool::_true();
  if (!dest_is_reg)
    throw VALIDATOR_ERROR("movhlps only supports register destination");
  {
    retval = retval & (E_dest)[63][0] == (E_src)[127][64];
    SS_Id id_dest = getRegisterFromInstr(d.instr,0) + (is_dest_xmm(E_dest) ? XMM_BEG : 0);
    auto E_dest_pre = regExprWVN(id_dest, d.pre_suffix, d.Vn, 128);
    retval = retval & (E_dest)[127][64] == (E_dest_pre)[127][64];
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}





void muldHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  throw VALIDATOR_ERROR("uninterpreted function");
  /*
  #define DMULPATT(x)\
  {\
    auto E_result = (E_dest)[x+63][x];\
    auto E_arg1 = (E_src1)[x+63][x];\
    auto E_arg2 = (E_src2)[x+63][x];\
    retval = retval & (E_result == dmul(E_arg1,E_arg2));\
  }


  uint bitWidth = numops*64;
  z3::sort fl = vc->bv_sort(64);
  z3::func_decl dmul = z3::function("muld", fl, fl, fl);
  SymBool retval = SymBool::_true();
  if(numops==1)
  {
    DMULPATT(0)
  }
  else
  {
    DMULPATT(0)
    DMULPATT(64)
  }
  if(dest_is_reg && numops == 1)
  {
    SS_Id id_dest = XMM_BEG+getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  #undef DMULPATT
  */
}



void mulfHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  throw VALIDATOR_ERROR("uninterpreted function");
  /*
  #define FMULPATT(x)\
  {\
    auto E_result = (E_dest)[x+31][x];\
    auto E_arg1 = (E_src1)[x+31][x];\
    auto E_arg2 = (E_src2)[x+31][x];\
    retval = retval & (E_result == fmul(E_arg1,E_arg2));\
  }


  uint bitWidth = numops*32;
  z3::sort fl = vc->bv_sort(32);
  z3::func_decl fmul = z3::function("mulf", fl, fl, fl);
  SymBool retval = SymBool::_true();
  if(numops==1)
  {
    FMULPATT(0)
  }
  else
  {
    FMULPATT(0)
    FMULPATT(32)
    FMULPATT(64)
    FMULPATT(96)
  }
  if(dest_is_reg && numops < 4)
  {
    SS_Id id_dest = XMM_BEG+getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  #undef FMULPATT
  */
}

//mul64r handler writes a 64 bit unsigned multiplication with 128 bit results in terms of
//four 64-bit signed multiplications each having a 64 bit result
void mul64rHandler(v_data d) {
  VALIDATOR_ERROR("mul64r suspisciously commented out -- aborting.");
}




void negHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  auto E_result = vc_bvUMinusExpr(E_src );
  SymBool retval = (E_dest) == (E_result);
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, E_src != SymBitVector::constant(bitWidth, 0), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, (E_src)[bitWidth -1] & (E_dest)[bitWidth -1], d.constraints, d.post_suffix);
  setSFPFZF(E_result, d, bitWidth);
}

void notHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  auto E_result = vc_bvNotExpr(E_src );
  SymBool retval = (E_dest) == (E_result);
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
}


void orHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {


  SymBool retval = vc_eqExpr(E_dest, vc_bvOrExpr(E_src1, E_src2));
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}

void packusdwHandler(v_data d, unsigned int bitWidthSrc, unsigned int bitWidthTarget,  Expr E_dest, Expr E_src1, Expr E_src2)
{

  throw VALIDATOR_ERROR("sighted compare for packusdw not supported at the moment");
}


void paddHandler(v_data d, unsigned int opWidth, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {


  if (opWidth != 32 || bitWidth != 128) {
    throw VALIDATOR_ERROR("Only opWidth of 32 and bitWidth of 128 is supported for padd");
  }
  SymBool retval = SymBool::_true();
  retval = retval & vc_eqExpr((E_dest)[31][0], vc_bvPlusExpr(32, (E_src1)[31][0], (E_src2)[31][0]));
  retval = retval & vc_eqExpr((E_dest)[63][32], vc_bvPlusExpr(32, (E_src1)[63][32], (E_src2)[63][32]));
  retval = retval & vc_eqExpr((E_dest)[95][64], vc_bvPlusExpr(32, (E_src1)[95][64], (E_src2)[95][64]));
  retval = retval & vc_eqExpr((E_dest)[127][96], vc_bvPlusExpr(32, (E_src1)[127][96], (E_src2)[127][96]));
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void palignrHandler(v_data d, unsigned int numops, unsigned int bitWidth, unsigned int immediate, Expr E_dest, Expr E_src1, Expr E_src2) {

  //FIXME: this is unsound for memory: memory must be aligned to a 128 bit boundary.

  if (bitWidth != 128 || numops != 3) {
    VALIDATOR_ERROR("palign only implemented for 128-bit operands and 3 arguments");
    //to make this work for 128-bits and 4 arguments, you just need to clear the
    //ymm register bits.
  }



  // The trick to doing this efficiently is matching which bits of the sources
  // are going to go to which bits of the destination, without actually doing
  // bitshifting or introducting temporaries.

  // First, figure out how many bits we need to "shift" by
  int bits_to_shift = ((immediate & 0xff) * 8);

  // If it's too high, then we zero the output registers.
  if (bits_to_shift > 255) {
    auto zero_bv = SymBitVector::constant(128, 0);
    auto equals = (E_dest) == (zero_bv);
    d.constraints.push_back(equals);
    return;
  }

  // If it's between 129 and 255 (inclusive), we copy bits only from src1.
  if (129 <= bits_to_shift && bits_to_shift <= 255) {
    // DEST[0, 255-i] <- SRC1[i-128, 127]  (256 - i bits)

    auto src1_extract = (E_src1)[127][bits_to_shift - 128];
    auto dest_to_src1 = (E_dest)[255 - bits_to_shift][0];
    assert(127 - (bits_to_shift - 128) == 255 - bits_to_shift);

    auto dest_src1_equal = (dest_to_src1) == (src1_extract);
    d.constraints.push_back(dest_src1_equal);

    // DEST[256-i, 127] <- zero (i - 128 bits)
    auto zero = SymBitVector::constant(bits_to_shift-128, 0);
    auto dest_zero = (E_dest)[127][256 - bits_to_shift];
    assert(bits_to_shift - 128 == 127 - (256 - bits_to_shift) + 1);

    auto equal = (dest_zero) == (zero);
    d.constraints.push_back(equal);

    return;
  }

  // If it's exactly 128 bits, we copy src1 into dest
  if (bits_to_shift == 128) {
    auto equals = (E_dest) == (E_src1);
    d.constraints.push_back(equals);
    return;
  }

  // If it's between 1 and 127 (inclusive) we copy parts of src1 and src2
  if (1 <= bits_to_shift && bits_to_shift <= 127) {
    // DEST[0, 127-i] = SRC2[i, 127]  (128-i bits)
    auto src2_extract = (E_src2)[127][bits_to_shift];
    auto dest_to_src2 = (E_dest)[127-bits_to_shift][0];

    auto dest_src2_equal = (dest_to_src2) == (src2_extract);
    d.constraints.push_back(dest_src2_equal);

    // DEST[128-i, 127] = SRC1[i-1, 0]  (i bits)
    auto src1_extract = (E_src1)[bits_to_shift - 1][0];
    auto dest_to_src1 = (E_dest)[127][128 - bits_to_shift];

    auto dest_src1_equal = (dest_to_src1) == (src1_extract);
    d.constraints.push_back(dest_src1_equal);
  }

  // If it's 0, we just copy SRC2 into the destination
  if (bits_to_shift == 0) {
    auto equals = (E_dest) == (E_src2);
    d.constraints.push_back(equals);
    return;
  }

  VALIDATOR_ERROR("palignr internal error; bits_to_shift out of bounds?");

}

void pandnHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {



  auto E_result = vc_bvAndExpr(vc_bvNotExpr(E_src1) , E_src2 );
  SymBool retval = (E_dest) == (E_result);
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}

#define MAXMACRO(R,X,Y, U, L)  auto R = vc_iteExpr(vc_bvGtExpr((X)[U][L], (Y)[U][L]),\
                                    (X)[U][L], (Y)[U][L]);
#define RETMACRO(D,R, U, L) retval = retval & (D)[U][L] == R;
void pmaxsdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {


  MAXMACRO(E_result1,E_src1, E_src2, 31,0)
  MAXMACRO(E_result2,E_src1, E_src2, 63,32)
  MAXMACRO(E_result3,E_src1, E_src2, 95,64)
  MAXMACRO(E_result4,E_src1, E_src2, 127,96)

  SymBool retval = SymBool::_true();
  RETMACRO(E_dest, E_result1,31,0)
  RETMACRO(E_dest, E_result2,63,32)
  RETMACRO(E_dest, E_result3,95,64)
  RETMACRO(E_dest, E_result4,127,96)

  ADD_CONS(retval);
  d.constraints.push_back(retval);
}

#define MINMACRO(R,X,Y, U, L)  auto R = vc_iteExpr(vc_bvLtExpr((X)[U][L], (Y)[U][L]),\
                                    (X)[U][L], (Y)[U][L]);
void pminuwHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {


  MINMACRO(E_result1,E_src1, E_src2, 15,0)
  MINMACRO(E_result2,E_src1, E_src2, 31,16)
  MINMACRO(E_result3,E_src1, E_src2, 47,32)
  MINMACRO(E_result4,E_src1, E_src2, 63,48)
  MINMACRO(E_result5,E_src1, E_src2, 79,64)
  MINMACRO(E_result6,E_src1, E_src2, 95,80)
  MINMACRO(E_result7,E_src1, E_src2, 111,96)
  MINMACRO(E_result8,E_src1, E_src2, 127,112)

  SymBool retval = SymBool::_true();
  RETMACRO(E_dest, E_result1,15,0)
  RETMACRO(E_dest, E_result2,31,16)
  RETMACRO(E_dest, E_result3,47,32)
  RETMACRO(E_dest, E_result4,63,48)
  RETMACRO(E_dest, E_result5,79,64)
  RETMACRO(E_dest, E_result6,95,80)
  RETMACRO(E_dest, E_result7,111,96)
  RETMACRO(E_dest, E_result8,127,112)

  ADD_CONS(retval);
  d.constraints.push_back(retval);
}
#undef MINMACRO
#undef MAXMACRO

void pmovsxdqHandler(v_data d, Expr E_dest, Expr E_src)
{


  auto E_first = vc_bvSignExtend((E_src)[31][0], 64);
  auto E_second = vc_bvSignExtend((E_src)[63][32], 64);
  SymBool retval = (E_first == (E_dest)[127][64]) & (E_second == (E_dest)[63][0]);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}

void pmovsxwqHandler(v_data d, Expr E_dest, Expr E_src)
{


  auto E_first = vc_bvSignExtend((E_src)[31][16], 64);
  auto E_second = vc_bvSignExtend((E_src)[15][0], 64);
  SymBool retval = (E_first == (E_dest)[127][64]) & (E_second == (E_dest)[63][0]);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}

void pmovzxbdHandler(v_data d, Expr E_dest, Expr E_src)
{


  auto E_first = SymBitVector::constant(24, 0) || (E_src)[7][0];
  auto E_second = SymBitVector::constant(24, 0) || (E_src)[15][8];
  auto E_third = SymBitVector::constant(24, 0) || (E_src)[23][16];
  auto E_fourth = SymBitVector::constant(24, 0) || (E_src)[31][24];
  SymBool retval = (E_first == (E_dest)[31][0]) & (E_second == (E_dest)[63][32]);
  retval = retval & E_third == (E_dest)[95][64];
  retval = retval & E_fourth == (E_dest)[127][96];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}


void pmovzxbwHandler(v_data d, Expr E_dest, Expr E_src)
{


  auto E_first = SymBitVector::constant(8, 0) || (E_src)[7][0];
  auto E_second = SymBitVector::constant(8, 0) || (E_src)[15][8];
  auto E_third = SymBitVector::constant(8, 0) || (E_src)[23][16];
  auto E_fourth = SymBitVector::constant(8, 0) || (E_src)[31][24];
  auto E_fifth = SymBitVector::constant(8, 0) || (E_src)[39][32];
  auto E_sixth = SymBitVector::constant(8, 0) || (E_src)[47][40];
  auto E_seventh = SymBitVector::constant(8, 0) || (E_src)[55][48];
  auto E_eight = SymBitVector::constant(8, 0) || (E_src)[63][56];
  SymBool retval = (E_first == E_dest[15][0]) & (E_second == E_dest[31][16]);
  retval = retval & E_third == (E_dest)[47][32];
  retval = retval & E_fourth == (E_dest)[63][48];
  retval = retval & E_fifth == (E_dest)[79][64];
  retval = retval & E_sixth == (E_dest)[95][80];
  retval = retval & E_seventh == (E_dest)[111][96];
  retval = retval & E_eight == (E_dest)[127][112];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}

void pmovzxwdHandler(v_data d, Expr E_dest, Expr E_src)
{


  auto E_first = SymBitVector::constant(16, 0) || (E_src)[15][0];
  auto E_second = SymBitVector::constant(16, 0) || (E_src)[31][16];
  auto E_third = SymBitVector::constant(16, 0) || (E_src)[47][32];
  auto E_fourth = SymBitVector::constant(16, 0) || (E_src)[63][48];
  SymBool retval = (E_first == (E_dest)[31][0]) & (E_second == (E_dest)[63][32]);
  retval = retval & E_third == (E_dest)[95][64];
  retval = retval & E_fourth == (E_dest)[127][96];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}


void pmovzxwqHandler(v_data d, Expr E_dest, Expr E_src)
{


  auto E_first = SymBitVector::constant(48, 0) || (E_src)[31][16];
  auto E_second = SymBitVector::constant(48, 0) || (E_src)[15][0];
  SymBool retval = (E_first == (E_dest)[127][64]) & (E_second == (E_dest)[63][0]);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}


void popcnt16Handler(v_data d, Expr E_dest, Expr E_src) {

#define SUM_INNER(x, shift, hex)\
  vc_bvPlusExpr(16,\
      vc_bvAndExpr((x), SymBitVector::constant(16,  (hex))),\
      vc_bvAndExpr(vc_bvRightShiftExprExpr(16, (x), SymBitVector::constant(16, (shift))), SymBitVector::constant(16, (hex)))\
      )\

#define SUM_OUTER(x, s1, s2, s3, s4)\
  retval = retval & vc_eqExpr((s1), SUM_INNER(x,  1,  0x55555));\
retval = retval & vc_eqExpr((s2), SUM_INNER(s1, 2,  0x3333));\
retval = retval & vc_eqExpr((s3), SUM_INNER(s2, 4,  0x0F0F));\
retval = retval & vc_eqExpr((s4), SUM_INNER(s3, 8,  0x00FF));\

#define VAR_EXPR(s,w)\
  SymBitVector::var((w), ((s)+d.pre_suffix+itoa(d.instr_no)).c_str());




  SymBool retval = SymBool::_true();

  auto E_temp1 = VAR_EXPR("TEMP1POPCNT",16);
  auto E_temp2 = VAR_EXPR("TEMP2POPCNT",16);
  auto E_temp3 = VAR_EXPR("TEMP3POPCNT",16);
  auto E_temp4 = VAR_EXPR("TEMP4POPCNT",16);

  SUM_OUTER(E_src, E_temp1, E_temp2, E_temp3, E_temp4)

  retval = retval & (E_dest) == (E_temp4);


  SS_Id id_dest = getRegisterFromInstr(d.instr,0);
  retval = retval &  UnmodifiedBitsPreserve(id_dest, d, 16);

  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, vc_eqExpr(E_src, SymBitVector::constant(16, 0)), d.constraints, d.post_suffix);
#undef SUM_INNER
#undef SUM_OUTER
#undef VAR_EXPR



}

void popcnt32Handler(v_data d, Expr E_dest, Expr E_src) {

#define SUM_INNER(x, shift, hex)\
  vc_bvPlusExpr(32,\
      vc_bvAndExpr((x), SymBitVector::constant(32,  (hex))),\
      vc_bvAndExpr(vc_bvRightShiftExprExpr(32, (x), vc_bv32ConstExprFromInt((shift))), SymBitVector::constant(32, (hex)))\
      )\

#define SUM_OUTER(x, s1, s2, s3, s4, s5)\
  retval = retval & vc_eqExpr((s1), SUM_INNER(x,  1,  0x55555555));\
retval = retval & vc_eqExpr((s2), SUM_INNER(s1, 2,  0x33333333));\
retval = retval & vc_eqExpr((s3), SUM_INNER(s2, 4,  0x0F0F0F0F));\
retval = retval & vc_eqExpr((s4), SUM_INNER(s3, 8,  0x00FF00FF));\
retval = retval & vc_eqExpr((s5), SUM_INNER(s4, 16, 0x0000FFFF));\

#define VAR_EXPR(s,w)\
  SymBitVector::var((w), ((s)+d.pre_suffix+itoa(d.instr_no)).c_str());




  SymBool retval = SymBool::_true();

  auto E_temp1 = VAR_EXPR("TEMP1POPCNT",32);
  auto E_temp2 = VAR_EXPR("TEMP2POPCNT",32);
  auto E_temp3 = VAR_EXPR("TEMP3POPCNT",32);
  auto E_temp4 = VAR_EXPR("TEMP4POPCNT",32);
  auto E_temp5 = VAR_EXPR("TEMP5POPCNT",32);

  SUM_OUTER(E_src, E_temp1, E_temp2, E_temp3, E_temp4, E_temp5)

  retval = retval & (E_dest) == (E_temp5);


  SS_Id id_dest = getRegisterFromInstr(d.instr,0);
  retval = retval &  UnmodifiedBitsPreserve(id_dest, d, 32);

  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, vc_eqExpr(E_src, SymBitVector::constant(32, 0)), d.constraints, d.post_suffix);

#undef SUM_INNER
#undef SUM_OUTER
#undef VAR_EXPR


}

void popcnt64Handler(v_data d, Expr E_dest, Expr E_src) {

#define SUM_INNER(x, shift, hex)\
  vc_bvPlusExpr(64,\
      vc_bvAndExpr((x), SymBitVector::constant(64,  (hex))),\
      vc_bvAndExpr(vc_bvRightShiftExprExpr(64, (x), SymBitVector::constant(64, (shift))), SymBitVector::constant(64, (hex)))\
      )\

#define SUM_OUTER(x, s1, s2, s3, s4, s5, s6) \
retval = retval & vc_eqExpr((s1), SUM_INNER(x,  1,  0x5555555555555555));\
retval = retval & vc_eqExpr((s2), SUM_INNER(s1, 2,  0x3333333333333333));\
retval = retval & vc_eqExpr((s3), SUM_INNER(s2, 4,  0x0F0F0F0F0F0F0F0F));\
retval = retval & vc_eqExpr((s4), SUM_INNER(s3, 8,  0x00FF00FF00FF00FF));\
retval = retval & vc_eqExpr((s5), SUM_INNER(s4, 16, 0x0000FFFF0000FFFF));\
retval = retval & vc_eqExpr((s6), SUM_INNER(s4, 32, 0x00000000FFFFFFFF));\

#define VAR_EXPR(s,w)\
  SymBitVector::var((w), (s)+d.pre_suffix+to_string(d.instr_no));


  SymBool retval = SymBool::_true();

  auto E_temp1 = VAR_EXPR("TEMP1POPCNT",64);
  auto E_temp2 = VAR_EXPR("TEMP2POPCNT",64);
  auto E_temp3 = VAR_EXPR("TEMP3POPCNT",64);
  auto E_temp4 = VAR_EXPR("TEMP4POPCNT",64);
  auto E_temp5 = VAR_EXPR("TEMP5POPCNT",64);
  auto E_temp6 = VAR_EXPR("TEMP6POPCNT",64);

  SUM_OUTER(E_src, E_temp1, E_temp2, E_temp3, E_temp4, E_temp5, E_temp6)

  retval = retval & (E_dest) == (E_temp6);


  SS_Id id_dest = getRegisterFromInstr(d.instr,0);
  retval = retval &  UnmodifiedBitsPreserve(id_dest, d, 64);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, vc_eqExpr(E_src, SymBitVector::constant(64, 0)), d.constraints, d.post_suffix);
#undef SUM_INNER
#undef SUM_OUTER
#undef VAR_EXPR

}




void pshufdHandler(v_data d, int imm, Expr E_dest, Expr E_src, Expr E_imm) {



  // We have a nice helper to get (SRC >> x)[y:z]
  // With that in mind:

  // DEST[31:0]   <- (SRC >> (Order[1:0]*32))[31:0]
  // DEST[63:32]  <- (SRC >> (Order[3:2]*32))[31:0]
  // DEST[95:64]  <- (SRC >> (Order[5:4]*32))[31:0]
  // DEST[127:96] <- (SRC >> (Order[7:6]*32))[31:0]
  for (int i = 0; i < 4; i++) {

    int first_bit  = (1 << (2*i));
    int second_bit = (1 << (2*i + 1));
    int mask = (first_bit | second_bit);
    int shift = ((mask & imm) >> (2*i))*32;

    int high = 32*(i+1) - 1;
    int low  = 32*i;

    d.constraints.push_back(
      vc_eqExpr(
        (E_dest)[high][low],
        pshuf_shift_right_and_extract(E_src, shift, 31, 0, 128)));
  }


}

void pshufhwHandler(v_data d, int bitWidth, bool avx, int imm, Expr E_dest, Expr E_src) {

  if ( avx || bitWidth != 128 )
    throw VALIDATOR_ERROR("pshufhw only supported in non-avx form");

  // DEST[63:0] <- SRC[63:0]
  d.constraints.push_back(
    vc_eqExpr(
      (E_dest)[63][0],
      (E_src)[63][0]));

  // We have a nice helper to get (SRC >> x)[y:z]
  // With that in mind:

  // DEST[79:64] <- (SRC >> (imm[1:0]*16))[79:64]
  // DEST[95:80] <- (SRC >> (imm[3:2]*16))[79:64]
  // DEST[111:96] <- (SRC >> (imm[5:4]*16))[79:64]
  // DEST[127:112] <- (SRC >> (imm[7:6]*16))[79:64]
  for(int i = 0; i < 4; i++) {

    int first_bit  = (1 << (2*i));
    int second_bit = (1 << (2*i + 1));
    int mask = (first_bit | second_bit);
    int shift = ((mask & imm) >> (2*i))*16;

    int low = 64 + 16*i;
    int high = 79 + 16*i;

    d.constraints.push_back(
      vc_eqExpr(
        (E_dest)[high][low],
        pshuf_shift_right_and_extract(E_src, shift, 79, 64, 128)));

  }


}


void pshuflwHandler(v_data d, int bitWidth, bool avx, int imm, Expr E_dest, Expr E_src) {

  if ( avx || bitWidth != 128 )
    throw VALIDATOR_ERROR("pshulhw only supported in non-avx form");

  // We have a nice helper to get (SRC >> x)[y:z]
  // With that in mind:

  // DEST[15:0] <- (SRC >> (imm[1:0]*16))[15:0]
  // DEST[31:16] <- (SRC >> (imm[3:2]*16))[31:16]
  // DEST[47:32] <- (SRC >> (imm[5:4]*16))[47:32]
  // DEST[63:48] <- (SRC >> (imm[7:6]*16))[63:48]
  for(int i = 0; i < 4; i++) {

    int first_bit  = (1 << (2*i));
    int second_bit = (1 << (2*i + 1));
    int mask = (first_bit | second_bit);
    int shift = ((mask & imm) >> (2*i))*16;

    int low =  16*i;
    int high = 15 + 16*i;

    d.constraints.push_back(
      vc_eqExpr(
        (E_dest)[high][low],
        pshuf_shift_right_and_extract(E_src, shift, 15, 0, 128)));

  }

  // DEST[63:0] <- SRC[63:0]
  d.constraints.push_back(
    vc_eqExpr(
      (E_dest)[127][64],
      (E_src)[127][64]));

}

void psllHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1)
{

  SymBool retval = SymBool::_true();
  if(shamt>=bitWidth)
    retval = retval & vc_eqExpr(E_dest, SymBitVector::constant(128, 0));
  else if(shamt==0)
    retval = retval & (E_dest) == (E_src1);
  else
  {
    for(int i =bitWidth; i<=128; i+=bitWidth)
    {
      retval = retval & (E_dest[i-1][i-bitWidth] ==
                         (E_src1[i-shamt-1][i-bitWidth] || SymBitVector::constant(shamt, 0)));
    }
  }
  ADD_CONS(retval)
  d.constraints.push_back(retval);
}

void punpckldqHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {


  SymBool retval =   E_dest[31][0]   == E_src1[31][0];
  retval = retval &  E_dest[63][32]  == E_src2[31][0];
  retval = retval &  E_dest[95][64]  == E_src1[63][32];
  retval = retval &  E_dest[127][96] == E_src2[63][32];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);

}


void punpcklwdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {


  SymBool retval = (E_dest)[15][0] == (E_src1)[15][0];
  retval = retval & (E_dest)[31][16] == (E_src2)[15][0];
  retval = retval & (E_dest)[47][32] == (E_src1)[31][16];
  retval = retval & (E_dest)[63][48] == (E_src2)[31][16];
  retval = retval & (E_dest)[79][64] == (E_src1)[47][32];
  retval = retval & (E_dest)[95][80] == (E_src2)[47][32];
  retval = retval & (E_dest)[111][96] == (E_src1)[63][48];
  retval = retval & (E_dest)[127][112] == (E_src2)[63][48];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);

}


void pxorHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {



  auto E_result = vc_bvXorExpr(E_src1, E_src2 );
  SymBool retval = (E_dest) == (E_result);
  ADD_CONS(retval);
  d.constraints.push_back(retval);
}

void rclHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {



  auto E_arg = vc_boolToBVExpr(getBoolExpr(V_CF, d.pre_suffix, d.Vn)) || E_src1;
  auto retval = rotamt!=0 ?
                E_dest == ((E_arg)[bitWidth-rotamt][0] || (E_arg)[bitWidth][bitWidth+1 - rotamt])[bitWidth-1][0]
                : E_dest == E_src1;

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  if(rotamt != 0)
  {
    //OF = msb dest xor CF when shift by 1
    if(rotamt == 1)
      setFlag(d.Vnprime, V_OF,
              (E_dest)[bitWidth -1] ^ setFlag(d.Vnprime, V_CF, (E_src1)[bitWidth-rotamt], d.constraints, d.post_suffix),
              d.constraints, d.post_suffix);
    else
      setFlag(d.Vnprime, V_CF, (E_src1)[bitWidth-rotamt], d.constraints, d.post_suffix);
  }
  else
  {
    //when rotamt is 0, preserve CF and OF
    setFlag(d.Vnprime, V_CF, getBoolExpr(V_CF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
    setFlag(d.Vnprime, V_OF, getBoolExpr(V_OF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  }

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void rcrHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {


  //OF = MSB xor CF
  if(rotamt == 1)
    setFlag(d.Vnprime, V_OF,
            E_src1[bitWidth -1] ^ getBoolExpr(V_CF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);

  auto E_arg = vc_boolToBVExpr(getBoolExpr(V_CF, d.pre_suffix, d.Vn)) || E_src1;
  auto retval = rotamt!=0 ?
                E_dest == ((E_arg)[rotamt-1][0] || (E_arg)[bitWidth][rotamt])[bitWidth-1][0]
                : E_dest == E_src1;

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  if(rotamt != 0)
  {
    setFlag(d.Vnprime, V_CF, (E_src1)[rotamt-1], d.constraints, d.post_suffix);
  }
  else
  {
    //when rotamt is 0, preserve CF
    setFlag(d.Vnprime, V_CF, getBoolExpr(V_CF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  }

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void rolHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {

  auto retval = rotamt!=0 ?
                vc_eqExpr(E_dest, (E_src1)[bitWidth-rotamt-1][0] || (E_src1)[bitWidth - 1][bitWidth - rotamt] )
                : (E_dest) == (E_src1);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //CF is LSB of dest
  auto E_cf = setFlag(d.Vnprime, V_CF, (E_dest)[0], d.constraints, d.post_suffix);
  if(rotamt == 1)
    setFlag(d.Vnprime, V_OF,
            (E_dest)[bitWidth -1] ^ E_cf, d.constraints, d.post_suffix);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void rorHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {

  auto retval = rotamt!=0 ?
                vc_eqExpr(E_dest, (E_src1)[rotamt-1][0] || (E_src1)[bitWidth - 1][rotamt] )
                : (E_dest) == (E_src1);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //CF is MSB of dest
  setFlag(d.Vnprime, V_CF, (E_dest)[bitWidth -1], d.constraints, d.post_suffix);
  if(rotamt == 1)
    setFlag(d.Vnprime, V_OF,
            E_dest[bitWidth -1] ^ E_dest[bitWidth -2], d.constraints, d.post_suffix);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void sahfHandler(v_data d) {


  auto E_src = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE);
  SymBool retval = SymBool::_true();
  retval = retval & (E_src)[15] == getBoolExpr(V_SF, d.post_suffix, d.Vnprime);
  retval = retval & (E_src)[14] == getBoolExpr(V_ZF, d.post_suffix, d.Vnprime);
  retval = retval & (E_src)[10] == getBoolExpr(V_PF, d.post_suffix, d.Vnprime);
  retval = retval & (E_src)[8] == getBoolExpr(V_CF, d.post_suffix, d.Vnprime);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

//shamt has been masked
void sarHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {


  SymBool retval;
  if( shamt <= bitWidth )
  {
    if(shamt != 0 && shamt<bitWidth)
    {
      auto E_result = SymBitVector::var(bitWidth, ("SARTEMP"+d.pre_suffix+itoa(d.instr_no)).c_str());
      auto E_then = vc_eqExpr(E_result, SymBitVector::constant(shamt, -1) || (E_src1)[bitWidth-1][shamt] );
      auto E_else = vc_eqExpr(E_result, SymBitVector::constant(shamt, 0) || (E_src1)[bitWidth-1][shamt] );
      retval = vc_iteExpr((E_src1)[bitWidth - 1], E_then, E_else);
      retval = retval & (E_result) == (E_dest);
    }
    else if(shamt == 0)
      retval = (E_dest) == (E_src1);
    else
      retval = vc_eqExpr(E_dest,
                         vc_iteExpr((E_src1)[bitWidth - 1], SymBitVector::constant(bitWidth, -1), SymBitVector::constant(bitWidth, 0)));

    if(dest_is_reg && bitWidth < V_UNITSIZE)
    {
      SS_Id id_dest = getRegisterFromInstr(d.instr,0);
      retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
    }
    if(shamt != 0)
    {
      if(shamt == 1)
        setFlag(d.Vnprime, V_OF, SymBool::_false(), d.constraints, d.post_suffix);
      setFlag(d.Vnprime, V_CF, (E_src1)[shamt - 1], d.constraints, d.post_suffix);
      setSFPFZF(E_dest, d, bitWidth);
    }
    else
      preserveAllFlags(d);
  }
  else
  {
    retval = vc_eqExpr(E_dest,
                       vc_iteExpr((E_src1)[bitWidth - 1], SymBitVector::constant(bitWidth, -1), SymBitVector::constant(bitWidth, 0)));
    setSFPFZF(E_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}



//Arithmetic shift right by a variable.
//if variable==0 then shift by 0 else if variable == 1 then shift by 1 else ...
void sarVarHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_shamt, bool dest_is_reg=true) {
  //assert((bitWidth == 32  || bitWidth == 64) && "Unhandled CF");

  //assume E_shamt is less than bitWidth
  //cout << "DEST " << E_dest <<  "SRC " << E_src1 <<  "SHAMT " << E_shamt <<  endl ;
  auto res = vc_iteExpr((E_src1)[bitWidth - 1], SymBitVector::constant(bitWidth, -1), SymBitVector::constant(bitWidth, 0));
  for( int i=bitWidth - 1; i>=0; i-- ) {
    //    cout << "In SAR VAR handler " << endl ;
    res = vc_iteExpr(
            vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, i)),
            constructAShrByConstant(i, E_src1, bitWidth),
            res);
    //    cout << res;
  }


  SymBool retval = (E_dest) == (res);//vc_bvVar32RightShiftExpr(E_shamt, E_src1);
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif


  //complicated handling of flags

  auto sign = SymBool::var((idToStr(V_SF)+d.post_suffix+itoa(d.Vnprime.get(V_SF))).c_str());
  auto zero = SymBool::var((idToStr(V_ZF)+d.post_suffix+itoa(d.Vnprime.get(V_ZF))).c_str());
  auto parity = SymBool::var((idToStr(V_PF)+d.post_suffix+itoa(d.Vnprime.get(V_PF))).c_str());
  auto carry = SymBool::var((idToStr(V_CF)+d.post_suffix+itoa(d.Vnprime.get(V_CF))).c_str());
  auto overflow = SymBool::var((idToStr(V_OF)+d.post_suffix+itoa(d.Vnprime.get(V_OF))).c_str());

  auto preserveall =  (sign == getBoolExpr(V_SF, d.pre_suffix, d.Vn)) &
                      (zero == getBoolExpr(V_ZF, d.pre_suffix, d.Vn)) &
                      (parity == getBoolExpr(V_PF, d.pre_suffix, d.Vn)) &
                      (carry == getBoolExpr(V_CF, d.pre_suffix, d.Vn)) &
                      (overflow == getBoolExpr(V_OF, d.pre_suffix, d.Vn));

  auto setsfpfzf = sign == (E_dest)[bitWidth - 1];
  setsfpfzf = setsfpfzf, zero == vc_eqExpr(E_dest, SymBitVector::constant(bitWidth, 0));
  auto REGPOST = E_dest;
  auto E_temp_parity_1 = REGPOST[0] ^ REGPOST[1];
  auto E_temp_parity_2 = REGPOST[2] ^ REGPOST[3];
  auto E_temp_parity_3 = REGPOST[4] ^ REGPOST[5];
  auto E_temp_parity_4 = REGPOST[6] ^ REGPOST[7];
  auto E_temp_parity_5 = E_temp_parity_1 ^ E_temp_parity_2;
  auto E_temp_parity_6 = E_temp_parity_3 ^ E_temp_parity_4;
  auto E_temp_parity_7 = !(E_temp_parity_5 ^ E_temp_parity_6);

  setsfpfzf = (setsfpfzf) & (parity == E_temp_parity_7);

  auto carryexpr = carry == getBoolExpr(V_CF, d.pre_suffix, d.Vn);
  for(int j = bitWidth - 1; j>=1; j--)
  {
    carryexpr = vc_iteExpr(E_shamt == SymBitVector::constant(bitWidth, j),  carry == (E_src1)[j - 1], carryexpr);

  }
  //If shamt is greater than bitWidth then carry is undefined
  carryexpr = vc_iteExpr(vc_bvGtExpr(E_shamt, SymBitVector::constant(bitWidth, bitWidth)), SymBool::_true(), carryexpr);
  auto temp = vc_iteExpr( E_shamt == SymBitVector::constant(bitWidth, 0),
                          preserveall,
                          setsfpfzf & carryexpr &
                          vc_impliesExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 1)), !overflow)
                        );

  retval = (temp) & (retval);
  d.constraints.push_back(retval);
}




void sbbHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {



  auto E_result = SymBitVector::var(bitWidth+2, ("SBBTEMP"+d.pre_suffix+itoa(d.instr_no)).c_str());
  auto E_arg1 = SymBitVector::constant(2, 0) || E_src1;
  auto E_arg2 = SymBitVector::constant(2, 0) || vc_bvNotExpr(E_src2);
  auto E_carry = SymBitVector::var(bitWidth+2, ("BORROW"+d.pre_suffix+itoa(d.instr_no)).c_str());

  SymBool retval = (E_carry)[0] == !(getBoolExpr(V_CF, d.pre_suffix, d.Vn));
  retval = retval & vc_eqExpr((E_carry)[bitWidth+1][1],  SymBitVector::constant(1, 0) ||SymBitVector::constant(bitWidth, 0));

  retval = retval & vc_eqExpr(E_result,vc_bvPlusExpr(bitWidth+2, vc_bvPlusExpr(bitWidth+2, E_arg1, E_arg2), E_carry));
  retval = retval & E_dest == (E_result)[bitWidth-1][0];

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime, V_OF, getOFExpr((E_arg1)[bitWidth - 1], (E_arg2)[bitWidth - 1],
                                     (E_result)[bitWidth - 1]), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, !(E_result[bitWidth] | E_result[bitWidth+1]), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}


void setccHandler(v_data d, string cc, Expr E_dest, bool dest_is_reg) {


  auto pred = get_condition_predicate(d, cc);

  // If the predicate is true, then we set the destination equal to 1
  // and otherwise to 0
  auto setif = vc_iteExpr(pred,
                          vc_eqExpr(E_dest, SymBitVector::constant(8, 1)),
                          vc_eqExpr(E_dest, SymBitVector::constant(8, 0)));
  d.constraints.push_back(setif);

  // Preserve the other bits in registers
  if (dest_is_reg) {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    auto preserve = UnmodifiedBitsPreserve(id_dest, d, 8);
    d.constraints.push_back(preserve);
  }

}


void shlHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {



  SymBool retval;
  if(shamt <= bitWidth)
  {
    if(shamt == 0) {
      retval = (E_dest) == (E_src1);
    }
    else if(shamt < bitWidth) {
      retval = vc_eqExpr(E_dest, (E_src1)[bitWidth-shamt-1][0] || SymBitVector::constant(shamt, 0) );
    }
    else {
      retval = vc_eqExpr(E_dest, SymBitVector::constant(bitWidth, 0));
    }

    //cout << E_dest << E_src1 <<  retval;cout << shamt << endl ;

    if(dest_is_reg && bitWidth < V_UNITSIZE)
    {
      SS_Id id_dest = getRegisterFromInstr(d.instr,0);
      retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
    }
    if(shamt != 0)
    {
      //OF = msb dest xor CF when shift by 1
      if(shamt == 1)
        setFlag(d.Vnprime, V_OF,
                E_dest[bitWidth -1] ^ setFlag(d.Vnprime, V_CF, (E_src1)[bitWidth-shamt], d.constraints, d.post_suffix),
                d.constraints, d.post_suffix);
      else
      {
        //            setFlag(d.Vnprime, V_OF, getBoolExpr(V_OF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
        setFlag(d.Vnprime, V_CF, (E_src1)[bitWidth-shamt], d.constraints, d.post_suffix);
      }
      setSFPFZF(E_dest, d, bitWidth);
    }
    else {
      preserveAllFlags(d);
    }
  }
  else
  {
    retval = E_dest == SymBitVector::constant(bitWidth, 0);
    setSFPFZF(E_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
}


void shldHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_dest_pre, Expr E_src, bool dest_is_reg=true) {


  SymBool retval;
  shamt = (bitWidth==64) ? (shamt & 0x3f) : shamt & (0x1f);
  if(shamt != 0)
  {
    if(shamt <=bitWidth)
    {
      retval = vc_eqExpr(E_dest, (E_dest_pre)[bitWidth-shamt-1][0] || (E_src)[bitWidth-1][bitWidth-shamt]  );
      if(dest_is_reg && bitWidth < V_UNITSIZE)
      {
        SS_Id id_dest = getRegisterFromInstr(d.instr,0);
        retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);

      }
      // cout << "Adding constraint " << retval << endl;
      d.constraints.push_back(retval);
      setFlag(d.Vnprime, V_CF, (E_dest_pre)[bitWidth-shamt], d.constraints, d.post_suffix);
      setSFPFZF(E_dest, d, bitWidth);
      if(shamt==1)
      {
        setFlag(d.Vnprime, V_OF,
                (E_dest)[bitWidth -1] ^ (E_dest_pre)[bitWidth -1], d.constraints, d.post_suffix);
      }
    }
  }
  else
  {
    retval = (E_dest) == (E_dest_pre);
    d.constraints.push_back(retval);
    //cout << "Adding constraint " << retval << endl;
    preserveAllFlags(d);
  }
}

//deal with flags here
void shldHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_shamt_pre, bool dest_is_reg=true) {

  Expr E_shamt = (SymBitVector::constant(bitWidth - 8, 0) || E_shamt_pre) &
                 SymBitVector::constant(bitWidth, bitWidth -1);

  auto res = vc_iteExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 0)), E_dest_pre, SymBitVector::constant(bitWidth, 0)) ;
  for( unsigned int i=1; i<=bitWidth -1; i++ ) {
    res = vc_iteExpr(
            vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, i)),
            (E_dest_pre)[bitWidth-i-1][0] || (E_src)[bitWidth-1][bitWidth-i] ,
            res);
  }
  SymBool retval = (E_dest) == (res);
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
}


void shlVarHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, bool dest_is_reg=true) {


  if(bitWidth != 32 && bitWidth != 64)
    throw VALIDATOR_ERROR("Only bitwidth 32 and 64 supported for shl");
  Expr  E_shamt = vc_bvAndExpr(SymBitVector::constant(bitWidth, bitWidth - 1), (regExprWVN(rcx, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth -1][0]);
  //assume E_shamt is less than bitWidth
  auto res = vc_iteExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 0)), E_src1, SymBitVector::constant(bitWidth, 0)) ;
  //cout << "DEST " << E_dest <<  "SRC " << E_src1 <<  "SHAMT " << E_shamt <<  endl ;
  for( unsigned int i=1; i<=bitWidth -1; i++ ) {
    //cout << "In SHL VAR handler " << endl ;
    res = vc_iteExpr(
            vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, i)),
            (E_src1)[bitWidth-i-1][0] || SymBitVector::constant(i, 0) ,
            res);
    //cout << res;
  }

  SymBool retval = (E_dest) == (res);
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;

  auto sign = SymBool::var((idToStr(V_SF)+d.post_suffix+itoa(d.Vnprime.get(V_SF))).c_str());
  auto zero = SymBool::var((idToStr(V_ZF)+d.post_suffix+itoa(d.Vnprime.get(V_ZF))).c_str());
  auto parity = SymBool::var((idToStr(V_PF)+d.post_suffix+itoa(d.Vnprime.get(V_PF))).c_str());
  auto carry = SymBool::var((idToStr(V_CF)+d.post_suffix+itoa(d.Vnprime.get(V_CF))).c_str());
  auto overflow = SymBool::var((idToStr(V_OF)+d.post_suffix+itoa(d.Vnprime.get(V_OF))).c_str());

  auto preserveall =
    (sign == getBoolExpr(V_SF, d.pre_suffix, d.Vn)) &
    (zero == getBoolExpr(V_ZF, d.pre_suffix, d.Vn)) &
    (parity == getBoolExpr(V_PF, d.pre_suffix, d.Vn)) &
    (carry == getBoolExpr(V_CF, d.pre_suffix, d.Vn)) &
    (overflow == getBoolExpr(V_OF, d.pre_suffix, d.Vn));

  auto setsfpfzf = sign == (E_dest)[bitWidth - 1];
  setsfpfzf = setsfpfzf & (zero == (E_dest == SymBitVector::constant(bitWidth, 0)));
  auto REGPOST = E_dest;
  auto E_temp_parity_1 = REGPOST[0] ^ REGPOST[1];
  auto E_temp_parity_2 = REGPOST[2] ^ REGPOST[3];
  auto E_temp_parity_3 = REGPOST[4] ^ REGPOST[5];
  auto E_temp_parity_4 = REGPOST[6] ^ REGPOST[7];
  auto E_temp_parity_5 = E_temp_parity_1 ^ E_temp_parity_2;
  auto E_temp_parity_6 = E_temp_parity_3 ^ E_temp_parity_4;
  auto E_temp_parity_7 = !(E_temp_parity_5 ^ E_temp_parity_6);

  setsfpfzf = (setsfpfzf) & (parity == E_temp_parity_7);

  auto carryexpr = carry ==  getBoolExpr(V_CF, d.pre_suffix, d.Vn) ;

  for(int j = bitWidth - 1; j>=1; j--)
  {
    carryexpr = vc_iteExpr(E_shamt == SymBitVector::constant(bitWidth, j),
                           carry == (E_src1)[bitWidth - j],
                           carryexpr);
  }
  carryexpr = vc_iteExpr(E_shamt > SymBitVector::constant(bitWidth, bitWidth),
                         SymBool::_true(),
                         carryexpr);

  auto temp = vc_iteExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 0)),
                         preserveall,
                         setsfpfzf & carryexpr &
                         vc_impliesExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 1)),
                                        overflow == (E_dest)[bitWidth -1] ^ carry
                                       )
                        );

  retval = (temp) & (retval);
  d.constraints.push_back(retval);
}


void shrHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1, bool dest_is_reg=true) {


  SymBool retval;
  if(shamt <= bitWidth)
  {
    retval =  vc_eqExpr(E_dest, vc_bvRightShiftExprExpr(bitWidth, E_src1, SymBitVector::constant(bitWidth ,shamt)));
#ifdef DEBUG_VALIDATOR
    cout << E_dest << E_src1 << retval << shamt;
#endif

    if(dest_is_reg && bitWidth < V_UNITSIZE)
    {
      SS_Id id_dest = getRegisterFromInstr(d.instr,0);
      retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
    }
    if(shamt != 0)
    {
      //OF = msb dest xor CF when shift by 1
      if(shamt == 1)
        setFlag(d.Vnprime, V_OF,
                (E_src1)[bitWidth -1],
                d.constraints, d.post_suffix);
      setFlag(d.Vnprime, V_CF, (E_src1)[bitWidth-shamt], d.constraints, d.post_suffix);
      setSFPFZF(E_dest, d, bitWidth);
    }
    else
      preserveAllFlags(d);
  }
  else
  {
    retval = vc_eqExpr(E_dest, SymBitVector::constant(bitWidth, 0));
    setSFPFZF(E_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
}

void shrVarHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_shamt, bool dest_is_reg=true) {


  //assume E_shamt is less than bitWidth
  auto res = vc_iteExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 0)), E_src1, SymBitVector::constant(bitWidth, 0)) ;
  //cout << "DEST " << E_dest <<  "SRC " << E_src1 <<  "SHAMT " << E_shamt <<  endl ;
  for(unsigned int i=1; i<=bitWidth -1; i++ ) {

    res = vc_iteExpr(
            vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, i)),
            vc_bvRightShiftExprExpr(bitWidth, E_src1, SymBitVector::constant(bitWidth, i)),
            res);
  }

  SymBool retval = (E_dest) == (res);
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;

  auto sign = SymBool::var((idToStr(V_SF)+d.post_suffix+itoa(d.Vnprime.get(V_SF))).c_str());
  auto zero = SymBool::var((idToStr(V_ZF)+d.post_suffix+itoa(d.Vnprime.get(V_ZF))).c_str());
  auto parity = SymBool::var((idToStr(V_PF)+d.post_suffix+itoa(d.Vnprime.get(V_PF))).c_str());
  auto carry = SymBool::var((idToStr(V_CF)+d.post_suffix+itoa(d.Vnprime.get(V_CF))).c_str());
  auto overflow = SymBool::var((idToStr(V_OF)+d.post_suffix+itoa(d.Vnprime.get(V_OF))).c_str());

  auto preserveall =  (sign == getBoolExpr(V_SF, d.pre_suffix, d.Vn)) &
                      (zero == getBoolExpr(V_ZF, d.pre_suffix, d.Vn)) &
                      (parity == getBoolExpr(V_PF, d.pre_suffix, d.Vn)) &
                      (carry == getBoolExpr(V_CF, d.pre_suffix, d.Vn)) &
                      (overflow == getBoolExpr(V_OF, d.pre_suffix, d.Vn));

  auto setsfpfzf = sign == (E_dest)[bitWidth - 1];
  setsfpfzf = setsfpfzf & (zero == (E_dest == SymBitVector::constant(bitWidth, 0)));
  auto REGPOST = E_dest;
  auto E_temp_parity_1 = REGPOST[0] ^ REGPOST[1];
  auto E_temp_parity_2 = REGPOST[2] ^ REGPOST[3];
  auto E_temp_parity_3 = REGPOST[4] ^ REGPOST[5];
  auto E_temp_parity_4 = REGPOST[6] ^ REGPOST[7];
  auto E_temp_parity_5 = E_temp_parity_1 ^ E_temp_parity_2;
  auto E_temp_parity_6 = E_temp_parity_3 ^ E_temp_parity_4;
  auto E_temp_parity_7 = !(E_temp_parity_5 ^ E_temp_parity_6);

  setsfpfzf = (setsfpfzf) & (parity == E_temp_parity_7);

  auto carryexpr = carry ==  getBoolExpr(V_CF, d.pre_suffix, d.Vn) ;

  for(int j = bitWidth - 1; j>=1; j--)
  {
    carryexpr = vc_iteExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, j)),  carry == (E_src1)[j - 1], carryexpr);

  }
  carryexpr = vc_iteExpr(vc_bvGtExpr(E_shamt, SymBitVector::constant(bitWidth, bitWidth)), SymBool::_true(), carryexpr);


  auto temp = vc_iteExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 0)),
                         preserveall,
                         setsfpfzf & carryexpr &
                         vc_impliesExpr(vc_eqExpr(E_shamt, SymBitVector::constant(bitWidth, 1)),
                                        overflow == (E_src1)[bitWidth -1]
                                       ));

  retval = (temp) & (retval);
  d.constraints.push_back(retval);
}


void shufpsHandler(v_data d, int imm, Expr E_dest, Expr E_src1, Expr E_src2, Expr E_imm) {

  // Macro for add A[ha:la] <- B[hb:lb]
#define SHUFPS_CON(A, ha, la, B, hb, lb) \
        (d.constraints.push_back(\
           vc_eqExpr(\
             (A)[ha][la],\
             (B)[hb][lb])));




  // Implemented following intel manual's case statement
  switch(imm & 0x3) {
  case 0:
    SHUFPS_CON(E_dest, 31, 0, E_src1, 31, 0);
    break;
  case 1:
    SHUFPS_CON(E_dest, 31, 0, E_src1, 63, 32);
    break;
  case 2:
    SHUFPS_CON(E_dest, 31, 0, E_src1, 95, 64);
    break;
  case 3:
    SHUFPS_CON(E_dest, 31, 0, E_src1, 127, 96);
    break;
  default:
    throw VALIDATOR_ERROR("internal error in shufps");
  }

  switch((imm >> 2) & 0x3) {
  case 0:
    SHUFPS_CON(E_dest, 63, 32, E_src1, 31, 0);
    break;
  case 1:
    SHUFPS_CON(E_dest, 63, 32, E_src1, 63, 32);
    break;
  case 2:
    SHUFPS_CON(E_dest, 63, 32, E_src1, 95, 64);
    break;
  case 3:
    SHUFPS_CON(E_dest, 63, 32, E_src1, 127, 96);
    break;
  default:
    throw VALIDATOR_ERROR("internal error in shufps");
  }

  switch((imm >> 4) & 0x3) {
  case 0:
    SHUFPS_CON(E_dest, 95, 64, E_src2, 31, 0);
    break;
  case 1:
    SHUFPS_CON(E_dest, 95, 64, E_src2, 63, 32);
    break;
  case 2:
    SHUFPS_CON(E_dest, 95, 64, E_src2, 95, 64);
    break;
  case 3:
    SHUFPS_CON(E_dest, 95, 64, E_src2, 127, 96);
    break;
  default:
    throw VALIDATOR_ERROR("internal error in shufps");
  }

  switch((imm >> 6) & 0x3) {
  case 0:
    SHUFPS_CON(E_dest, 127, 96, E_src2, 31, 0);
    break;
  case 1:
    SHUFPS_CON(E_dest, 127, 96, E_src2, 63, 32);
    break;
  case 2:
    SHUFPS_CON(E_dest, 127, 96, E_src2, 95, 64);
    break;
  case 3:
    SHUFPS_CON(E_dest, 127, 96, E_src2, 127, 96);
    break;
  default:
    throw VALIDATOR_ERROR("internal error in shufps");
  }

#undef SHUFPS_CON
}


void subHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {


  auto E_arg1 = SymBitVector::constant(1,0) || E_src1;
  auto E_arg2 = SymBitVector::constant(1,0) || E_src2;

  SymBool retval = E_dest == (E_arg1 - E_arg2)[bitWidth - 1][0];
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime, V_OF, getOFExpr((E_src1)[bitWidth - 1], E_src2[bitWidth - 1], (E_dest)[bitWidth - 1]),
          d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, vc_bvLtExpr(E_src1, E_src2), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}


void subdHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  throw VALIDATOR_ERROR("uninterpreted function");
  /*
  #define DSUBPATT(x)\
  {\
    auto E_result = (E_dest)[x+63][x];\
    auto E_arg1 = (E_src1)[x+63][x];\
    auto E_arg2 = (E_src2)[x+63][x];\
    retval = retval & (E_result == dsub(E_arg1,E_arg2));\
  }


  uint bitWidth = numops*64;
  z3::sort fl = vc->bv_sort(64);
  z3::func_decl dsub = z3::function("subd", fl, fl, fl);
  SymBool retval = SymBool::_true();
  if(numops==1)
  {
    DSUBPATT(0)
  }
  else
  {
    DSUBPATT(0)
    DSUBPATT(64)
  }
  if(dest_is_reg && numops == 1)
  {
    SS_Id id_dest = XMM_BEG+getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  #undef DSUBPATT
  */
}


void subfHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  throw VALIDATOR_ERROR("uninterpreted function");
  /*
  #define FSUBPATT(x)\
  {\
    auto E_result = (E_dest)[x+31][x];\
    auto E_arg1 = (E_src1)[x+31][x];\
    auto E_arg2 = (E_src2)[x+31][x];\
    retval = retval & (E_result == fsub(E_arg1,E_arg2));\
  }


  uint bitWidth = numops*32;
  z3::sort fl = vc->bv_sort(32);
  z3::func_decl fsub = z3::function("subf", fl, fl, fl);
  SymBool retval = SymBool::_true();
  if(numops==1)
  {
    FSUBPATT(0)
  }
  else
  {
    FSUBPATT(0)
    FSUBPATT(32)
    FSUBPATT(64)
    FSUBPATT(96)
  }
  if(dest_is_reg && numops == 1)
  {
    SS_Id id_dest = XMM_BEG+getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  #ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
  #endif
  d.constraints.push_back(retval);

  #undef FSUBPATT
  */
}


void subpsHandler(v_data d, unsigned int numops, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2) {


  throw VALIDATOR_ERROR("uninterpreted function");

  /*
  // Declare uninterpreted function
  z3::sort dword = vc->bv_sort(32);
  z3::func_decl subps_subf = z3::function("subps_subf", dword, dword, dword);

  // Generate these constraints:
  // DEST[31:0]   <- SRC1[31:0]   - SRC2[31:0]
  // DEST[63:32]  <- SRC1[63:32]  - SRC2[63:32]
  // DEST[95:64]  <- SRC1[95:64]  - SRC2[95:64]
  // DEST[127:96] <- SRC1[127:96] - SRC2[127:96]
  for(size_t i = 0; i < 128; i += 32) {

    auto dst = (E_dest)[i+31][i];
    Expr s1  = (E_src1)[i+31][i];
    Expr s2  = (E_src2)[i+31][i];
    auto equ = (dst == subps_subf(s1, s2));

    d.constraints.push_back(equ);
  }
  */

}



void testHandler(v_data d, unsigned int bitWidth, Expr E_src1, Expr E_src2) {



  auto E_dest = vc_bvAndExpr(E_src1, E_src2 );

  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}



void ucomissHandler(v_data d, Expr E_src1, Expr E_src2) {

  throw VALIDATOR_ERROR("uninterpreted function");

  /*
  E_src1 = (E_src1)[31][0];
  E_src2 = (E_src2)[31][0];
  z3::sort fl = vc->bv_sort(32);
  z3::sort cmp_res = vc->bv_sort(2);
  z3::func_decl fcmp = z3::function("cmpf", fl, fl, cmp_res);
  auto E_cmp_res = fcmp(E_src1, E_src2);
  setFlag(d.Vnprime,V_CF, !((E_cmp_res)[0], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, !(vc_xorExpr((E_cmp_res)[0],(E_cmp_res)[1], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, vc_andExpr(vc_bvBoolExtract(E_cmp_res,0), vc_bvBoolExtract(E_cmp_res,1)), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);
  */

}


void ucomisdHandler(v_data d, Expr E_src1, Expr E_src2) {

  throw VALIDATOR_ERROR("uninterpreted function");

  /*
  E_src1 = (E_src1)[63][0];
  E_src2 = (E_src2)[63][0];
  z3::sort fl = vc->bv_sort(64);
  z3::sort cmp_res = vc->bv_sort(2);
  z3::func_decl fcmp = z3::function("cmpd", fl, fl, cmp_res);
  auto E_cmp_res = fcmp(E_src1, E_src2);
  setFlag(d.Vnprime,V_CF, !((E_cmp_res)[0], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, !(vc_xorExpr((E_cmp_res)[0],(E_cmp_res)[1], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, vc_andExpr(vc_bvBoolExtract(E_cmp_res,0), vc_bvBoolExtract(E_cmp_res,1)), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);
  */

}

void umul1Handler(v_data d, unsigned int bitWidth, Expr E_src2) {


  if(bitWidth > 8)
  {
    E_src2 = SymBitVector::constant(bitWidth, 0) || E_src2 ;
    auto E_src1 = SymBitVector::constant(bitWidth, 0) || (regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
    auto E_rdx = (regExprWVN(rdx, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_rax = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_dest = E_rdx || E_rax;

    auto E_result = vc_bvMultExpr(2*bitWidth, E_src1, E_src2 );
    SymBool retval = (E_dest) == (E_result);

    if( bitWidth < V_UNITSIZE)
    {
      retval = retval &  UnmodifiedBitsPreserve(rdx, d, bitWidth);
      retval = retval &  UnmodifiedBitsPreserve(rax, d, bitWidth);

    }

#ifdef DEBUG_VALIDATOR
    cout << "Adding constraint " << retval << endl;
#endif
    d.constraints.push_back(retval);

    auto E_flag_result = !(vc_eqExpr(E_rdx,  SymBitVector::constant(bitWidth, 0)));
    setFlag(d.Vnprime,V_OF, setFlag(d.Vnprime,V_CF, E_flag_result, d.constraints, d.post_suffix), d.constraints, d.post_suffix);
    //Rest flags are undefined
  }
  else
  {
    E_src2 = SymBitVector::constant(bitWidth, 0) || E_src2 ;
    auto E_src1 = SymBitVector::constant(bitWidth, 0) || (regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
    auto E_rdx = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[(2*bitWidth) - 1][bitWidth];
    auto E_rax = (regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE))[bitWidth - 1][0];
    auto E_dest = E_rdx || E_rax;

    auto E_result = vc_bvMultExpr(2*bitWidth, E_src1, E_src2 );
    SymBool retval = (E_dest) == (E_result);

    retval = retval &  UnmodifiedBitsPreserve(rax, d, 2*bitWidth);

#ifdef DEBUG_VALIDATOR
    cout << "Adding constraint " << retval << endl;
#endif
    d.constraints.push_back(retval);

    auto E_flag_result = !(vc_eqExpr(E_rdx,  SymBitVector::constant(bitWidth, 0)));
    setFlag(d.Vnprime,V_OF, setFlag(d.Vnprime,V_CF, E_flag_result, d.constraints, d.post_suffix), d.constraints, d.post_suffix);
    //Rest flags are undefined
  }
}

/* The src1 and src2 are the same as the src1 and src2 in the "Operation"
 * section of the Intel manual.  In the case of two arguments, src1 is the same
 * as dest.  We need the bitWidth to disambiguate between the different
 * operations and the three_args argument to tell us if there are three
 * arguments or two.  The three argument version is VEX prefixed and behaves
 * differently. */
void unpcklpdHandler(v_data d, unsigned int bitWidth, bool three_args, Expr E_dest, Expr E_src1, Expr E_src2) {


  if (three_args || bitWidth != 128) {
    VALIDATOR_ERROR("Berkeley only knows how to handle unpcklpd with two arguments and bit width 128.");
  }

  /* Force bits 0..63 of destination to match bits 0..63 of source1. */
  auto lower_bits = (E_dest)[63][0] == (E_src1)[63][0];
  d.constraints.push_back(lower_bits);
  ADD_CONS(lower_bits);

  /* Force bits 64..127 of destination to match bits 0..63 of source2. */
  auto upper_bits = (E_dest)[127][64] == (E_src2)[63][0];
  d.constraints.push_back(upper_bits);
  ADD_CONS(upper_bits);

}

void unpcklpsHandler(v_data d, unsigned int bitWidth, bool three_args, Expr E_dest, Expr E_src1, Expr E_src2) {



  if ( three_args || bitWidth != 128 ) {
    VALIDATOR_ERROR("unpcklps only supported in form 'unpcklps xmm1, xmm2/m128'")
  }

  // DEST[31:0] <- SRC1[31:0]
  auto bits_31_0 = (E_dest)[31][0] == (E_src1)[31][0];

  // DEST[63:32] <- SRC2[31:0]
  auto bits_63_32 = (E_dest)[63][32] == (E_src2)[31][0];

  // DEST[95:64] <- SRC1[63:32]
  auto bits_95_64 = (E_dest)[95][64] == (E_src1)[63][32];

  // DEST[127:96] <- SRC2[63:32]
  auto bits_127_96 = (E_dest)[127][96] == (E_src2)[63][32];

  // Add the four constraints
  d.constraints.push_back(bits_31_0);
  d.constraints.push_back(bits_63_32);
  d.constraints.push_back(bits_95_64);
  d.constraints.push_back(bits_127_96);

}



void vaddsdHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {


  adddHandler(d, numops,E_dest,E_src1, E_src2, dest_is_reg);
  SymBool retval = (E_dest)[127][64] == (E_src1)[127][64];

  ADD_CONS(retval);
  d.constraints.push_back(retval);

}


void vpunpcklqdqHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {



  // INTERLEAVE_QWORDS(SRC1, SRC2)
  // DEST[63:0] <- SRC1[63:0]
  auto bits_63_0 = E_dest[63][0] == E_src1[63][0];

  // DEST[127:64] <- SRC2[63:0]
  auto bits_127_64 = E_dest[127][64] == E_src2[63][0];

  d.constraints.push_back(bits_63_0);
  d.constraints.push_back(bits_127_64);


}

void xaddHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_src_post, bool dest_is_reg=true) {


  addHandler(d, bitWidth, E_dest, E_dest_pre, E_src, dest_is_reg);
  SymBool retval = (E_src_post) == (E_dest_pre);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);

    id_dest = getRegisterFromInstr(d.instr,d.instr.arity()-1);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  ADD_CONS(retval);
  d.constraints.push_back(retval);
}

void xchgHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_src_post,  bool dest_is_reg=true) {



  SymBool retval = (E_dest) == (E_src);
  retval = retval & (E_dest_pre) == (E_src_post);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);

    id_dest = getRegisterFromInstr(d.instr,d.instr.arity()-1);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  ADD_CONS(retval);
  d.constraints.push_back(retval);
}


void xorHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {



  auto E_result = E_src1 ^ E_src2;
  SymBool retval = (E_dest) == (E_result);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  ADD_CONS(retval);
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}

void xorpsHandler(v_data d, unsigned int numops, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2) {

  if (bitWidth != 128 || numops != 2)
    VALIDATOR_ERROR("xorps only supported for two 128-bit operands");



  // DEST[127:0] <- SRC1[127:0] ^ SRC2[127:0]
  // note: this only works when bitwidth is 129.
  SymBool retval = E_dest == vc_bvXorExpr(E_src1, E_src2);

  d.constraints.push_back(retval);
  ADD_CONS(retval);

}


