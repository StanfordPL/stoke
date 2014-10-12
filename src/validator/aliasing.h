#ifndef STOKE_SRC_VALIDATOR_ALIASING_H
#define STOKE_SRC_VALIDATOR_ALIASING_H
#include "src/validator/validator.h"
#include "src/cfg/cfg.h"
#include "src/state/cpu_state.h"

struct CellInfo
{
  uint line_no;
  uint cell_num;
  uint beg;
  uint end;  
  CellInfo(uint ln, uint cn, uint b, uint e)
  {
    line_no = ln; cell_num =cn; beg =b; end = e;
  }
};

void generateAliasing(const stoke::Cfg& f1, const stoke::Cfg& f2, const std::vector<stoke::CpuState>& tests);

#endif