// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include <sstream>

#include "src/validator/legacy/legacy_handlers.h"
#include "src/validator/legacy/switch.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


#ifdef DEBUG_VALIDATOR
#define ADD_CONS(s) {cout << "Adding constraint: " << endl << s << endl;}
#else
#define ADD_CONS(S)
#endif


#include "src/validator/legacy/helpers.cc"


void andHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {



  auto E_result = vc_bvAndExpr(E_src1, E_src2 );
  SymBool retval = E_dest == E_result;

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


//If E_src[0]==1 then 0 else if E_src[1]==1 then 1 else ...
//A new unconstrained variable if E_src == 0
void bsfHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src) {


  setFlag(d.Vnprime,V_ZF, vc_eqExpr(E_src, SymBitVector::constant(bitWidth, 0)), d.constraints, d.post_suffix);


  //  auto E_result = SymBitVector::var(bitWidth, ("BSFTEMP"+d.pre_suffix+to_string(d.instr_no)).c_str());
  auto E_result = SymBitVector::constant(bitWidth, 0);
  for(int i = (int)bitWidth - 1; i>=0; i-- )
  {
    E_result = vc_iteExpr(E_src[i], SymBitVector::constant(bitWidth, i), E_result);
  }
  SymBool retval = E_dest == E_result;

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


  //  auto E_result = SymBitVector::var(bitWidth, ("BSRTEMP"+d.pre_suffix+to_string(d.instr_no)).c_str());
  auto E_result = SymBitVector::constant(bitWidth, 0);
  for(unsigned int i = 0 ; i<bitWidth; i++ )
  {
    E_result = vc_iteExpr(E_src[i], SymBitVector::constant(bitWidth, i), E_result);
  }
  SymBool retval = E_dest == E_result;

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
    E_result = vc_iteExpr(E_idx == SymBitVector::constant(bitWidth, i), E_operand[i], E_result);
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
                        (E_carry == E_operand[i]) &
                        setBit(E_dest, E_operand, i, vc_bvNotExpr(E_operand[i][i]), bitWidth)
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
                        ( E_carry == E_operand[i]) &
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
                          E_dest == (E_src),
                          E_dest == (E_dest_pre));

  d.constraints.push_back(setif);

  // Preserve the other bits in registers
  if (dest_is_reg && bitWidth < V_UNITSIZE) {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    auto preserve = UnmodifiedBitsPreserve(id_dest, d, bitWidth);
    d.constraints.push_back(preserve);
  }

}

