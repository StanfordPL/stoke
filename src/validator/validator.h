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
std::string idToStr(SS_Id, PAIR_INFO I=all_state_info);
Expr regExpr(VC&, std::string, unsigned int size=V_UNITSIZE);
Expr EqExpr(VC&, Expr, Expr);  
std::set<SS_Id> keys(std::map<SS_Id, unsigned int> dict);  


  
struct Meminfo
{  
  bool _is_target_info;
  uint _line_no;
  std::string _mem_cell_name;
  uint _cell_size;
  uint _start_idx;
  uint _end_idx;

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
	public:
	  bool validate(const Cfg& target, const Cfg& rewrite, 
	                CpuState& counter_example);

    /* Set if the code being validated writes memory. */
    Validator& set_mem_out(bool b) {
      mem_out_ = b;
      return *this;
    }

    /* Set the amount of time the validator runs before giving up. */
    Validator& set_timeout(uint64_t time) {
      timeout_ = time;
      return *this;
    }

    /** @todo Need a data structure for abductions if we ever write this. */
    std::ostream& print_abduction(std::ostream& os);

  private:

    std::vector<Expr> generate_constraints(const stoke::Cfg&, const stoke::Cfg&, std::vector<Expr>&);

    /* Validity checker; needed for just about everything */
    VC vc_;
    /* Time to spend running z3 */
    uint64_t timeout_;
    /* Used to keep track of register names, IDs and stuff */
    std::pair<Bijection<std::string>,std::map<SS_Id, unsigned int> > state_info_;
    /* Will the code write memory? */
    bool mem_out_;
};




} // namespace stoke



#endif
