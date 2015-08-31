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

    AliasMiner* me = (AliasMiner*)arg;
    me->current_concrete_trace_->push_back(ma);
  }

}