void cmpHandler(v_data d, unsigned int bitWidth, Expr E_src1, Expr E_src2) {


  auto E_dest = SymBitVector::var(bitWidth, ("CMPTEMP"+d.pre_suffix+to_string(d.instr_no)).c_str());
  auto E_arg1 = SymBitVector::constant(1, 0) || E_src1;
  auto E_arg2 = SymBitVector::constant(1, 0) || E_src2;

  SymBool retval = E_dest == (E_arg1 - E_arg2)[bitWidth - 1][0];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
  setFlag(d.Vnprime, V_OF, getMinusOFExpr(E_src1[bitWidth - 1], E_src2[bitWidth - 1],  E_dest[bitWidth - 1]),
          d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, vc_bvLtExpr(E_src1, E_src2), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}



void cmppsHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm) {

#define FCMPPATT(x)\
  {\
    auto E_dest_part = E_dest[x+31][x];\
    auto E_src1 = E_src[x+31][x];\
    auto E_src2 = E_dest_pre[x+31][x];\
    auto E_cmp_res = fcmp(E_src1, E_src2);\
    auto E_gt = !E_cmp_res[1] & E_cmp_res[0]; \
    retval = retval & vc_iteExpr(E_gt, E_dest_part == (ones), E_dest_part == (zeros));\
  }

#define FCMPPATT2(x)\
  {\
    auto E_dest_part = E_dest[x+31][x];\
    auto E_src1 = E_dest_pre[x+31][x];\
    auto E_src2 = E_src[x+31][x];\
    auto E_cmp_res = fcmp(E_src1, E_src2);\
    auto E_gt = !E_cmp_res[1] & E_cmp_res[0]; \
    retval = retval & vc_iteExpr(E_gt, E_dest_part == (zeros), E_dest_part == (ones));\
  }


  imm =imm &0x7;
  if (imm != 1 && imm != 2)
    throw VALIDATOR_ERROR("cmpps is only implemented for immediate of 1 or 2");
  if(imm==1)
  {
    SymFunction fcmp = SymFunction("cmpf", 2, {32, 32});
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
    SymFunction fcmp = SymFunction("cmpf", 2, {32, 32});
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
}

void convert_e_Handler(v_data d, unsigned int bitWidth) {

  if(bitWidth >= 64)
    throw VALIDATOR_ERROR("Internal error: bitWidth should be for the source, not the destination");

  SS_Id id_dest = rax;
  auto E_dest = (regExprWVN(id_dest, d.post_suffix, d.Vnprime, V_UNITSIZE))[2*bitWidth - 1][0];
  auto E_src = (regExprWVN(id_dest, d.pre_suffix, d.Vn, V_UNITSIZE))[bitWidth - 1][0];
  auto E_result = vc_bvSignExtend(E_src, 2*bitWidth);
  SymBool retval = E_dest == E_result;
  if(2*bitWidth < V_UNITSIZE)
    retval = retval & UnmodifiedBitsPreserve(id_dest, d, 2*bitWidth);
#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
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
  auto last_bit_of_src = rax_expr[width - 1][width - 1];

  // Constrain all the bits of the destination register.
  for(int i = 0; i < width; ++i) {
    auto bit_of_dst = rdx_end_expr[i][i];
    auto equal = bit_of_dst == last_bit_of_src;
    d.constraints.push_back(equal);
  }

  // Constrain remaining bits of rdx.
  if (width < 64) {
    auto rdx_start_remaining = rdx_start_expr[63][width];
    auto rdx_end_remaining = rdx_end_expr[63][width];
    auto equal = rdx_start_remaining == rdx_end_remaining;
    d.constraints.push_back(equal);
  }
}

//OF is set if original value is maximum negative value only
// (and thus cycles to positive)
//Decrementing 0 does not set OF
void decHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


#ifdef DEBUG_VALIDATOR
  //cout << E_dest << E_src <<  endl << bitWidth << endl ;
#endif

  auto E_result = E_src - SymBitVector::constant(bitWidth, 1);
  d.constraints.push_back(E_dest == E_result);

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    d.constraints.push_back(UnmodifiedBitsPreserve(id_dest, d, bitWidth));
  }
#ifdef DEBUG_VALIDATOR
  //cout << "Adding constraint " << retval << endl;
#endif

  auto of = E_src[bitWidth-1] &
            E_src[bitWidth-2][0] == SymBitVector::constant(bitWidth-1, 0);

  setFlag(d.Vnprime,V_OF, of, d.constraints, d.post_suffix);
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
    assert(bitWidth == 8);
    auto E_src1 = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE)[15][0];
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

void dppdHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm) {

  imm = imm & 0xFF;


  auto E_temp1 = SymBitVector::var(V_XMMUNIT, ("DPPD_TEMP1"+d.pre_suffix+to_string(d.instr_no)).c_str());
  auto E_temp2 = SymBitVector::var(V_UNITSIZE, ("DPPD_TEMP2"+d.pre_suffix+to_string(d.instr_no)).c_str());
  SymBool retval = SymBool::_true();

  if(imm & 0x10)
    retval = retval & dmul(E_temp1[63][0], E_dest_pre[63][0], E_src[63][0]);
  else
    retval = retval & vc_eqExpr(E_temp1[63][0], SymBitVector::constant(64, 0));

  if(imm & 0x20)
    retval = retval & dmul(E_temp1[127][64], E_dest_pre[127][64], E_src[127][64]);
  else
    retval = retval & vc_eqExpr(E_temp1[127][64], SymBitVector::constant(64, 0));

  retval = retval & dadd(E_temp2, E_temp1[127][64], E_temp1[63][0]);

  if( imm & 0x1)
    retval = retval & E_dest[63][0] == E_temp2;
  else
    retval = retval & vc_eqExpr(E_dest[63][0], SymBitVector::constant(64, 0) );

  if( imm & 0x2)
    retval = retval & E_dest[127][64] == E_temp2;
  else
    retval = retval & vc_eqExpr(E_dest[127][64], SymBitVector::constant(64, 0) );

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
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


void incHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {

  //cout << E_dest << E_src <<  endl << bitWidth << endl ;

  auto E_result = (SymBitVector::constant(1, 0) || E_src) +
                  (SymBitVector::constant(1, 0) || SymBitVector::constant(bitWidth, 1));

  SymBool retval = E_dest == E_result[bitWidth - 1][0];
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


  // The OF flag will be set exactly if the destination is 0x80* (i.e. the src is 0x7f*).
  setFlag(d.Vnprime, V_OF,
          (E_dest[bitWidth - 1] == SymBool::_true()) &
          (E_dest[bitWidth - 2][0] == SymBitVector::constant(bitWidth - 1, 0)),
          d.constraints, d.post_suffix);

  setSFPFZF(E_dest, d, bitWidth);
}


void lahfHandler(v_data d) {


  auto E_rax_post = regExprWVN(rax, d.post_suffix, d.Vnprime, V_UNITSIZE);
  auto E_src = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE);
  SymBool retval = SymBool::_true();
  retval = retval & E_src[63][16] == E_rax_post[63][16];
  retval = retval & E_src[7][0] == E_rax_post[7][0];
  retval = retval & E_rax_post[15] == getBoolExpr(V_SF, d.pre_suffix, d.Vn);
  retval = retval & E_rax_post[14] == getBoolExpr(V_ZF, d.pre_suffix, d.Vn);
  retval = retval & E_rax_post[13] == SymBool::_false();
  retval = retval & E_rax_post[12] == getBoolExpr(V_AF, d.pre_suffix, d.Vn);
  retval = retval & E_rax_post[11]== SymBool::_false();
  retval = retval & E_rax_post[10] == getBoolExpr(V_PF, d.pre_suffix, d.Vn);
  retval = retval & E_rax_post[9] == SymBool::_true();
  retval = retval & E_rax_post[8] == getBoolExpr(V_CF, d.pre_suffix, d.Vn);
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}




void maxpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2) {

  SymFunction fpmax = SymFunction("maxfp", 128, {128, 128});
  auto E_result = fpmax(E_src1, E_src2);
  SymBool retval = E_dest == E_result;
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);
}


void movHandler(v_data d, unsigned int bitWidthTarget, unsigned int bitWidthSource, Expr E_dest, Expr E_src, bool signExtend,  bool dest_is_reg=true) {


  E_dest = E_dest[bitWidthTarget-1][0]; //Noop except for xmm
  if(signExtend && bitWidthTarget>bitWidthSource)
    E_src = vc_bvSignExtend(E_src, bitWidthTarget);
  else if(bitWidthTarget > bitWidthSource)
    E_src = SymBitVector::constant(bitWidthTarget-bitWidthSource, 0) || E_src;
  else if ( bitWidthSource > bitWidthTarget)
    E_src = E_src[bitWidthTarget-1][0];
  SymBool retval = E_dest == E_src;
  if(dest_is_reg /*&& bitWidthTarget < full_size*/)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0) + (is_dest_xmm(E_dest) ? XMM_BEG : 0);
    uint full_size = (is_dest_xmm(E_dest) ? 128 : 64);
    if(bitWidthTarget<full_size)
      retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidthTarget);
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void movhHandler(v_data d, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  SymBool retval = SymBool::_true();
  if(dest_is_reg)
  {
    retval = retval & E_dest[127][64] == E_src[63][0];
    SS_Id id_dest = getRegisterFromInstr(d.instr,0) + (is_dest_xmm(E_dest) ? XMM_BEG : 0);
    auto E_dest_pre = regExprWVN(id_dest, d.pre_suffix, d.Vn, 128);
    retval = retval & E_dest[63][0] == E_dest_pre[63][0];
  }
  else
  {
    retval = retval & E_dest == E_src[127][64];
  }
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}

void negHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  auto E_result = vc_bvUMinusExpr(E_src );
  SymBool retval = E_dest == E_result;
  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime,V_CF, E_src != SymBitVector::constant(bitWidth, 0), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, E_src[bitWidth -1] & E_dest[bitWidth -1], d.constraints, d.post_suffix);
  setSFPFZF(E_result, d, bitWidth);
}

void notHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg=true) {


  auto E_result = vc_bvNotExpr(E_src );
  SymBool retval = E_dest == E_result;
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
    auto equals = E_dest == zero_bv;
    d.constraints.push_back(equals);
    return;
  }

  // If it's between 129 and 255 (inclusive), we copy bits only from src1.
  if (129 <= bits_to_shift && bits_to_shift <= 255) {
    // DEST[0, 255-i] <- SRC1[i-128, 127]  (256 - i bits)

    auto src1_extract = E_src1[127][bits_to_shift - 128];
    auto dest_to_src1 = E_dest[255 - bits_to_shift][0];
    assert(127 - (bits_to_shift - 128) == 255 - bits_to_shift);

    auto dest_src1_equal = dest_to_src1 == src1_extract;
    d.constraints.push_back(dest_src1_equal);

    // DEST[256-i, 127] <- zero (i - 128 bits)
    auto zero = SymBitVector::constant(bits_to_shift-128, 0);
    auto dest_zero = E_dest[127][256 - bits_to_shift];
    assert(bits_to_shift - 128 == 127 - (256 - bits_to_shift) + 1);

    auto equal = dest_zero == zero;
    d.constraints.push_back(equal);

    return;
  }

  // If it's exactly 128 bits, we copy src1 into dest
  if (bits_to_shift == 128) {
    auto equals = E_dest == E_src1;
    d.constraints.push_back(equals);
    return;
  }

  // If it's between 1 and 127 inclusive we copy parts of src1 and src2
  if (1 <= bits_to_shift && bits_to_shift <= 127) {
    // DEST[0, 127-i] = SRC2[i, 127]  (128-i bits)
    auto src2_extract = E_src2[127][bits_to_shift];
    auto dest_to_src2 = E_dest[127-bits_to_shift][0];

    auto dest_src2_equal = dest_to_src2 == src2_extract;
    d.constraints.push_back(dest_src2_equal);

    // DEST[128-i, 127] = SRC1[i-1, 0]  (i bits)
    auto src1_extract = E_src1[bits_to_shift - 1][0];
    auto dest_to_src1 = E_dest[127][128 - bits_to_shift];

    auto dest_src1_equal = dest_to_src1 == src1_extract;
    d.constraints.push_back(dest_src1_equal);
  }

  // If it's 0, we just copy SRC2 into the destination
  if (bits_to_shift == 0) {
    auto equals = E_dest == E_src2;
    d.constraints.push_back(equals);
    return;
  }

  VALIDATOR_ERROR("palignr internal error; bits_to_shift out of bounds?");

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
  SymBitVector::var((w), ((s)+d.pre_suffix+to_string(d.instr_no)).c_str());




  SymBool retval = SymBool::_true();

  auto E_temp1 = VAR_EXPR("TEMP1POPCNT",16);
  auto E_temp2 = VAR_EXPR("TEMP2POPCNT",16);
  auto E_temp3 = VAR_EXPR("TEMP3POPCNT",16);
  auto E_temp4 = VAR_EXPR("TEMP4POPCNT",16);

  SUM_OUTER(E_src, E_temp1, E_temp2, E_temp3, E_temp4)

  retval = retval & E_dest == E_temp4;


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
  SymBitVector::var((w), ((s)+d.pre_suffix+to_string(d.instr_no)).c_str());




  SymBool retval = SymBool::_true();

  auto E_temp1 = VAR_EXPR("TEMP1POPCNT",32);
  auto E_temp2 = VAR_EXPR("TEMP2POPCNT",32);
  auto E_temp3 = VAR_EXPR("TEMP3POPCNT",32);
  auto E_temp4 = VAR_EXPR("TEMP4POPCNT",32);
  auto E_temp5 = VAR_EXPR("TEMP5POPCNT",32);

  SUM_OUTER(E_src, E_temp1, E_temp2, E_temp3, E_temp4, E_temp5)

  retval = retval & E_dest == E_temp5;


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

  retval = retval & E_dest == E_temp6;


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
        E_dest[high][low],
        pshuf_shift_right_and_extract(E_src, shift, 31, 0, 128)));
  }


}

