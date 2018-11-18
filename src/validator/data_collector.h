// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_VALIDATOR_DATA_COLLECTOR_H
#define STOKE_SRC_VALIDATOR_DATA_COLLECTOR_H

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/sandbox/sandbox.h"
#include "src/validator/int_matrix.h"
#include "src/validator/int_vector.h"
#include "src/validator/line_info.h"

#include <functional>
#include <vector>
#include <map>

//#define DEBUG_CUTPOINTS_DATA

namespace stoke {

class DataCollector {

public:

  struct TracePoint {
    Cfg::id_type block_id;
    CpuState cs;
    size_t line_number;
    size_t index;

    bool operator==(const TracePoint& other) const {
      return index == other.index;
    }

    bool operator!=(const TracePoint& other) const {
      return !((*this) == other);
    }

    bool operator<(const TracePoint& other) const {
      return index < other.index;
    }
  };

  typedef std::vector<TracePoint> Trace;

  /** Setup a sandbox (along with test cases) to use to extract data. */
  DataCollector(Sandbox& sandbox) : sandbox_(sandbox) {
    set_collect_before(false);
  }

  const std::vector<Trace>& get_traces(Cfg& target);

  std::vector<Trace> get_detailed_traces(const Cfg& target, 
                      const LineMap * const linemap = nullptr);

  static CfgPath project_states(Trace& trace) {
    CfgPath p;
    for (auto s : trace) {
      p.push_back(s.block_id);
    }
    return p;
  }

  void serialize(std::ostream& os) const;
  static DataCollector deserialize(std::istream& is);

  const DataCollector& set_collect_before(bool b) {
    collect_before_ = b;
    return *this;
  }

  const Sandbox& get_sandbox() {
    return sandbox_;
  }

private:

  /** Get a complete trace from running the Cfg on a testcase and save into 'trace' */
  void mine_data(const Cfg& cfg, size_t testcase, Trace& trace);

  /** Helper: Check if a basic block ends with a jump or not. */
  static bool ends_with_jump(const Cfg& cfg, Cfg::id_type block);

  /** Data Storage */

  Sandbox sandbox_;

  /** Cache */
  std::map<Cfg*, std::vector<Trace>> cache_;

  /** Callbacks */

  struct CallbackParam {
    Cfg::id_type block_id;
    size_t line_number;
    Trace* trace;
  };

  /** The callback used for gathering data from each of the cutpoints */
  static void callback(const StateCallbackData& data, void* arg);

  bool collect_before_;

};

} // namespace stoke

#endif
