#include "src/validator/aliasing.h"
#include "src/sandbox/sandbox.h"
#include "src/sandbox/state_callback.h"
#include <map>
#include <fstream>
using namespace std;
using namespace x64asm;
using namespace stoke;

typedef  pair<uint64_t, uint> addr_n_width;

static uint mem_cell_num = 0;

uint inc_cell_num(){ return ++mem_cell_num; }
uint get_curr_cell_num(){ return mem_cell_num; }

uint64_t getMemAddrVal(const M8& m , const CpuState& state)
{
  auto base = m.get_base();
  auto index = m.get_index();
  auto scale = m.get_scale();
  int disp = m.get_disp();
  if (m.contains_base() && m.contains_index() )
    return state.gp[base].get_fixed_quad(0)+state.gp[index].get_fixed_quad(0)*((uint64_t)scale) + disp;
  else if (m.contains_base() && !m.contains_index() )
    return state.gp[base].get_fixed_quad(0)+ disp;
  else if (!m.contains_base() && m.contains_index() )
    return state.gp[index].get_fixed_quad(0)*((uint64_t)scale) + disp;
  else
    return disp;
}

uint getMemAddrWidth(Instruction& instr, uint mem_idx)
{
  switch(instr.type(mem_idx))
  {
    case  x64asm::Type::M_8: return 1;
    case  x64asm::Type::M_16: return 2;
    case  x64asm::Type::M_32: return 4;
    case  x64asm::Type::M_64: return 8;
    case  x64asm::Type::M_128: return 16;
    case  x64asm::Type::M_256: return 32;

    default:
      throw VALIDATOR_ERROR("Unexpected type of memory argument");
  }
#ifdef DEBUG_VALIDATOR
  cout << "Cannot figure out the width of memop " << endl;
#endif
  exit(0);
  return 0;
}

void v_callback(const StateCallbackData& data, void* arg) {
  auto map_cfg_pair = *((pair<map<uint, addr_n_width>&,const Cfg&>*) arg);
  auto f = map_cfg_pair.second;
  auto& line2addr = map_cfg_pair.first;

  uint line = data.line;
  auto instr = f.get_code()[data.line];
#ifdef DEBUG_VALIDATOR
  cout << "Current Instruction: " << instr << endl;
#endif
  
  if(instr.derefs_mem())
  {
    auto mem_idx = instr.mem_index();
    line2addr[line]=addr_n_width(getMemAddrVal(instr.get_operand<M8>((size_t)mem_idx),data.state), getMemAddrWidth(instr, mem_idx));      	  
  }
	
}

void getAddresses(const stoke::Cfg& f, const std::vector<CpuState>& testcases,  map<uint, addr_n_width>& line2addr)
{
  
  Sandbox sb;
  //We are never going to have so many jumps
  sb.set_max_jumps(10000000);
  //Just run the first test case
  const auto index = 0;
  const auto input = testcases[index];
  sb.insert_input(input);

  auto stepping = false;
  auto map_cfg_pair=pair<map<uint, addr_n_width>&,const stoke::Cfg&>(line2addr,f);
  
  for (size_t i = 0, ie = f.get_code().size(); i < ie; ++i) {
    sb.insert_before(i, v_callback, &(map_cfg_pair));
  }

  sb.run({f.get_code(), RegSet::empty(), RegSet::empty()});

  const auto result = *(sb.result_begin());
  if (result.code != ErrorCode::NORMAL) {
#ifdef DEBUG_VALIDATOR
    cout << "Control returned abnormally with signal " << dec << (int)result.code << endl;
#endif
    throw VALIDATOR_ERROR("Sandbox returned signal " + to_string((int)result.code));
  } else {
#ifdef DEBUG_VALIDATOR
    cout << "Control returned normally " << endl;
#endif
  }

}

void printAddresses(const map<uint, addr_n_width>& line_addrs)
{
  for(const auto line_addr : line_addrs)
  {
#ifdef DEBUG_VALIDATOR
    cout << line_addr.first << " " << line_addr.second.first << " " << line_addr.second.second << endl;
#endif
  }
}

void getDerefAddrs(const map<uint, addr_n_width>& t_addrs, vector<uint64_t>& retval)
{
  for(const auto& t_addr : t_addrs)
  {
    retval.push_back(t_addr.second.first);
  }
}

