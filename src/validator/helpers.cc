

/* Returns an expression corresponding to a flag in string form.
   Second parameter sets if it should be negated. */
Expr get_flag(v_data d, string cf, bool do_not_negate = true) {

  auto n = 0;

  switch(cf[0]) {
  case 'A':
    n = V_AF;
    break;

  case 'C':
    n = V_CF;
    break;

  case 'O':
    n = V_OF;
    break;

  case 'P':
    n = V_PF;
    break;

  case 'S':
    n = V_SF;
    break;

  case 'Z':
    n = V_ZF;
    break;

  default:
    string message = "bad flag name " + cf;
    throw VALIDATOR_ERROR(message);
  }

  if (do_not_negate)
    return getBoolExpr(n, d.pre_suffix, d.Vn);
  else
    return !(getBoolExpr(n, d.pre_suffix, d.Vn));
}

Expr get_condition_predicate(v_data d, string cc) {


  //CF = 0 and ZF = 0
  if (cc == "a" || cc == "nbe") {
    return vc_andExpr(get_flag(d, "C", false), get_flag(d, "Z", false));
  }

  // CF = 0
  if (cc == "ae" || cc == "nb" || cc == "nc") {
    return get_flag(d, "C", false);
  }

  // CF = 1
  if (cc == "b" || cc == "c" || cc == "nae") {
    return get_flag(d, "C");
  }

  // CF = 1 OR ZF = 1
  if (cc == "be" || cc == "na") {
    return vc_orExpr(get_flag(d, "C"), get_flag(d, "Z"));
  }

  // CZ = 1
  if (cc == "e" || cc == "z") {
    return get_flag(d, "Z");
  }

  // ZF = 0 and SF = OF
  if (cc == "g" || cc == "nle") {
    return vc_andExpr(get_flag(d, "Z", false),
                      vc_iffExpr(get_flag(d, "SF"), get_flag(d, "OF")));
  }

  // SF = OF
  if (cc == "ge" || cc == "nl") {
    return vc_iffExpr(get_flag(d, "SF"), get_flag(d, "OF"));
  }

  // SF != OF
  if (cc == "l" || cc == "nge") {
    return !(vc_iffExpr(get_flag(d, "SF"), get_flag(d, "OF")));
  }

  // ZF = 1 or SF != OF
  if (cc == "le" || cc == "ng") {
    return vc_orExpr(get_flag(d, "Z"),
                     !(vc_iffExpr(get_flag(d, "SF"), get_flag(d, "OF"))));
  }

  // ZF = 0
  if (cc == "ne" || cc == "nz") {
    return get_flag(d, "Z", false);
  }

  // OF = 0
  if (cc == "no") {
    return get_flag(d, "O", false);
  }

  // PF = 0
  if (cc == "np" || cc == "po") {
    return get_flag(d, "P", false);
  }

  // SF = 0
  if (cc == "ns") {
    return get_flag(d, "S", false);
  }

  // OF = 1
  if (cc == "o") {
    return get_flag(d, "O");
  }

  // PF = 1
  if (cc == "p" || cc == "pe") {
    return get_flag(d, "P");
  }

  // SF = 1
  if (cc == "s") {
    return get_flag(d, "S");
  }

  string message = "Condition flag " + cc + " is not handled.";
  throw VALIDATOR_ERROR(message);

}




//assumes the last operand of the instruction is an immediate and returns the same
uint64_t getLastOperandImm(const Instruction& instr)
{
  return (uint64_t)instr.get_operand<Imm64>(instr.arity()-1);
}

//A wrapper for get_register
uint64_t getRegisterFromInstr(const Instruction& instr, unsigned int n)
{
  return instr.get_operand<R64>(n);
}

//wrapper for get_immediate
uint64_t getImmediateFromInstr(const Instruction& instr, unsigned int n)
{
  return instr.get_operand<Imm64>(n);
}

