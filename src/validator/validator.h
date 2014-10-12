#ifndef STOKE_SRC_VALIDATOR_VALIDATOR_H
#define STOKE_SRC_VALIDATOR_VALIDATOR_H

#include <iostream>
#include <vector>
#include <string>

#include "src/cfg/cfg.h"
#include "src/state/cpu_state.h"
#include "src/validator/c_interface.h"
#include "src/validator/error.h"
#include "src/validator/SymState.h"

#define PAIR_INFO const std::pair<stoke::Bijection<std::string>,std::map<SS_Id, unsigned int> >&


uint64_t parentRegister(uint64_t);
extern std::pair<stoke::Bijection<std::string>,std::map<SS_Id, unsigned int> > all_state_info;
std::string idToStr(SS_Id, PAIR_INFO I=all_state_info);
Expr regExpr(VC&, std::string, unsigned int size=V_UNITSIZE);
Expr EqExpr(VC&, Expr, Expr);  
std::set<SS_Id> keys(std::map<SS_Id, unsigned int> dict);  


  
//void v_debug(x64asm::Code code);
//void v_debug(x64asm::Instruction);	    
//bool unconstrainedEqual(const stoke::Cfg& cfg1, const stoke::Cfg& cfg2, std::string& s);

//void addStartConstraint(VC& vc, std::string code_num, PAIR_INFO state_info, std::vector<Expr>& constraints);
//Expr getMemoryQuery(VC& vc, PAIR_INFO state_info, std::vector<Expr>& query, V_Memory& mem1, V_Memory& mem2);
//void getQueryConstraint(VC& vc, PAIR_INFO state_info, std::vector<Expr>& query, V_Memory& mem1, V_Memory& mem2, const stoke::Cfg& f1, x64asm::RegSet liveout = x64asm::RegSet());
//bool z3Solve(VC& vc, std::vector<Expr>& constraints, std::vector<Expr>& query,PAIR_INFO state_info);
//void Lalreps(VC& vc, std::vector<Expr>& constraints, V_Memory& m1, V_Memory& m2);
//stoke::VersionNumber C2C(VC& vc, stoke::Ebb& ebb, PAIR_INFO state_info, std::vector<Expr>& constraints, std::string code_num, V_Memory& mem, std::vector<stoke::muldata >& mul);
//extern bool is_unit_test;
//extern bool add_sub_reg;
struct Meminfo
{  
  bool _is_target_info;
  uint _line_no;
  std::string _mem_cell_name;
  uint _cell_size;
  uint _start_idx;
  uint _end_idx;
  Meminfo(){assert(false);} //
  Meminfo(bool is_target_info,  uint line_no,  std::string mem_cell_name,  uint start_idx,  uint end_idx, uint cell_size)
  {
    _is_target_info = is_target_info;
    _line_no=line_no;
    _mem_cell_name=mem_cell_name;
    _start_idx=start_idx;
    _end_idx=end_idx;
    _cell_size = cell_size;
  }
  std::string getName() const
  {
    return _mem_cell_name;
  }
  uint getBegBit() const
  {
    return _start_idx*8;
  }
  uint getEndBit() const
  {
    return ((_end_idx+1)*8);
  }
  uint getCellSize() const
  {
    return V_UNITSIZE*_cell_size;
  }
};

class MemoryData
{
  std::vector<Meminfo> _minfo;
public:
  void insert(bool is_target_info,  uint line_no,  std::string mem_cell_name,  uint start_idx,  uint end_idx, uint cell_size)
  {
    _minfo.push_back(Meminfo(is_target_info,line_no, mem_cell_name,start_idx,end_idx, cell_size));
  }
  Meminfo deref(uint line_no, bool is_target) const;
  std::string name_deref(uint line_no, bool is_target) const;
  
};


namespace stoke {

class Validator {
	std::string formula;
	public:
	  bool validate(const Cfg& target, const Cfg& rewrite, 
	                const std::vector<CpuState>& testcases, CpuState& counter_example);

  //  CpuState get_counter_example();
    //std::ostream& print_counter_example(std::ostream& os);
    Validator(bool);
    /** @todo Need a data structure for abductions if we ever write this. */
    std::ostream& print_abduction(std::ostream& os);
};



/** @todo */
//inline CpuState Validator::get_counter_example() {
//  return CpuState::zeros();
//}

//inline std::ostream& Validator::print_counter_example(std::ostream& os) {
//  return (os << get_counter_example());
//}

/** @todo */
inline std::ostream& Validator::print_abduction(std::ostream& os) {
  return (os << formula);
}

} // namespace stoke



#endif