void getNames(const map<uint, addr_n_width>& t_addrs,vector<pair<uint, uint64_t>>& mem_names )
{
  vector<uint64_t> addrs;
  getDerefAddrs(t_addrs, addrs);
  sort(addrs.begin(), addrs.end());
  if(addrs.empty()) return;
  uint i=0;
  while(i<addrs.size())
  {
    uint64_t curr=addrs[i];
    mem_names.push_back(pair<uint,uint64_t>(inc_cell_num(),curr));
    while(addrs[i]<curr+16 && i<addrs.size())
      i++;
  }
}

uint getOffset(uint64_t beg_addr, uint64_t curr_addr)
{
  if (curr_addr >= beg_addr) {
    throw VALIDATOR_ERROR("internal error");
  }
  return (curr_addr-beg_addr);
}

pair<uint, uint64_t> find_cell_num(const vector<pair<uint, uint64_t>>& mem_names, uint64_t curr_addr)
{
  for(auto mem_name : mem_names)
  {
    if(curr_addr >=mem_name.second && curr_addr < mem_name.second +16 )
      return mem_name;
  }
  throw VALIDATOR_ERROR("Could not find memory in range.");
}

void getCellInfo(const map<uint, addr_n_width>& info_addrs, const vector<pair<uint, uint64_t>>& mem_names, vector<CellInfo>& output_rows)
{
  for(const auto& info_addr : info_addrs)
  {
    pair<uint, uint64_t> mem_name = find_cell_num(mem_names, info_addr.second.first);
    uint beg = getOffset(mem_name.second, info_addr.second.first);
    if (beg+info_addr.second.second > 16) {
      throw VALIDATOR_ERROR("Error from assertion in validator.");
    }
    output_rows.push_back(CellInfo(info_addr.first, mem_name.first, beg, beg + info_addr.second.second-1));
  }
  
}

void dumpAliasingFile(string filename, const vector<pair<uint, uint64_t>>& mem_names, const  vector<CellInfo>& target_rows, const  vector<CellInfo>& rewrite_rows)
{
  ofstream ofs(filename);
  ofs << mem_names.size() << endl;
  for(const auto& mem_name : mem_names)
    ofs << "M" << mem_name.first << " 2" << endl;
  ofs << endl << "T " << target_rows.size() << endl;
  for(const auto& t : target_rows)
  {
    ofs << t.line_no << " " << "M" << t.cell_num << " " << t.beg << " " << t.end << endl;
  }
  ofs << endl << "R " << rewrite_rows.size() << endl;
    for(const auto& t : rewrite_rows)
  {
    ofs << t.line_no << " " << "M" << t.cell_num << " " << t.beg << " " << t.end << endl;
  }
  ofs << endl;
}

void makeAliasingFile(const map<uint, addr_n_width>& t_addrs,const map<uint, addr_n_width>& r_addrs)
{
  vector<pair<uint, uint64_t>> mem_names;
  vector<CellInfo> target_rows;
  vector<CellInfo> rewrite_rows;
  getNames(t_addrs, mem_names);
#ifdef DEBUG_VALIDATOR
  cout << " Got names ";
#endif
  getCellInfo(t_addrs, mem_names, target_rows);
  getCellInfo(r_addrs, mem_names, rewrite_rows);
#ifdef DEBUG_VALIDATOR
  cout << " Got info ";
#endif
  dumpAliasingFile("aliasing",mem_names, target_rows, rewrite_rows);
#ifdef DEBUG_VALIDATOR
  cout << " dump complete ";
#endif

}


void generateAliasing(const stoke::Cfg& f1, const stoke::Cfg& f2, const std::vector<CpuState>& tests)
{
  vector<CellInfo> t_cells;
  vector<CellInfo> r_cells;
  map<uint, addr_n_width> t_addrs;
  map<uint, addr_n_width> r_addrs;
  
  getAddresses(f1, tests, t_addrs);
  getAddresses(f2, tests, r_addrs);
    
  printAddresses(t_addrs);
  printAddresses(r_addrs);
  makeAliasingFile(t_addrs, r_addrs);
}