//returns the flag variable it changed
//Sets condition register flag with version number Vnprime and codenum given in post_suffix to the expression e.
Expr setFlag(const VersionNumber& Vnprime,SS_Id flag, const Expr& e, vector<Expr>& constraints, string post_suffix)
{
  string flag_name = idToStr(flag) + post_suffix + itoa(Vnprime.get(flag));
  Expr E_flag_var = SymBool::var(flag_name.c_str());
  Expr E_flag_constraint = vc_iffExpr(E_flag_var, e);
  //cout << "Instruction flag constraint is\n";
#ifdef DEBUG_VALIDATOR
  std::cout << E_flag_constraint << std::endl;
#endif
  constraints.push_back(E_flag_constraint);
  return E_flag_var;
}

//nameWVN(RAX, "_1_", 0) becomes "RAX_1_0"
string nameWVN(SS_Id id, string suffix, const VersionNumber& Vn)
{
  return idToStr(id)+suffix+itoa(Vn.get(id)).c_str();
}

//Create a boolean expression with name id+suffix+Vn
Expr getBoolExpr(SS_Id id, string suffix, const VersionNumber& Vn)
{
  return SymBool::var(nameWVN(id, suffix, Vn).c_str());
}

//Set sign flag, parity flag, and zero flag according to REGPOST.
//REGPOST has width bitWidth
void setSFPFZF(Expr REGPOST, v_data d, unsigned int bitWidth)
{

  /* Set sign flag */
  setFlag(d.Vnprime, V_SF,
          vc_bvBoolExtract_One(REGPOST, bitWidth - 1),
          d.constraints, d.post_suffix);

  /* Set zero flag */
  setFlag(d.Vnprime, V_ZF,
          vc_eqExpr(REGPOST, vc_bvConstExprFromLL(bitWidth, 0)),
          d.constraints, d.post_suffix);

  /* Compute and set parity flag */
  Expr E_temp_parity_1 = vc_xorExpr(vc_bvBoolExtract_One(REGPOST,0),
                                    vc_bvBoolExtract_One(REGPOST,1));
  Expr E_temp_parity_2 = vc_xorExpr(vc_bvBoolExtract_One(REGPOST,2),
                                    vc_bvBoolExtract_One(REGPOST,3));
  Expr E_temp_parity_3 = vc_xorExpr(vc_bvBoolExtract_One(REGPOST,4),
                                    vc_bvBoolExtract_One(REGPOST,5));
  Expr E_temp_parity_4 = vc_xorExpr(vc_bvBoolExtract_One(REGPOST,6),
                                    vc_bvBoolExtract_One(REGPOST,7));
  Expr E_temp_parity_5 = vc_xorExpr(E_temp_parity_1, E_temp_parity_2);
  Expr E_temp_parity_6 = vc_xorExpr(E_temp_parity_3, E_temp_parity_4);
  Expr E_temp_parity_7 = !(vc_xorExpr(E_temp_parity_5, E_temp_parity_6));
  setFlag(d.Vnprime, V_PF, E_temp_parity_7, d.constraints, d.post_suffix);
}

