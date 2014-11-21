#ifndef HANDLERS_H
#define HANDLERS_H

#include "src/validator/error.h"
#include "src/validator/legacy/validator.h"

#include<vector>

#define V_SHMASK 32
using namespace stoke;
using namespace x64asm;

// These helpers can be found in helpers.cc, which is #included into handlers.cc
SymBool getBoolExpr(SS_Id id, std::string suffix, const VersionNumber& Vn);
Expr regExprWVN(SS_Id id, std::string suffix, const VersionNumber& Vn, unsigned int size);
Expr memAddr(Expr memExpr);
Expr memVal(Expr memExpr);
Expr memExprWVN(SS_Id memid, std::string suffix, unsigned int num);
SS_Id getOperandValue(uint64_t op);
SymBool setFlag(const VersionNumber& Vnprime, SS_Id flag, const SymBool& e, std::vector<SymBool>& constraints, std::string post_suffix);

//To avoid passing 10 parameters to functions.
class v_data
{
public:
  VersionNumber& Vn;
  VersionNumber& Vnprime;
  const Instruction& instr;
  std:: string pre_suffix;
  std:: string post_suffix;
  std::vector<SymBool>& constraints;
  unsigned int instr_no;
  ~v_data() {}

  v_data(VersionNumber& Vn_,  VersionNumber& Vnprime_,  const Instruction& instr_, std:: string pre_suffix_,
         std:: string post_suffix_, std::vector<SymBool>& constraints_, unsigned int instr_no_):
    Vn (Vn_),
    Vnprime (Vnprime_),
    instr (instr_),
    pre_suffix (pre_suffix_),
    post_suffix (post_suffix_),
    constraints (constraints_),
    instr_no(instr_no_)
  {}
  bool isTargetData() {
    return pre_suffix ==  "_1_";
  }

};


