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

#ifndef STOKE_SRC_TRANSFORM_INSTRUCTION_H
#define STOKE_SRC_TRANSFORM_INSTRUCTION_H

#include "src/transform/pools.h"
#include "src/transform/transform.h"
#include <iostream>
using namespace std;
namespace stoke {

class InstructionTransform : public Transform {

public:

  std::string get_name() const {
    return "Instruction";
  }

  InstructionTransform(TransformPools& pools) : Transform(pools) { }

  /** Attempt to transform the Cfg.  The 'TransformInfo'
    will return success/failure, and also metadata to undo
    the transformation if needed.  */
  TransformInfo operator()(Cfg& cfg);
  TransformInfo transform_test(int client, Cfg& cfg){
    std::cout << "instruction.transform_test executed";
  };
  /** Undos a move performed on the Cfg.  Requires the 'TransformInfo'
      originally passed to operator() */
  void undo(Cfg& cfg, const TransformInfo& transform_info) const;

protected:

private:

};

} // namespace stoke

#endif
