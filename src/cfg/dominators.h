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


#ifndef STOKE_SRC_CFG_DOMINATORS_H
#define STOKE_SRC_CFG_DOMINATORS_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"

namespace stoke {

/** A view over CFGs for computing strongly-connected components.  Uses Tarjan's algorithm. */
class CfgDominators {
public:

  /** You only need to construct an object of this type if you want to 'learn'
   * a path. */
  CfgDominators(const Cfg& cfg) : cfg_(cfg) {
    recompute();
  }

  /** Recompute the dominators information.  Useful if you update the CFG. */
  void recompute();

  std::set<Cfg::id_type> get_dominators(Cfg::id_type block) {
    return dom_[block];
  }


private:

  /** set intersection */
  std::set<Cfg::id_type> intersect(std::set<Cfg::id_type>& s1, std::set<Cfg::id_type>& s2);
  /** set equality */
  bool equals(std::set<Cfg::id_type>& s1, std::set<Cfg::id_type>& s2);

  /** Book-keeping for Tarjan */
  std::map<Cfg::id_type, std::set<Cfg::id_type>> dom_;

  /** The CFG */
  const Cfg& cfg_;

};

} // namespace stoke

#endif
