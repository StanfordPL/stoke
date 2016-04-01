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


#include "src/cfg/sccs.h"

using namespace stoke;
using namespace std;

#define MIN(a,b) ((a) < (b) ? (a) : (b))
#define DEBUG_SCC(X)
//#define DEBUG_SCC(X) (cout << X << endl)

/** This follows the pseudocode on Wikipedia for Tarjan's algorithm almost exactly. */

void CfgSccs::tarjan(Cfg::id_type node) {
  DEBUG_SCC("Exploring " << node << " (i.e. index " << next_index_ << ")");

  index_[node] = next_index_;
  lowlink_[node] = next_index_;
  next_index_++;
  stack_.push(node);
  on_stack_[node] = true;

  /** Used to see if we're in a self-loop. */
  bool self_loop = false;

  for (auto succ = cfg_.succ_begin(node); succ != cfg_.succ_end(node); ++succ) {
    DEBUG_SCC("  Searching " << node << " -> " << *succ);

    if (*succ == node) {
      DEBUG_SCC("Found self-loop for " << node);
      self_loop = true;
    }

    if (!index_.count(*succ)) {
      // index is undefined: we haven't visited yet
      tarjan(*succ);
      lowlink_[node] = MIN(lowlink_[node], lowlink_[*succ]);
      DEBUG_SCC("  Updating lowlink (i) for " << node << " via " << *succ << " -> " << lowlink_[node]);
    } else if (on_stack_[*succ]) {
      // on the stack: already visited, but not committed to SCC
      lowlink_[node] = MIN(lowlink_[node], index_[*succ]);
      DEBUG_SCC("  Updating lowlink (ii) for " << node << " via " << *succ << " -> " << lowlink_[node]);
    }
  }

  if (lowlink_[node] == index_[node]) {
    if (stack_.top() == node) {
      DEBUG_SCC("Found singleton SCC " << node);
      // We're a singleton.
      if (self_loop) {
        // There's a self-loop, so we count as a SCC.
        sccs_[node] = count_;
        scc_to_blocks_[count_].push_back(node);
        count_++;
      } else {
        // No self-loop
        sccs_[node] = -1;
      }
      on_stack_[stack_.top()] = false;
      stack_.pop();

    } else {
      // There's an SCC with more than one node.
      // Here's where we add an SCC
      DEBUG_SCC("FOUND SCC");
      while (stack_.top() != node) {
        sccs_[stack_.top()] = count_;
        scc_to_blocks_[count_].push_back(stack_.top());
        DEBUG_SCC("  " << stack_.top());
        on_stack_[stack_.top()] = false;
        stack_.pop();
      }
      DEBUG_SCC("  " << node);
      on_stack_[stack_.top()] = false;
      stack_.pop();
      sccs_[node] = count_;
      scc_to_blocks_[count_].push_back(node);
      count_++;
    }
  }

}

void CfgSccs::recompute() {

  /** Reset result variables */
  count_ = 0;
  sccs_.clear();
  scc_to_blocks_.clear();

  /** Reset bookkeeping variables */
  index_.clear();
  lowlink_.clear();
  index_.clear();
  while (stack_.size())
    stack_.pop();
  on_stack_.clear();
  next_index_ = 0;

  /** Make sure tarjan is called on every node */
  for (auto it = cfg_.reachable_begin(); it != cfg_.reachable_end(); ++it) {
    if (index_.count(*it) == 0) {
      DEBUG_SCC("**** Initiating search rooted at " << *it);
      tarjan(*it);
    }
  }

}
