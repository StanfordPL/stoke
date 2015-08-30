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


#include "src/cfg/path_enumerator.h"

using namespace stoke;
using namespace std;

//#define DEBUG_PATH_ENUM 1


vector<vector<Cfg::id_type>> PathEnumerator::find_paths(const Cfg& cfg, size_t max_len) {

  vector<vector<Cfg::id_type>> results;

  vector<Cfg::id_type> path_so_far;
  path_so_far.push_back(cfg.get_entry());

  std::map<Cfg::id_type, size_t> node_counts;

  if(max_len > 0)
    find_paths_helper(cfg, path_so_far, max_len, node_counts, results);

  return results;
}

void PathEnumerator::find_paths_helper(const Cfg& cfg,
                                       std::vector<Cfg::id_type> path_so_far,
                                       size_t max_count,
                                       std::map<Cfg::id_type, size_t> counts,
                                       std::vector<std::vector<Cfg::id_type>>& results) {

  size_t len = path_so_far.size();
  Cfg::id_type last_block = path_so_far[len - 1];

#ifdef DEBUG_PATH_ENUM
  for(size_t i = 0; i < len; ++i) {
    cout << "  ";
  }
  cout << "Path: ";
  for(size_t i = 0; i < len; ++i) {
    cout << path_so_far[i] << " ";
  }
  cout << endl;
#endif

  // check for end
  if(last_block == cfg.get_exit()) {
#ifdef DEBUG_PATH_ENUM
    for(size_t i = 0; i < len; ++i) {
      cout << "  ";
    }
    cout << "* Adding solution!" << endl;
#endif
    results.push_back(path_so_far);
  }

  // iterate
  for(auto it = cfg.succ_begin(last_block), ie = cfg.succ_end(last_block); it != ie; ++it) {

    size_t this_count = ++counts[*it];
    if(this_count > max_count) {
      counts[*it]--;
#ifdef DEBUG_PATH_ENUM
    for(size_t i = 0; i < len; ++i) {
      cout << "  ";
    }
    cout << "* Successor dead end: " << *it << endl;
#endif
      continue;
    }

#ifdef DEBUG_PATH_ENUM
    for(size_t i = 0; i < len; ++i) {
      cout << "  ";
    }
    cout << "* Exploring successor: " << *it << endl;
#endif

    path_so_far.push_back(*it);
    find_paths_helper(cfg, path_so_far, max_count, counts, results);
    path_so_far.erase(path_so_far.begin() + path_so_far.size()-1);
    counts[*it]--;
  }

}


