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


#ifndef STOKE_SRC_VALIDATOR_ALIAS_MINER_H
#define STOKE_SRC_VALIDATOR_ALIAS_MINER_H

#include <map>

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/solver/smtsolver.h"
#include "src/state/cpu_state.h"
#include "src/symstate/memory/cell.h"

namespace stoke {

/* This class is used to mine aliasing relationships from a testcase.
   It also will setup a pair of CellMemory objects, and later extract the
   memory from a testcase if need be. */
class AliasMiner {

public:

  struct MemoryAccess {
    size_t line;
    uint64_t address;
    size_t width;
    bool write;
  };

  AliasMiner() {
    sandbox_ = new Sandbox();
    sandbox_->set_abi_check(false);
    sandbox_->set_max_jumps(4096);
  }

  ~AliasMiner() {
    delete sandbox_;
  }

  /** This is a sandbox that *will be reset*.  But, if you want to configure
    a sandbox with special options, you can do that here. The class will delete
    this sandbox upon destruction.  Use with care. */
  AliasMiner& set_sandbox(Sandbox* sb) {
    delete sandbox_;
    sandbox_ = sb;
    return *this;
  }

  /** Takes a target/rewrite pair and builds CellMemory objects to represent their
    memory use.  Returns a pair of nulls on failure. */
  std::pair<CellMemory*, CellMemory*> build_cell_model(const Cfg& target, const Cfg& rewrite, const CpuState& tc);

  /** Takes a testcase with all the registers/flags set correctly for a
   * counterexample, the a CellMemory for each the target/rewrite, and the
   * target/rewrite code.  Then it fills the testcase with the memory
   * locations. Returns if successful. */
  bool build_testcase_memory(CpuState& ceg, SMTSolver& solver, const CellMemory& target_mem, const CellMemory& rewrite_memory, const Cfg& target, const Cfg& rewrite);

  /** Takes a Cfg and a testcase; runs the Cfg on the testcase and tracks
    all memory reads/writes.  Then builds a list of all memory accesses in
    order. */
  std::vector<MemoryAccess> mine_concrete_data(const Cfg& cfg, const CpuState& tc);

  static void mine_concrete_callback(const StateCallbackData& data, void* arg);

  static void build_testcase_callback(const StateCallbackData& data, void* arg);

private:

  Sandbox* sandbox_;

  std::vector<MemoryAccess>* current_concrete_trace_;

  uint64_t build_testcase_address_;
  size_t build_testcase_width_;
  bool build_testcase_ran_;
};

} //namespace

#endif