void pshufhwHandler(v_data d, int bitWidth, bool avx, int imm, Expr E_dest, Expr E_src) {

  if ( avx || bitWidth != 128 )
    throw VALIDATOR_ERROR("pshufhw only supported in non-avx form");

  // DEST[63:0] <- SRC[63:0]
  d.constraints.push_back(
    vc_eqExpr(
      E_dest[63][0],
      E_src[63][0]));

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
        E_dest[high][low],
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
        E_dest[high][low],
        pshuf_shift_right_and_extract(E_src, shift, 15, 0, 128)));

  }

  // DEST[63:0] <- SRC[63:0]
  d.constraints.push_back(
    vc_eqExpr(
      E_dest[127][64],
      E_src[127][64]));

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


  SymBool retval = E_dest[15][0] == E_src1[15][0];
  retval = retval & E_dest[31][16] == E_src2[15][0];
  retval = retval & E_dest[47][32] == E_src1[31][16];
  retval = retval & E_dest[63][48] == E_src2[31][16];
  retval = retval & E_dest[79][64] == E_src1[47][32];
  retval = retval & E_dest[95][80] == E_src2[47][32];
  retval = retval & E_dest[111][96] == E_src1[63][48];
  retval = retval & E_dest[127][112] == E_src2[63][48];
#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif

  d.constraints.push_back(retval);

}


void sahfHandler(v_data d) {


  auto E_src = regExprWVN(rax, d.pre_suffix, d.Vn, V_UNITSIZE);
  SymBool retval = SymBool::_true();
  retval = retval & E_src[15] == getBoolExpr(V_SF, d.post_suffix, d.Vnprime);
  retval = retval & E_src[14] == getBoolExpr(V_ZF, d.post_suffix, d.Vnprime);
  retval = retval & E_src[10] == getBoolExpr(V_PF, d.post_suffix, d.Vnprime);
  retval = retval & E_src[8] == getBoolExpr(V_CF, d.post_suffix, d.Vnprime);

#ifdef DEBUG_VALIDATOR
  cout << "Adding constraint " << retval << endl;
#endif
  d.constraints.push_back(retval);
}


void sbbHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  auto E_result = SymBitVector::var(bitWidth+2, ("SBBTEMP"+d.pre_suffix+to_string(d.instr_no)).c_str());
  auto E_arg1 = SymBitVector::constant(2, 0) || E_src1;
  auto E_arg2 = SymBitVector::constant(2, 0) || vc_bvNotExpr(E_src2);
  auto E_carry = SymBitVector::var(bitWidth+2, ("BORROW"+d.pre_suffix+to_string(d.instr_no)).c_str());

  SymBool retval = E_carry[0] == !(getBoolExpr(V_CF, d.pre_suffix, d.Vn));
  retval = retval & vc_eqExpr(E_carry[bitWidth+1][1],  SymBitVector::constant(1, 0) ||SymBitVector::constant(bitWidth, 0));

  retval = retval & vc_eqExpr(E_result,vc_bvPlusExpr(bitWidth+2, vc_bvPlusExpr(bitWidth+2, E_arg1, E_arg2), E_carry));
  retval = retval & E_dest == E_result[bitWidth-1][0];

  if(dest_is_reg && bitWidth < V_UNITSIZE)
  {
    SS_Id id_dest = getRegisterFromInstr(d.instr,0);
    retval = retval &  UnmodifiedBitsPreserve(id_dest, d, bitWidth);
  }
  //cout << "Adding constraint " << retval << endl;
  d.constraints.push_back(retval);
  setFlag(d.Vnprime, V_OF, getPlusOFExpr(E_arg1[bitWidth - 1], E_arg2[bitWidth - 1],
                                         E_result[bitWidth - 1]), d.constraints, d.post_suffix);
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

