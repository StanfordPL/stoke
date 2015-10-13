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


#include "src/validator/validator.h"
#include "src/validator/alias_miner.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

#define DEBUG_BUILD_TC(X) { }
#define DEBUG_MEM_SETUP(X) { }

/** Takes a Cfg and a testcase; runs the Cfg on the testcase and tracks
  all memory reads/writes.  Then builds a list of all memory accesses in
  order. */
vector<AliasMiner::MemoryAccess>
AliasMiner::mine_concrete_data(const Cfg& cfg, const CpuState& tc) {

  sandbox_->clear_callbacks();
  sandbox_->clear_inputs();
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
  if (instr.is_memory_dereference() && !instr.is_ret()) {

    MemoryAccess ma;

    ma.line = data.line;
    ma.address = data.state.get_addr(instr);
    ma.width = instr.mem_dereference_size();
    AliasMiner* me = (AliasMiner*)arg;
    me->current_concrete_trace_->push_back(ma);
  }

}

/** Takes a target/rewrite pair and builds CellMemory objects to represent their
  memory use.  Returns a pair of nulls on failure. */
std::pair<CellMemory*, CellMemory*> AliasMiner::build_cell_model(const Cfg& target, const Cfg& rewrite, const CpuState& tc) {

  auto target_trace = mine_concrete_data(target, tc);
  auto rewrite_trace = mine_concrete_data(rewrite, tc);

  DEBUG_MEM_SETUP(
    cout << "TARGET: " << endl;
    cout << target.get_code() << endl;
    cout << "REWRITE: " << endl;
    cout << rewrite.get_code() << endl;

    cout << "target_trace_length: " << target_trace.size() << endl;
  for (auto it : target_trace) {
  cout << "@" << it.line << "  " << it.address << " / " << it.width << endl;
}
cout << "rewrite_trace_length: " << rewrite_trace.size() << endl;
for (auto it : rewrite_trace) {
  cout << "@" << it.line << "  " << it.address << " / " << it.width << endl;
})

  // order traces by start position, and then largest to smallest
  auto compare = [] (const MemoryAccess& m1, const MemoryAccess& m2) {
    if (m1.address == m2.address)
      return m1.width > m2.width;
    else
      return m1.address < m2.address;
  };
  vector<MemoryAccess> all_trace;
  all_trace.insert(all_trace.begin(), target_trace.begin(), target_trace.end());
  all_trace.insert(all_trace.begin(), rewrite_trace.begin(), rewrite_trace.end());
  sort(all_trace.begin(), all_trace.end(), compare);

  // cells in form (starting_address, size)
  vector<pair<uint64_t, size_t>> cell_list;

  // Build a list of all cells
  for (auto access : all_trace) {
    uint64_t lower_bound = access.address;
    uint64_t upper_bound = access.address+access.width/8;
    DEBUG_MEM_SETUP(cout << hex << "scheduling " << lower_bound << "->" << upper_bound << endl;)

    if (cell_list.size()) {
      auto& last_cell = cell_list[cell_list.size()-1];
      assert(last_cell.first <= lower_bound);
      DEBUG_MEM_SETUP(cout << "last_cell: " << last_cell.first << "+" <<  last_cell.second << endl;)
      if (lower_bound - last_cell.first > last_cell.second) {
        // allocate a new cell
        DEBUG_MEM_SETUP(cout << "Allocating cell " << lower_bound << "+" << access.width/8 << endl;)
        cell_list.push_back(pair<uint64_t, size_t>(lower_bound, access.width/8));
      } else if (upper_bound - last_cell.first > last_cell.second) {
        // expand the last existing cell
        DEBUG_MEM_SETUP(cout << "Resizing cell " << last_cell.first << "+" << (upper_bound-last_cell.first) << endl;)
        last_cell.second = upper_bound - last_cell.first;
      }
    } else {
      DEBUG_MEM_SETUP(cout << "Allocating cell " << lower_bound << "+" << access.width/8 << endl;)
      cell_list.push_back(pair<uint64_t, size_t>(lower_bound, access.width/8));
    }
  }


  // Build maps of (line -> (cell number, size))
  std::map<size_t, CellMemory::SymbolicAccess> target_map;
  std::map<size_t, CellMemory::SymbolicAccess> rewrite_map;
  for (size_t i = 0; i < 2; ++i) {
    auto& map = i ? rewrite_map : target_map;
    auto& trace = i ? rewrite_trace : target_trace;
    for (auto access : trace) {
      CellMemory::SymbolicAccess sa;
      sa.line = access.line;
      sa.size = access.width/8;
      sa.cell = -1;

      for (size_t j = 0; j < cell_list.size(); ++j) {
        auto cell = cell_list[j];
        // cells are in ascending order, so only need to check the lower bound
        if (j == cell_list.size() - 1 || cell_list[j+1].first > access.address) {
          sa.cell = j;
          sa.cell_size = cell.second;
          sa.cell_offset = access.address - cell.first;
          assert(sa.cell_offset + sa.size <= sa.cell_size);
          break;
        }
      }
      assert(sa.cell != (size_t)(-1));

      map[sa.line] = sa;
    }
  }

  CellMemory* target_mem = new CellMemory(target_map);
  CellMemory* rewrite_mem = new CellMemory(rewrite_map);
  return std::pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem);
}

