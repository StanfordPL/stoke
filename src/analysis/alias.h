// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#ifndef STOKE_SRC_ANALYSIS_ALIASING_H
#define STOKE_SRC_ANALYSIS_ALIASING_H

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

class AliasAnalysis {

public:
  AliasAnalysis(const x64asm::Code& code) : code_(code) {}

  /** Tells if two memory references must overlap *exactly* */
  bool must_overlap(size_t line_1, size_t line_2) {

    auto p1 = line_to_reference(line_1);
    auto p2 = line_to_reference(line_2);
    if(!p1.first || !p2.first)
      return false;

    return must_overlap(line_1, p1.second, line_2, p2.second);
  }

  /** Tells if two memory references may overlap *at all* */
  bool may_overlap(size_t line_1, size_t line_2) {

    auto p1 = line_to_reference(line_1);
    auto p2 = line_to_reference(line_2);
    if(!p1.first || !p2.first)
      return true;

    return may_overlap(line_1, p1.second, line_2, p2.second);
  }

  /** Tells if two memory references must overlap *exactly* */
  template <class T1, class T2>
  bool must_overlap(size_t line_1, x64asm::M<T1> ref_1, size_t line_2, x64asm::M<T2> ref_2) {

    if(!references_comparable(ref_1, ref_2))
      return false; /* We don't know */
    if(ref_1.size() != ref_2.size())
      return false;

    int32_t displacement = 0;

    x64asm::RegSet modified = x64asm::RegSet::empty();
    for(size_t i = line_1; i < line_2; ++i) {
      if(code_[i].is_push() && ref_1.get_base() == x64asm::rsp) {
        displacement -= code_[i].get_operand<x64asm::Operand>(0).size()/8;
      } else if (code_[i].is_pop() && ref_1.get_base() == x64asm::rsp) {
        if(code_[i].get_operand<x64asm::Operand>(0).is_typical_memory() &&
            code_[i].get_operand<x64asm::M8>(0).get_base() == x64asm::rsp)
          modified = modified | code_[i].maybe_write_set();
        displacement += code_[i].get_operand<x64asm::Operand>(0).size()/8;
      } else {
        modified = modified | code_[i].maybe_write_set();
        modified = modified | code_[i].maybe_undef_set();
      }
    }

    if(ref_1.contains_base() && modified.contains(ref_1.get_base()))
      return false; /* We don't know. */
    if(ref_1.contains_index() && modified.contains(ref_1.get_index()))
      return false; /* We don't know */

    if((int32_t)ref_1.get_disp() != (int32_t)ref_2.get_disp() + displacement)
      return false; /* We don't know */

    return true; /* The must be exactly the same */
  }

  /** Tells if two memory references may overlap *at all* */
  template <class T1, class T2>
  bool may_overlap(size_t line_1, x64asm::M<T1> ref_1, size_t line_2, x64asm::M<T2> ref_2) {

    if(!references_comparable(ref_1, ref_2)) {
#ifdef DEBUG_ALIASING
      std::cout << "Non-comparable" << std::endl;
#endif
      return true; /* We don't know */
    }

    x64asm::RegSet modified = x64asm::RegSet::empty();
    size_t min_line = (line_1 < line_2 ? line_1 : line_2);
    size_t max_line = (line_1 > line_2 ? line_1 : line_2);

    int32_t displacement = 0;

    for(size_t i = min_line; i < max_line; ++i) {
      if(code_[i].is_push() && ref_1.get_base() == x64asm::rsp) {
        displacement -= code_[i].get_operand<x64asm::Operand>(0).size()/8;
      } else if (code_[i].is_pop() && ref_1.get_base() == x64asm::rsp) {
        if(code_[i].get_operand<x64asm::Operand>(0).is_typical_memory() &&
            code_[i].get_operand<x64asm::M8>(0).get_base() == x64asm::rsp)
          modified = modified | code_[i].maybe_write_set();
        displacement += code_[i].get_operand<x64asm::Operand>(0).size()/8;
      } else {
        modified = modified | code_[i].maybe_write_set();
        modified = modified | code_[i].maybe_undef_set();
      }
    }

    if(ref_1.contains_base() && modified.contains(ref_1.get_base())) {
#ifdef DEBUG_ALIASING
      std::cout << "Modified base" << std::endl;
#endif
      return true; /* We don't know */
    }
    if(ref_1.contains_index() && modified.contains(ref_1.get_index())) {
#ifdef DEBUG_ALIASING
      std::cout << "Modified index" << std::endl;
#endif
      return true; /* We don't know */
    }

    if((int32_t)ref_1.get_disp() + (int32_t)ref_1.size()/8 <= (int32_t)ref_2.get_disp() + displacement)
      return false; /* Victory!  No overlap. */
    if((int32_t)ref_2.get_disp() + displacement + (int32_t)ref_2.size()/8 <= (int32_t)ref_1.get_disp())
      return false; /* Victory!  No overlap. */

    return true;
  }

private:

  std::pair<bool, x64asm::M64> line_to_reference(size_t line) {

    x64asm::M64 dummy(x64asm::rax);

    auto instr = code_[line];
    if(instr.is_explicit_memory_dereference()) {
      // usually good, unless there's a push/pop too
      if(instr.is_push() || instr.is_pop())
        return std::pair<bool, x64asm::M64>(false, dummy);

      return std::pair<bool, x64asm::M64>(true, instr.get_operand<x64asm::M64>(instr.mem_index()));
    } else if (instr.is_push()) {
      return std::pair<bool, x64asm::M64>(true, x64asm::M64(x64asm::rsp, x64asm::Imm32(-8)));
    } else if (instr.is_pop()) {
      return std::pair<bool, x64asm::M64>(true, x64asm::M64(x64asm::rsp));
    } else {
      return std::pair<bool, x64asm::M64>(false, dummy);
    }
  }

  template <class T1, class T2>
  bool references_comparable(x64asm::M<T1> ref_1, x64asm::M<T2> ref_2) {

    if (ref_1.contains_seg() || ref_2.contains_seg())
      return false;
    if (ref_1.contains_base() != ref_2.contains_base())
      return false;
    if (ref_1.contains_index() != ref_2.contains_index())
      return false;
    if (ref_1.get_base() != ref_2.get_base())
      return false;
    if (ref_1.get_index() != ref_2.get_index())
      return false;
    if (ref_1.get_scale() != ref_2.get_scale())
      return false;

    return true;
  }

  const x64asm::Code& code_;

};


} //namespace stoke

#endif
