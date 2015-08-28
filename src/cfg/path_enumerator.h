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


#ifndef STOKE_SRC_CFG_PATH_ENUMERATOR_H
#define  STOKE_SRC_CFG_PATH_ENUMERATOR_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"

namespace stoke {

class PathEnumerator {
public:

  static std::vector<std::vector<Cfg::id_type>> find_paths(const Cfg& cfg, size_t max_len);

private:

  static void find_paths_helper(const Cfg& cfg,
                                std::vector<Cfg::id_type> path_so_far,
                                size_t remaining,
                                std::vector<std::vector<Cfg::id_type>>& results);

  // no need to construct instances of this class
  PathEnumerator() {}
};

} // namespace stoke

#endif