//New flag== old flag for all flags(CF'==CF)
void preserveAllFlags(v_data d)
{
  setFlag(d.Vnprime, V_AF, getBoolExpr(V_AF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_SF, getBoolExpr(V_SF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_ZF, getBoolExpr(V_ZF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_PF, getBoolExpr(V_PF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_CF, getBoolExpr(V_CF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
  setFlag(d.Vnprime, V_OF, getBoolExpr(V_OF, d.pre_suffix, d.Vn), d.constraints, d.post_suffix);
}

//Get the expression corresponding to the OF of add instruction.
//Takes msb's of arguments and result as input.
Expr getOFExpr(Expr E_msb_1, Expr E_msb_2, Expr E_msb_3)
{
  Expr E_of1 = vc_andExpr(E_msb_1,  vc_andExpr(E_msb_2, !(E_msb_3)));
  Expr E_of2 = vc_andExpr(!(E_msb_1), vc_andExpr(!(E_msb_2), E_msb_3));
  return vc_orExpr(E_of1, E_of2);
}

//A wrapper
Expr regbvExpr(string name, unsigned int size=V_UNITSIZE)
{
  return regExpr(name, size);
}

//Returns 0 for NO_REG and otherwise returns a bitvector of length size and name id+suffix+Vn
Expr regExprWVN(SS_Id id, string suffix, const VersionNumber& Vn, unsigned int size)
{
  return regbvExpr(nameWVN(id, suffix, Vn), size);
}

//Get a 72 bitvector for 64 bits of address and 8 bit for value in the byte addressable memory.
Expr memExprWVN(SS_Id mid, string suffix, VersionNumber& Vn, unsigned int memsize)
{
  return vc_varExpr((idToStr(mid)+suffix+itoa(Vn.get(mid))).c_str(), vc_bvType(memsize));
}

//addrExpr == the address formed by 5 memory arguments. Assume that memory address is always 64 bits.
Expr ConstrainAddr(Expr addrExpr, M8 m, v_data& d, unsigned int bitWidth=V_UNITSIZE)
{


  auto base = m.get_base();
  auto index = m.get_index();
  auto scale = m.get_scale();
  int disp = m.get_disp();
  Expr rhs = !m.contains_index() ? vc_bvConstExprFromLL(V_UNITSIZE, 0) :\
             vc_bvMultExpr(V_UNITSIZE, regExprWVN(index, d.pre_suffix, d.Vn, V_UNITSIZE), vc_bvConstExprFromLL(V_UNITSIZE, (uint64_t)scale));
  Expr E_base = !m.contains_base() ? vc_bvConstExprFromLL(V_UNITSIZE, 0) : regExprWVN(base, d.pre_suffix, d.Vn, V_UNITSIZE);
  rhs = vc_bvPlusExpr(V_UNITSIZE, rhs, E_base);
  rhs = vc_bvPlusExpr(V_UNITSIZE, rhs, vc_bvConstExprFromLL(V_UNITSIZE, disp));
  return EqExpr(addrExpr, rhs);
}


bool isGp(SS_Id id)
{
  return all_state_info.second[id] == V_REGSIZE;
}
//Same as above. Useful for implicit writes.
Expr UnmodifiedBitsPreserve(VC& SS_Id id_dest, v_data d, unsigned int bitWidth)
{
  uint full_size = V_UNITSIZE*all_state_info.second[id_dest];
  if (bitWidth >= full_size)
    throw VALIDATOR_ERROR("error from validator assert");
  Expr E_dest_post = vc_bvExtract(regExprWVN(vc,id_dest,d.post_suffix, d.Vnprime, full_size), full_size -1, bitWidth);
  Expr E_dest_pre = isGp(id_dest) && bitWidth==32 ? vc_bvConstExprFromLL(32, 0) : vc_bvExtract(regExprWVN(vc,id_dest,d.pre_suffix, d.Vn, full_size), full_size -1, bitWidth);
  return EqExpr(E_dest_post, E_dest_pre);
}



Expr dmul(VC& Expr E_dest, Expr E_src1, Expr E_src2)
{
  z3::sort fl = vc->bv_sort(64);
  z3::func_decl dmul = z3::function("muld", fl, fl, fl);
  return E_dest == dmul(E_src1,E_src2);
  \
}

Expr dadd(VC& Expr E_dest, Expr E_src1, Expr E_src2)
{
  z3::sort fl = vc->bv_sort(64);
  z3::func_decl dadd = z3::function("addd", fl, fl, fl);
  return E_dest == dadd(E_src1,E_src2);
  \
}


//dest== operand with operand[idx]==pred
Expr setBit(VC& Expr E_dest, Expr E_operand, unsigned int idx, Expr pred, unsigned int bitWidth)
{
  if(idx >= bitWidth)
    throw VALIDATOR_ERROR("validator assertion failed");
  if(idx==0)
    return EqExpr(E_dest, vc_bvConcatExpr(vc_bvExtract(E_operand, bitWidth-1, 1), pred));
  if(idx+1==bitWidth)
    return EqExpr(E_dest, vc_bvConcatExpr(pred, vc_bvExtract(E_operand, bitWidth-2, 0)));
  Expr E_pre = vc_bvExtract(E_operand, bitWidth - 1,idx+1);
  Expr E_post = vc_bvExtract(E_operand, idx-1, 0);
  Expr E_result = vc_bvConcatExpr(vc_bvConcatExpr(E_pre, pred), E_post);
  return EqExpr(E_dest, E_result);

}

bool is_dest_xmm(Expr e)
{
  stringstream s;
  s << e;
  return s.str().find("XMM")!=string::npos;
}

//Arithmetic shift right by a constant
Expr constructAShrByConstant(VC& unsigned amount, Expr E_src1, unsigned int bitWidth) {

  unsigned shift = amount & (bitWidth - 1);
  //cout << "shift in constructAShrByConstant is " << shift << endl ;
  if (shift==0) {
    return E_src1;
  } else {
    return vc_iteExpr(vc,
                      vc_bvBoolExtract_One(E_src1, bitWidth -1),
                      vc_bvConcatExpr(vc,
                                      vc_bvConstExprFromLL(shift, -1),
                                      vc_bvExtract(E_src1, bitWidth - 1, shift)),
                      vc_bvRightShiftExprExpr(bitWidth,  E_src1, vc_bvConstExprFromInt(bitWidth, shift)));
  }
}

/* Takes an expression, and extracts the bits following a shift */
Expr pshuf_shift_right_and_extract(VC& Expr bitvector, int shift, int high, int low, int width) {

  // If you imagine the bitvector after the shift, the high and low bits are
  // (high + shift) and (low + shift).  Things get interesting when one or both
  // of those are negative.

  int new_high = high + shift;
  int new_low = low + shift;

  if (new_high < width && new_low < width) {
    return vc_bvExtract(bitvector, new_high, new_low);
  }

  if (new_high >= width && new_low < width) {

    // We need (new_high - width + 1) zeros.
    Expr zeros = vc_bvConstExprFromInt(new_high - width + 1, 0);

    // The remainding bits left after the shift
    Expr remaining = vc_bvExtract(bitvector, width-1, new_low);

    // Concat
    Expr concat = vc_bvConcatExpr(zeros, remaining);
    return concat;
  }

  if (new_high >= width && new_low >= width) {
    //return high-low + 1 zeros.
    return vc_bvConstExprFromInt(high - low + 1, 0);
  }

  throw VALIDATOR_ERROR("pshuf_shift_right_and_extract internal error: unexpected state");
}

void instrnToConstraint(PAIR_INFO state_info,VC& V_Node& n,
                        VersionNumber& Vn, VersionNumber& Vnprime,
                        std::vector<Expr>& constraints, std::string code_num,unsigned int  instr_no, std::set<SS_Id> X_mod)
{

  Instruction instr = n.getInstr();
  if(instr.is_label_defn()) return;
  string pre_suffix = "_" + code_num + "_";
  string post_suffix = "_" + code_num + "_";

  v_data d(state_info,vc,Vn,Vnprime,instr,-1,-1,pre_suffix, post_suffix, constraints, X_mod, instr_no);
  Expr E_constraint(*vc);
  Expr E_dest(*vc), E_src1(*vc), E_src2(*vc), E_addr(*vc), pred(*vc), E_src_post(*vc);
  E_addr = vc_varExpr(("ADDRTEMPEXPR"+d.pre_suffix+itoa(d.instr_no)).c_str(), vc_bvType(V_UNITSIZE));

  M8 addr();

  switch(instr.get_opcode())
  {
#include "validator.switch"

  default:
#ifdef DEBUG_VALIDATOR
    cout << "Unhandled Instruction for creating constraint " << instr << "\n";
#endif
    std::stringstream tmp;
    tmp << "Unhandled instruction (not in switch): " << instr << endl;
    throw VALIDATOR_ERROR(tmp.str());

  }

}

