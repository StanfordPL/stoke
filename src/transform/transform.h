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

#ifndef STOKE_SRC_TRANSFORM_TRANSFORM_H
#define STOKE_SRC_TRANSFORM_TRANSFORM_H

#include "src/transform/transform_info.h"

namespace stoke {

class Transform {
public:

  /** Attempt to transform the Cfg.  The 'TransformInfo'
    will return success/failure, and also metadata to undo
    the transformation if needed.  */
  virtual TransformInfo operator()(Cfg& cfg) const { }

  /** Undos a move performed on the Cfg.  Requires the 'TransformInfo'
      originally passed to operator() */
  virtual void undo(Cfg& cfg, TransformInfo& transform_info) const { }


  /** Set pools of various operands.  How borring. */
  void set_rh_pool(std::vector<x64asm::Rh> rhs) {
    rh_pool_ = rhs
  }
  void set_r8_pool(std::vector<x64asm::R8> r8s) {
    r8_pool_ = r8s;
  }
  void set_r16_pool(std::vector<x64asm::R16> r16s) {
    r16_pool_ = r16s;
  }
  void set_r32_pool(std::vector<x64asm::R32> r32s) {
    r32_pool_ = r32s;
  }
  void set_r64_pool(std::vector<x64asm::R64> r64s) {
    r64_pool_ = r64s;
  }
  void set_mm_pool(std::vector<x64asm::Mm> mms) {
    mm_pool_ = mms;
  }
  void set_sreg_pool(std::vector<x64asm::Sreg> sregs) {
    sreg_pool_ = sregs;
  }
  void set_st_pool(std::vector<x64asm::St> sts) {
    st_pool_ = sts;
  }
  void set_xmm_pool(xmmd::vector<x64asm::Xmm> xmms) {
    xmm_pool_ = xmms;
  }
  void set_ymm_pool(ymmd::vector<x64asm::Ymm> ymms) {
    ymm_pool_ = ymms;
  }
  void set_imm_pool(immd::vector<x64asm::Imm64> imms) {
    imm_pool_ = imms;
  }
  void set_m_pool(md::vector<x64asm::M8> ms) {
    m_pool_ = ms;
  }
  void set_label_pool(labeld::vector<x64asm::Label> labels) {
    label_pool_ = labels;
  }
  void set_rip_pool(ripd::vector<x64asm::Imm32> rips) {
    rip_pool_ = rips;
  }

protected:

  /** The set of control free opcodes. */
  std::vector<x64asm::Opcode> control_free_;
  /** The set of control free type equivalent opcodes for each opcode. */
  std::vector<std::vector<x64asm::Opcode>> control_free_type_equiv_;

  /** Operand pool. */
  std::vector<x64asm::Rh> rh_pool_;
  /** Operand pool. */
  std::vector<x64asm::R8> r8_pool_;
  /** Operand pool. */
  std::vector<x64asm::R16> r16_pool_;
  /** Operand pool. */
  std::vector<x64asm::R32> r32_pool_;
  /** Operand pool. */
  std::vector<x64asm::R64> r64_pool_;
  /** Operand pool. */
  std::vector<x64asm::Mm> mm_pool_;
  /** Operand pool. */
  std::vector<x64asm::Sreg> sreg_pool_;
  /** Operand pool. */
  std::vector<x64asm::St> st_pool_;
  /** Operand pool. */
  std::vector<x64asm::Xmm> xmm_pool_;
  /** Operand pool. */
  std::vector<x64asm::Ymm> ymm_pool_;
  /** Operand pool. */
  std::vector<x64asm::Imm64> imm_pool_;
  /** Operand pool. */
  std::vector<x64asm::M8> m_pool_;
  /** Operand pool. */
  std::vector<x64asm::Label> label_pool_;
  /** Operand pool -- these are global offsets. */
  std::vector<x64asm::Imm32> rip_pool_;



private:

};

} // namespace stoke

#endif
