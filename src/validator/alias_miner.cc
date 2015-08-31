// Copyright 2013-2015 Stanford University
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


#include "src/validator/alias_miner.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

/** Takes a Cfg and a testcase; runs the Cfg on the testcase and tracks
  all memory reads/writes.  Then builds a list of all memory accesses in
  order. */
vector<AliasMiner::MemoryAccess>
AliasMiner::mine_concrete_data(const Cfg& cfg, const CpuState& tc) {

  sandbox_->reset();
  sandbox_->insert_function(cfg);
  sandbox_->insert_before(mine_concrete_callback, this);
  sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));

  vector<MemoryAccess> trace;
  current_concrete_trace_ = &trace;

  sandbox_->insert_input(tc);
  sandbox_->run();

  return trace;

}

void AliasMiner::mine_concrete_callback(const StateCallbackData& data, void* arg) {

  auto& instr = data.code[data.line];
  if(instr.is_memory_dereference()) {

    MemoryAccess ma;

    ma.line = data.line;
    ma.address = data.state.get_addr(instr);

    if(instr.is_push()) {
      ma.write = true;
      ma.width = instr.get_operand<Operand>(0).size();

      // don't handle push/pop of memory
      assert(!instr.is_explicit_memory_dereference());
    } else if (instr.is_pop()) {
      ma.write = false;
      ma.width = instr.get_operand<Operand>(0).size();

      // don't handle push/pop of memory
      assert(!instr.is_explicit_memory_dereference());
    } else if (instr.is_explicit_memory_dereference()) {
      size_t index = instr.mem_index();
      ma.width = instr.get_operand<Operand>(index).size();
      ma.write = instr.maybe_write(index);
    } else if (instr.is_ret()) {
      return;
    } else {
      assert(false);
      return;
    }

    cout << "ACCESS " << ma.line << ", " << ma.address << ", " << ma.width << ", " << ma.write << endl;

    AliasMiner* me = (AliasMiner*)arg;
    me->current_concrete_trace_->push_back(ma);
  }

}

  /** Takes a target/rewrite pair and builds CellMemory objects to represent their
    memory use.  Returns a pair of nulls on failure. */
std::pair<CellMemory*, CellMemory*> AliasMiner::build_cell_model(const Cfg& target, const Cfg& rewrite, const CpuState& tc) {

  auto target_trace = mine_concrete_data(target, tc);
  auto rewrite_trace = mine_concrete_data(rewrite, tc);

  // Build map from address -> (cell number, size)
  // As we add to the map, we need to check for any possible partial overlaps.
  std::map<uint64_t, std::pair<size_t, size_t>> addr_cell_map;
  size_t no_cells = 0;
  for(size_t i = 0; i < 2; ++i) {
    auto& trace = i ? target_trace : rewrite_trace;
    for(auto access : trace) {

      if(addr_cell_map.count(access.address)) {
        if(access.width != addr_cell_map[access.address].second) {
          // two accesses of the same address of different sizes
          return std::pair<CellMemory*, CellMemory*>(NULL, NULL);
        } else {
          // all done with this one :)
          continue;
        }
      }

      // loop through existing cells and check for overlap
      for(auto cell : addr_cell_map) {
        if(cell.first < access.address) {
          if(cell.first + cell.second.second > access.address) {
            // two accesses overlap
            return std::pair<CellMemory*, CellMemory*>(NULL, NULL);
          }
        } else if (cell.first > access.address) {
          if(access.address + access.width > cell.first) {
            // two accesses overlap
            return std::pair<CellMemory*, CellMemory*>(NULL, NULL);
          } 
        }
      }

      // Ok, looks good: adding a new cell :)
      addr_cell_map[access.address] = std::pair<size_t, size_t>(no_cells++, access.width);
    }
  }
  cout << "addr_cell_map" << endl;
  for(auto p : addr_cell_map) {
    cout << p.first << " -> (" << p.second.first << ", " << p.second.second << ")" << endl;
  }


  // Build maps of (line -> (cell number, size)) 
  std::map<size_t, std::pair<size_t, size_t>> target_map;
  std::map<size_t, std::pair<size_t, size_t>> rewrite_map;
  for(size_t i = 0; i < 2; ++i) {
    auto& map = i ? target_map : rewrite_map;
    auto& trace = i ? target_trace : rewrite_trace;
    for(auto access : trace) {
      map[access.line] = addr_cell_map[access.address];
    }
  }

  cout << "Target cell map:" << endl;
  for(auto p : target_map) {
    cout << p.first << " -> (" << p.second.first << ", " << p.second.second << ")" << endl;
  }
  cout << "Rewrite cell map:" << endl;
  for(auto p : rewrite_map) {
    cout << p.first << " -> (" << p.second.first << ", " << p.second.second << ")" << endl;
  }


  CellMemory* target_mem = new CellMemory(target_map);
  CellMemory* rewrite_mem = new CellMemory(rewrite_map);
  return std::pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem);
}