void shufpsHandler(v_data d, int imm, Expr E_dest, Expr E_src1, Expr E_src2, Expr E_imm) {

  // Macro for add A[ha:la] <- B[hb:lb]
#define SHUFPS_CON(A, ha, la, B, hb, lb) \
        (d.constraints.push_back(\
           vc_eqExpr(\
             A[ha][la],\
             B[hb][lb])));




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
  setFlag(d.Vnprime, V_OF, getMinusOFExpr(E_src1[bitWidth - 1], E_src2[bitWidth - 1], E_dest[bitWidth - 1]),
          d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, vc_bvLtExpr(E_src1, E_src2), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}



void testHandler(v_data d, unsigned int bitWidth, Expr E_src1, Expr E_src2) {



  auto E_dest = vc_bvAndExpr(E_src1, E_src2 );

  setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setSFPFZF(E_dest, d, bitWidth);
}



void ucomissHandler(v_data d, Expr E_src1, Expr E_src2) {

  E_src1 = E_src1[31][0];
  E_src2 = E_src2[31][0];
  SymFunction fcmp = SymFunction("cmpf", 2, {32, 32});
  auto E_cmp_res = fcmp(E_src1, E_src2);
  setFlag(d.Vnprime,V_CF, !E_cmp_res[0], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, !(E_cmp_res[0] ^ E_cmp_res[1]), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, E_cmp_res[0] & E_cmp_res[1], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);

}


void ucomisdHandler(v_data d, Expr E_src1, Expr E_src2) {

  E_src1 = E_src1[63][0];
  E_src2 = E_src2[63][0];
  SymFunction fcmp = SymFunction("cmpd", 2, {64, 64});
  auto E_cmp_res = fcmp(E_src1, E_src2);
  setFlag(d.Vnprime,V_CF, !E_cmp_res[0], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_ZF, !(E_cmp_res[0] ^ E_cmp_res[1]), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_PF, E_cmp_res[0] & E_cmp_res[1], d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_OF, SymBool::_false(), d.constraints, d.post_suffix);
  setFlag(d.Vnprime,V_SF, SymBool::_false(), d.constraints, d.post_suffix);

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
    SymBool retval = E_dest == E_result;

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
    SymBool retval = E_dest == E_result;

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
  auto lower_bits = E_dest[63][0] == E_src1[63][0];
  d.constraints.push_back(lower_bits);
  ADD_CONS(lower_bits);

  /* Force bits 64..127 of destination to match bits 0..63 of source2. */
  auto upper_bits = E_dest[127][64] == E_src2[63][0];
  d.constraints.push_back(upper_bits);
  ADD_CONS(upper_bits);

}

void unpcklpsHandler(v_data d, unsigned int bitWidth, bool three_args, Expr E_dest, Expr E_src1, Expr E_src2) {

  if ( three_args || bitWidth != 128 ) {
    VALIDATOR_ERROR("unpcklps only supported in form 'unpcklps xmm1, xmm2/m128'")
  }

  // DEST[31:0] <- SRC1[31:0]
  auto bits_31_0 = E_dest[31][0] == E_src1[31][0];

  // DEST[63:32] <- SRC2[31:0]
  auto bits_63_32 = E_dest[63][32] == E_src2[31][0];

  // DEST[95:64] <- SRC1[63:32]
  auto bits_95_64 = E_dest[95][64] == E_src1[63][32];

  // DEST[127:96] <- SRC2[63:32]
  auto bits_127_96 = E_dest[127][96] == E_src2[63][32];

  // Add the four constraints
  d.constraints.push_back(bits_31_0);
  d.constraints.push_back(bits_63_32);
  d.constraints.push_back(bits_95_64);
  d.constraints.push_back(bits_127_96);

}


void xorHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg=true) {

  auto E_result = E_src1 ^ E_src2;
  SymBool retval = E_dest == E_result;

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

