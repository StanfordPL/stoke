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

#ifndef STOKE_SRC_VALIDATOR_DEMO_OBLIGATION_CHECKER_H
#define STOKE_SRC_VALIDATOR_DEMO_OBLIGATION_CHECKER_H

#include <vector>

#include "src/validator/obligation_checker.h"
#include "src/validator/handlers/combo_handler.h"

namespace stoke {

class DemoObligationChecker : public ObligationChecker {

public:

  DemoObligationChecker() :
    handler_(), filter_(handler_)
  {
  }

  ~DemoObligationChecker() {
  }

  virtual void check(const Cfg& target, const Cfg& rewrite,
                     Cfg::id_type target_block, Cfg::id_type rewrite_block,
                     const CfgPath& p, const CfgPath& q,
                     Invariant& assume, Invariant& prove,
                     const std::vector<std::pair<CpuState, CpuState>>& testcases,
                     Callback& callback,
                     void* optional = NULL) {
    Result r;
    r.verified = false;
    r.has_ceg = false;
    r.has_error = false;
    callback(r, optional);
  }

  /** Blocks until all the checking has done and the callbacks have been called. */
  virtual void block_until_complete() {

  }

  /** Get the filter */
  virtual Filter& get_filter() {
    return filter_;
  }

private:

  /** Book keeping */
  ComboHandler handler_;
  DefaultFilter filter_;

};

} //namespace stoke

#endif
