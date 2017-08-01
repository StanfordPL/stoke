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

#include "src/cfg/dominators.h"

using namespace std;
using namespace stoke;

set<Cfg::id_type> CfgDominators::intersect(set<Cfg::id_type>& s1, set<Cfg::id_type>& s2) {
  set<Cfg::id_type> output;
  set_intersection(s1.begin(), s1.end(), s2.begin(), s2.end(),
                   std::inserter(output, output.begin()));
  return output;
}

bool CfgDominators::equals(set<Cfg::id_type>& s1, set<Cfg::id_type>& s2) {
  return s1 == s2;
}

void CfgDominators::recompute() {

  // Start clean
  dom_.clear();

  // Get a set with all the nodes
  set<Cfg::id_type> all_nodes;
  for(size_t i = 0; i < cfg_.num_blocks(); ++i) {
    all_nodes.insert(i);
  }

  // Initialize dom_ data structure
  dom_[cfg_.get_entry()].insert(cfg_.get_entry());
  for(size_t i = 0; i < cfg_.num_blocks(); ++i) {
    if(i == cfg_.get_entry())
      continue;
    dom_[i] = all_nodes;
  }

  // Fixpoint
  bool changes = true;
  while(changes) {
    changes = false;
    for(Cfg::id_type n : all_nodes) {
      if(n == cfg_.get_entry())
        continue;

      auto old_set = dom_[n];

      // take the intersection of all predecessors
      auto new_set = all_nodes;
      for(auto it = cfg_.pred_begin(n); it != cfg_.pred_end(n); ++it) {
        new_set = intersect(dom_[*it], new_set);
      }
      new_set.insert(n);

      // have we changed?
      changes |= !equals(new_set, old_set);
      dom_[n] = new_set;
    }
  }

}