// The handlers
void adcHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void addHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void adddHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void addfHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void andHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void andpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void bsfHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src);
void bsrHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src);
void bswapHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src);
void btHandler(v_data d, unsigned int bitWidth, Expr E_operand, Expr E_offset);
void btcHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_operand, Expr E_offset, bool dest_is_reg );
void btvalHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_operand, Expr E_offset, bool val, bool dest_is_reg );
void cmovccHandler(v_data d, unsigned int bitWidth, std::string cc, Expr E_dest, Expr E_dest_pre, Expr E_src, bool dest_is_reg);
void cmpHandler(v_data d, unsigned int bitWidth, Expr E_src1, Expr E_src2);
void cmppsHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm);
void cmpxchg32Handler(v_data d, unsigned int bitWidth, Expr E_dest_post, Expr E_src, Expr E_dest_pre, bool dest_is_reg );
void cmpxchgHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, Expr E_dest_pre, bool dest_is_reg );
void convert_cdq_Handler(v_data d, Expr pred, unsigned int bitWidth);
void convert_e_Handler(v_data d, unsigned int bitWidth);
void crc32r32Handler(v_data d, Expr E_dest, Expr E_dest_pre, Expr E_src);
void cwd_cdq_cqoHandler(v_data d, int bitWidth);
void decHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg);
void divHandler(v_data d, unsigned int bitWidth, Expr E_src2);
void div_uif_Handler(v_data d, unsigned int bitWidth, Expr E_src2);
void dppdHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm);
void haddpdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void haddpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void idivHandler(v_data d, unsigned int bitWidth, Expr E_src2);
void imul1Handler(v_data d, unsigned int bitWidth, Expr E_src2, bool dest_is_reg);
void imul3Handler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2);
void incHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg);
void lahfHandler(v_data d);
void leaHandler(v_data d, unsigned int bitWidth);
void maxpsHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void movHandler(v_data d, unsigned int bitWidthTarget, unsigned int bitWidthSource, Expr E_dest, Expr E_src, bool signExtend,  bool dest_is_reg);
void movddupHandler(v_data d, Expr E_dest, Expr E_src);
void movhHandler(v_data d, Expr E_dest, Expr E_src, bool dest_is_reg);
void movhlpsHandler(v_data d, Expr E_dest, Expr E_src, bool dest_is_reg);
void muldHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void mulfHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void negHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg);
void notHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src, bool dest_is_reg);
void orHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void paddHandler(v_data d, unsigned int opWidth, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void palignrHandler(v_data d, unsigned int numopt, unsigned int bitWidth, unsigned int immediate, Expr E_dest, Expr E_src1, Expr E_src2);
void packusdwHandler(v_data d, unsigned int bitWidthSrc, unsigned int bitWidthTarget,  Expr E_dest, Expr E_src1, Expr E_src2);
void pandnHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void pmaxsdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void pminuwHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void pmovsxdqHandler(v_data d, Expr E_dest, Expr E_src);
void pmovsxwqHandler(v_data d, Expr E_dest, Expr E_src);
void pmovzxbdHandler(v_data d, Expr E_dest, Expr E_src);
void pmovzxbwHandler(v_data d, Expr E_dest, Expr E_src);
void pmovzxwdHandler(v_data d, Expr E_dest, Expr E_src);
void pmovzxwqHandler(v_data d, Expr E_dest, Expr E_src);
void popcnt16Handler(v_data d, Expr E_dest, Expr E_src);
void popcnt32Handler(v_data d, Expr E_dest, Expr E_src);
void popcnt64Handler(v_data d, Expr E_dest, Expr E_src);
void pshufdHandler(v_data d, int imm, Expr E_dest, Expr E_src, Expr E_imm);
void pshufhwHandler(v_data d, int bitWidth, bool avx, int imm, Expr E_dest, Expr E_src);
void pshuflwHandler(v_data d, int bitWidth, bool avx, int imm, Expr E_dest, Expr E_src);
void psllHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1);
void punpckldqHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void punpcklwdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void pxorHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void rclHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);
void rcrHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);
void retHandler(v_data d);
void rolHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);
void rorHandler(v_data d, unsigned int bitWidth, unsigned int rotamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);
void sahfHandler(v_data d);
void sarHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);
void sarVarHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_shamt, bool dest_is_reg);
void sbbHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void setccHandler(v_data d, std::string cc, Expr E_dest, bool dest_is_reg);
void shlHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);;
void shlVarHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, bool dest_is_reg);
void shldHandler(v_data d, unsigned int bitWidth,   Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_shamt_pre, bool dest_is_reg);
void shldHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_dest_pre, Expr E_src, bool dest_is_reg);
void shrHandler(v_data d, unsigned int bitWidth, unsigned int shamt,  Expr E_dest, Expr E_src1, bool dest_is_reg);
void shrVarHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_shamt, bool dest_is_reg);
void shufpsHandler(v_data d, int imm, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_imm);
void subHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void subdHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void subfHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void subpsHandler(v_data d, unsigned int numops, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2);
void testHandler(v_data d, unsigned int bitWidth, Expr E_src1, Expr E_src2);
void ucomissHandler(v_data d, Expr E_src1, Expr E_src2);
void ucomisdHandler(v_data d, Expr E_src1, Expr E_src2);
void umul1Handler(v_data d, unsigned int bitWidth, Expr E_src2);
void unpcklpdHandler(v_data d, unsigned int bitWidth, bool three_args, Expr E_dest, Expr E_src1, Expr E_src2);
void unpcklpsHandler(v_data d, unsigned int bitWidth, bool three_args, Expr E_dest, Expr E_src1, Expr E_src2);
void vaddsdHandler(v_data d, unsigned int numops, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void vpunpcklqdqHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);
void xaddHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_src_post, bool dest_is_reg);
void xchgHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_dest_pre, Expr E_src, Expr E_src_post,  bool dest_is_reg);
void xorHandler(v_data d, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2, bool dest_is_reg);
void xorpsHandler(v_data d, unsigned int numops, unsigned int bitWidth, Expr E_dest, Expr E_src1, Expr E_src2);
void xorpdHandler(v_data d, Expr E_dest, Expr E_src1, Expr E_src2);

//Convert an instruction to a constraint
void instrnToConstraint(const Instruction& instr,
                        VersionNumber Vn, VersionNumber Vnprime,
                        std::vector<SymBool>& constraints, std::string code_num,unsigned int  instr_no);

#endif
