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


#include "src/validator/path_unroller.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

#define DEBUG_LINEMAP(X) { if(0) {X} }

/** Construct an unrolled version of a Cfg for a given path, and populate the
 * linemap data structure that maps lines of the unrolled CFG to those of the
 * original program. */
void PathUnroller::generate_linemap(const Cfg& cfg, const CfgPath& p, LineMap& to_populate, bool is_rewrite, Code& unrolled) {
  auto& function = cfg.get_function();
  auto& code = cfg.get_code();
  bool first = true;

  size_t line_no = 0;
  for (auto node : p) {
    if (cfg.num_instrs(node) == 0)
      continue;

    size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(node, 0));
    size_t end_index = start_index + cfg.num_instrs(node);
    for (size_t i = start_index; i < end_index; ++i) {

      /** build derefernece info */
      DereferenceInfo deref;
      deref.line_number = line_no;
      deref.is_rewrite = is_rewrite;
      deref.is_invariant = false;
      deref.implicit_dereference = false;

      LineInfo li;
      li.line_number = i;
      li.block_number = node;
      li.rip_offset = function.hex_offset(i) + function.get_rip_offset() + function.hex_size(i);
      li.deref = deref;
      to_populate[line_no++] = li;

      auto& instr = code[i];

      /** insert an extra label if there isn't one already. */
      // TODO: bug here / leaky abstraction.  
      // if the first basic block in the sequence has only one instruction, then we'll miscount
      // the number of times this basic block was executed down the road...
      if(first && !instr.is_label_defn()) {
        unrolled.push_back(Instruction(Opcode::LABEL_DEFN, { Label(".anonymous_function") }));
        to_populate[line_no++] = li;
      }
      first = false;

      if(instr.is_label_defn()) {
        if(unrolled.size() == 0)
          unrolled.push_back(instr);
        else
          unrolled.push_back(Instruction(Opcode::NOP));
      } else if(!instr.is_any_jump()) {
        unrolled.push_back(instr);
      } else {
        unrolled.push_back(Instruction(Opcode::NOP));
      }
      assert(line_no == unrolled.size());

    }
  }
  unrolled.push_back(Instruction(Opcode::RET));
  DEBUG_LINEMAP(cout << "[generate_linemap] unrolled has size " << unrolled.size() << " linemap has size " << to_populate.size() << endl;)

}
