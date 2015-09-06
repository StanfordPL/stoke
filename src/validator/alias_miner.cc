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

#define DEBUG_BUILD_TC(X) {X}
#define DEBUG_MEM_SETUP(X) {X}

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

    AliasMiner* me = (AliasMiner*)arg;
    me->current_concrete_trace_->push_back(ma);
  }

}

/** Takes a target/rewrite pair and builds CellMemory objects to represent their
  memory use.  Returns a pair of nulls on failure. */
std::pair<CellMemory*, CellMemory*> AliasMiner::build_cell_model(const Cfg& target, const Cfg& rewrite, const CpuState& tc) {

  auto target_trace = mine_concrete_data(target, tc);
  auto rewrite_trace = mine_concrete_data(rewrite, tc);

  cout << "TARGET: " << endl;
  cout << target.get_code() << endl;
  cout << "REWRITE: " << endl;
  cout << rewrite.get_code() << endl;

  cout << "target_trace_length: " << target_trace.size() << endl;
  for(auto it : target_trace) {
    cout << "@" << it.line << "  " << it.address << " / " << it.width << endl;
  }
  cout << "rewrite_trace_length: " << rewrite_trace.size() << endl;
  for(auto it : rewrite_trace) {
    cout << "@" << it.line << "  " << it.address << " / " << it.width << endl;
  }

  // order traces by start position, and then largest to smallest
  auto compare = [] (const MemoryAccess& m1, const MemoryAccess& m2) {
    if(m1.address == m2.address)
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
  for(auto access : all_trace) {
    uint64_t lower_bound = access.address;
    uint64_t upper_bound = access.address+access.width/8;
    cout << hex << "scheduling " << lower_bound << "->" << upper_bound << endl;

    if(cell_list.size()) {
      auto& last_cell = cell_list[cell_list.size()-1];
      assert(last_cell.first <= lower_bound);
      cout << "last_cell: " << last_cell.first << "+" <<  last_cell.second << endl;
      if(last_cell.first <= lower_bound - last_cell.second) {
        // allocate a new cell
        cout << "Allocating cell " << lower_bound << "+" << access.width/8 << endl;
        cell_list.push_back(pair<uint64_t, size_t>(lower_bound, access.width/8));
      } else if (last_cell.first < upper_bound - last_cell.second){
        // expand the last existing cell
        cout << "Resizing cell " << last_cell.first << "+" << (upper_bound-last_cell.first) << endl;
        last_cell.second = upper_bound - last_cell.first;
      }
    } else {
      cout << "Allocating cell " << lower_bound << "+" << access.width/8 << endl;
      cell_list.push_back(pair<uint64_t, size_t>(lower_bound, access.width/8));
    }
  }


  // Build maps of (line -> (cell number, size))
  std::map<size_t, CellMemory::SymbolicAccess> target_map;
  std::map<size_t, CellMemory::SymbolicAccess> rewrite_map;
  for(size_t i = 0; i < 2; ++i) {
    auto& map = i ? rewrite_map : target_map;
    auto& trace = i ? rewrite_trace : target_trace;
    for(auto access : trace) {
      CellMemory::SymbolicAccess sa;
      sa.line = access.line;
      sa.size = access.width/8;

      bool found = false;
      for(size_t j = 0; j < cell_list.size(); ++j) {
        auto cell = cell_list[j];
        // cells are in ascending order, so only need to check the lower bound
        if(j == cell_list.size() - 1 || cell_list[j+1].first > access.address) {
          sa.cell = j;
          sa.cell_size = cell.second;
          sa.cell_offset = access.address - cell.first;
          assert(sa.cell_offset + sa.size <= sa.cell_size);
          found = true;
          break;
        }        
      }
      assert(found);

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

  // this map keeps track of whether we've initialized a given memory cell yet
  std::map<size_t, bool> cell_set;
  // this map tracks (address, value) pairs for memory
  std::map<uint64_t, BitVector> addr_value_pairs;

  // check if the last sandbox run was a success
  ErrorCode last_err = ErrorCode::NORMAL;

  // loop through target and rewrite memory dereferences and resolve them
  for(size_t k = 0; k < 2; ++k) {
    auto& cfg = k ? target : rewrite;
    auto& memory = k ? target_memory : rewrite_memory;
    auto map = memory.get_line_cell_map();

    auto& code = cfg.get_code();
    auto label = code[0].get_operand<x64asm::Label>(0);

    sandbox_->reset();
    sandbox_->insert_function(cfg);
    sandbox_->insert_input(ceg);
    sandbox_->set_entrypoint(label);

    DEBUG_BUILD_TC(cout << "Building testcase memory for: " << endl << code << endl;)

    for(size_t i = 0, ie = code.size(); i < ie; ++i) {
      auto instr = code[i];
      if(instr.is_memory_dereference() && !instr.is_ret()) {
        DEBUG_BUILD_TC(cout << "BTM: Working on " << instr << " of " << ( k ? "target" : "rewrite") << endl;)
        DEBUG_BUILD_TC(cout << "  (line " << i << ")" << endl;)
        // which cell?
        size_t cell = -1;
        if(map.count(i)) {
          cell = map[i].cell;
          if(cell_set[cell]) {
            DEBUG_BUILD_TC(cout << "  * cell set" << endl;)
            continue;
          }
        }

        // we need to find the address at which this dereference happens
        build_testcase_address_ = 0;
        build_testcase_width_ = 0;
        build_testcase_ran_ = false;
        sandbox_->clear_callbacks();
        sandbox_->insert_before(label, i, build_testcase_callback, this);
        sandbox_->run();

        DEBUG_BUILD_TC(last_err = sandbox_->get_output(0)->code;

                       cout << "  * addr=" << hex << build_testcase_address_ << endl;
                       cout << "  * width=" << build_testcase_width_ << endl;
                       cout << "  * ran=" << build_testcase_ran_ << endl;
                       cout << "  * error=" << readable_error_code(last_err) << endl;)

        //extract the symbolic value
        if(cell != (size_t)-1) {
          const SymBitVector* v = &memory.init_cells_.at(cell);
          auto var = static_cast<const SymBitVectorVar*>(v->ptr);
          auto bv = solver.get_model_bv(var->get_name(), var->get_size());
          addr_value_pairs[build_testcase_address_] = bv;
          cell_set[cell] = true;

          DEBUG_BUILD_TC(
            cout << " * cell with bv: " << (size_t)bv.get_fixed_byte(0) << endl;
            cout << " * size of bv: " << bv.num_fixed_bytes() << endl;)
        } else {
          addr_value_pairs[build_testcase_address_] = BitVector(build_testcase_width_);
          DEBUG_BUILD_TC(
            cout << " * no cell; using 0" << endl;
            cout << " * size of bv: " << BitVector(build_testcase_width_).num_fixed_bytes() << endl;
          )
        }

        // rebuild the testcase for the next run
        DEBUG_BUILD_TC(cout << "MAP:" << endl;
        for(auto p : addr_value_pairs) {
        cout << hex << p.first << dec << " (of size " << p.second.num_fixed_bytes() << ")" << endl;
        })
        if(!Validator::memory_map_to_testcase(addr_value_pairs, ceg))
          return false;
        DEBUG_BUILD_TC(cout << "Testcase so far: " << endl << ceg << endl;)
        sandbox_->clear_inputs();
        sandbox_->insert_input(ceg);
      }
    }
  }

  // Run sandbox on target to see if we did well.
  cout << "Running sandbox with tc: " << endl << *(sandbox_->get_input(0)) << endl;
  sandbox_->clear_callbacks();
  sandbox_->insert_function(target);
  sandbox_->insert_before(tracer_callback, this);
  sandbox_->set_entrypoint(target.get_code()[0].get_operand<x64asm::Label>(0));
  sandbox_->run();
  last_err = sandbox_->get_output(0)->code;
  cout << "Ran sandbox; got " << readable_error_code(last_err) << endl;

  return last_err == ErrorCode::NORMAL;
}

void AliasMiner::build_testcase_callback(const StateCallbackData& data, void* arg) {

  auto& instr = data.code[data.line];

  AliasMiner* ptr = (AliasMiner*)arg;

  ptr->build_testcase_address_ = data.state.get_addr(instr);

  size_t index = 0;
  if(!instr.is_push() && !instr.is_pop())
    index = instr.mem_index();
  ptr->build_testcase_width_ = instr.get_operand<x64asm::Operand>(index).size();
  ptr->build_testcase_ran_ = true;

}






