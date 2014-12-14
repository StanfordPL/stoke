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

    auto instr_1 = code_[line_1];
    auto instr_2 = code_[line_2];

    if(!instr_1.is_explicit_memory_dereference() || !instr_2.is_explicit_memory_dereference())
      return false;

    size_t index_1 = code_[line_1].mem_index();
    size_t index_2 = code_[line_2].mem_index();
    return must_overlap(line_1, index_1, line_2, index_2);
  }

  /** Tells if two memory references may overlap *exactly* */
  bool may_overlap(size_t line_1, size_t line_2) {
    auto instr_1 = code_[line_1];
    auto instr_2 = code_[line_2];

    if(!instr_1.is_explicit_memory_dereference() || !instr_2.is_explicit_memory_dereference()) {
#ifdef DEBUG_ALIASING
      std::cout << "Bad deref" << std::endl;
#endif
      return true;
    }

    size_t index_1 = code_[line_1].mem_index();
    size_t index_2 = code_[line_2].mem_index();
    return may_overlap(line_1, index_1, line_2, index_2);
  }

  /** Tells if two memory references must overlap *exactly* */
  bool must_overlap(size_t line_1, size_t index_1, size_t line_2, size_t index_2) {
    x64asm::M8 m1 = code_[line_1].get_operand<x64asm::M8>(index_1);
    x64asm::M8 m2 = code_[line_2].get_operand<x64asm::M8>(index_2);
    return must_overlap(line_1, m1, line_2, m2);
  }

  /** Tells if two memory references may overlap *at all* */
  bool may_overlap(size_t line_1, size_t index_1, size_t line_2, size_t index_2) {
    x64asm::M8 m1 = code_[line_1].get_operand<x64asm::M8>(index_1);
    x64asm::M8 m2 = code_[line_2].get_operand<x64asm::M8>(index_2);
    return may_overlap(line_1, m1, line_2, m2);
  }

  /** Tells if two memory references must overlap *exactly* */
  template <class T1, class T2>
  bool must_overlap(size_t line_1, x64asm::M<T1> ref_1, size_t line_2, x64asm::M<T2> ref_2) {

    if(!references_comparable(ref_1, ref_2))
      return false; /* We don't know */
    if(ref_1.get_disp() != ref_2.get_disp())
      return false; /* We don't know */

    x64asm::RegSet modified = x64asm::RegSet::empty();
    for(size_t i = line_1; i < line_2; ++i) {
      modified = modified | code_[i].maybe_write_set();
      modified = modified | code_[i].maybe_undef_set();
    }

    if(ref_1.contains_base() && modified.contains(ref_1.get_base()))
      return false; /* We don't know. */
    if(ref_1.contains_index() && modified.contains(ref_1.get_index()))
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
    for(size_t i = min_line; i < max_line; ++i) {
      modified = modified | code_[i].maybe_write_set();
      modified = modified | code_[i].maybe_undef_set();
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

    if(ref_1.get_disp() + ref_1.size()/8 <= ref_2.get_disp())
      return false; /* Victory!  No overlap. */
    if(ref_2.get_disp() + ref_2.size()/8 <= ref_1.get_disp())
      return false; /* Victory!  No overlap. */

    return true;
  }

private:

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
