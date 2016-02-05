// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#ifndef STOKE_SRC_CFG_SCCS_H
#define STOKE_SRC_CFG_SCCS_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"

namespace stoke {

/** A view over CFGs for computing strongly-connected components.  Uses Tarjan's algorithm. */
class CfgSccs {
public:

  /** You only need to construct an object of this type if you want to 'learn'
   * a path. */
  CfgSccs(const Cfg& cfg) : cfg_(cfg) {
    recompute();
  }

  /** Recompute the SCC information.  Useful if you update the CFG. */
  void recompute();


  /** Returns the number of non-singleton SCCs */
  size_t count() const {
    return count_;
  }

  /** Is this basic block in any loop at all? */
  bool in_scc(Cfg::id_type b) const {
    if (sccs_.count(b) == 0)
      return false;
    return sccs_.at(b) != -1;
  }

  /** Which scc is this block in?  Returns -1 if !in_scc(b). */
  int get_scc(Cfg::id_type b) const {
    if (sccs_.count(b) == 0)
      return -1;
    return sccs_.at(b);
  }

  /** Get a list of blocks in an SCC */
  std::vector<Cfg::id_type> get_blocks(size_t scc) {
    assert(scc < count());
    return scc_to_blocks_[scc];
  }

private:

  /** Recursive call for Tarjan's algorithm */
  void tarjan(Cfg::id_type node);

  /** Book-keeping for Tarjan */
  std::map<Cfg::id_type, size_t> index_;
  std::map<Cfg::id_type, size_t> lowlink_;
  std::stack<Cfg::id_type> stack_;
  std::map<Cfg::id_type, bool> on_stack_;
  size_t next_index_;

  /** The CFG */
  const Cfg& cfg_;
  /** Map from basic block -> SCC.  (-1) if loop-free singleton. */
  std::map<Cfg::id_type, int> sccs_;
  /** Map from SCC -> vector of basic blocks */
  std::map<size_t, std::vector<Cfg::id_type>> scc_to_blocks_;
  /** Number of SCCs, excluding loop-free singletons. */
  size_t count_;

};

} // namespace stoke

#endif