void tracer_callback(const StateCallbackData& data, void* arg) {
  cout << "TRACE: " << data.code[data.line] << endl;
}


bool AliasMiner::build_testcase_memory(CpuState& ceg, SMTSolver& solver, const CellMemory& target_memory, const CellMemory& rewrite_memory, const Cfg& target, const Cfg& rewrite) {


  std::map<uint64_t, BitVector> addr_value_pairs;

  for (size_t k = 0; k < 2; ++k) {
    auto& memory = k ? rewrite_memory : target_memory;
    auto access_map = memory.get_line_cell_map();


    for (auto pair : access_map) {
      auto access = pair.second;
      auto cell = access.cell;

      stringstream ss;
      ss << "CELL_" << cell << "_ADDR";

      auto addr_bv = solver.get_model_bv(ss.str(), 64);
      auto address = addr_bv.get_fixed_quad(0);

      assert(memory.init_cells_.count(cell));
      const SymBitVector* v = &memory.init_cells_.at(cell);
      auto value_var = dynamic_cast<const SymBitVectorVar*>(v->ptr);
      auto value_bv = solver.get_model_bv(value_var->get_name(), value_var->get_size());

      DEBUG_BUILD_TC(cout << "Cell " << cell << " address = " << hex << address
                     << "; has " << value_bv.num_fixed_bytes() << " bytes" << endl;)

      addr_value_pairs[address] = value_bv;
    }
  }

  if (!Validator::memory_map_to_testcase(addr_value_pairs, ceg))
    return false;


  // Run sandbox on target to see if we did well.
  DEBUG_BUILD_TC(cout << "Running sandbox with tc: " << endl << ceg << endl;)
  sandbox_->clear_callbacks();
  sandbox_->clear_inputs();
  sandbox_->insert_function(target);
  sandbox_->set_entrypoint(target.get_code()[0].get_operand<x64asm::Label>(0));
  sandbox_->insert_input(ceg);
  sandbox_->run();
  auto target_output = *(sandbox_->get_output(0));
  auto last_err = target_output.code;
  DEBUG_BUILD_TC(cout << "Ran sandbox on target; got " << readable_error_code(last_err) << endl;)

  sandbox_->insert_function(rewrite);
  sandbox_->set_entrypoint(rewrite.get_code()[0].get_operand<x64asm::Label>(0));
  sandbox_->run();
  auto rewrite_output = *(sandbox_->get_output(0));

  /*
  if (last_err != ErrorCode::NORMAL) {
    DEBUG_BUILD_TC(cout << "Sandbox encountered error on target." << endl;)
    return false;
  }

  if (target_output == rewrite_output) {
    DEBUG_BUILD_TC(cout << "Got a counterexample -- but it did the same thing on target/rewrite." << endl;)
    return false;
  }
  */

  return true;
}

void AliasMiner::build_testcase_callback(const StateCallbackData& data, void* arg) {

  auto& instr = data.code[data.line];

  AliasMiner* ptr = (AliasMiner*)arg;

  ptr->build_testcase_address_ = data.state.get_addr(instr);

  size_t index = 0;
  if (!instr.is_push() && !instr.is_pop())
    index = instr.mem_index();
  ptr->build_testcase_width_ = instr.get_operand<x64asm::Operand>(index).size();
  ptr->build_testcase_ran_ = true;

}






