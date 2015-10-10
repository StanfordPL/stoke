// Copyright 2013-2015 Stanford University
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


#ifndef STOKE_SRC_CFG_PATHS_H
#define STOKE_SRC_CFG_PATHS_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"

namespace stoke {

typedef std::vector<Cfg::id_type> CfgPath;

/** Miscelaneous functions for manipulating paths in CFGs, like enumeration /
 * learning / etc. */
class CfgPaths {
public:

  /** You only need to construct an object of this type if you want to 'learn'
   * a path. */
  CfgPaths() {
    sandbox_ = new Sandbox();
    sandbox_->set_abi_check(false);
    sandbox_->set_max_jumps(4096);
  }

  ~CfgPaths() {
    delete sandbox_;
  }

  /** Warning!!!  This sandbox will be reset.  It will be deleted upon reconstruction.
    Use only to override the default sandbox settings.  Use with care. */
  CfgPaths& set_sandbox(Sandbox* sb) {
    delete sandbox_;
    sandbox_ = sb;
    return *this;
  }

  /** Enumerate all paths through a CFG that don't pass through any basic block
   * more than 'max_loops' times.  They will begin at 'start' and stop at 'end'.  
   * 'nopass' (optionally) has a vector of blocks that may not be passed through. */

  static std::vector<CfgPath> enumerate_paths(const Cfg& cfg, size_t max_loops, Cfg::id_type start = -1, Cfg::id_type end = -1, std::vector<Cfg::id_type>* nopass = NULL);

  /** Rewrite a CFG so that it always executes a particular path, replacing
    jumps with NOPs. */
  static Cfg rewrite_cfg_with_path(const Cfg&, const CfgPath& p);

  /** Returns true if first path is a prefix of the second. */
  static bool is_prefix(const CfgPath& p, const CfgPath& q);

  /** Find the path this testcase takes through the CFG.
    Returns 'true' if the sandbox terminated normally.  Appends to whatever is
    passed in the 'path' variable. */
  bool learn_path(CfgPath& path, const Cfg& cfg, const CpuState& tc);

  /** Callback used for learning a path. */
  static void learn_path_callback(const StateCallbackData&, void*);

private:

  /** Used for path learning. */
  Sandbox* sandbox_;
  CfgPath* current_path_;

  static void cleanup_path(CfgPath& p);

  /** Used as a recursive call for enumerate_paths */
  static void enumerate_paths_helper(const Cfg& cfg,
                                     std::vector<Cfg::id_type> path_so_far,
                                     Cfg::id_type end_block,
                                     size_t max_count,
                                     std::map<Cfg::id_type, size_t> counts,
                                     std::vector<std::vector<Cfg::id_type>>& results,
                                     std::vector<Cfg::id_type>*);

};

} // namespace stoke

#endif
