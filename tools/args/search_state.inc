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

#ifndef STOKE_TOOLS_ARGS_SEARCH_STATE_INC
#define STOKE_TOOLS_ARGS_SEARCH_STATE_INC

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg_transforms.h"
#include "src/tunit/tunit.h"
#include "tools/io/tunit.h"

namespace stoke {

// See x64asm issue #154 --
// Ideally, we'd just set default_val to CfgTransforms::minimal_correct_cfg().get_function()
// The problem is this method references x64asm's static register sets which haven't necessarily
// been initialized at this (static) point.
// Here is an inline version of what the method would return --

#define CODE \
  x64asm::Code({ \
      {x64asm::LABEL_DEFN, {x64asm::Label(".anonymous_function")}}, \
      \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rax(), x64asm::Constants::rax()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rdx(), x64asm::Constants::rdx()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rcx(), x64asm::Constants::rcx()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rbx(), x64asm::Constants::rbx()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rdi(), x64asm::Constants::rdi()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rsi(), x64asm::Constants::rsi()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rbp(), x64asm::Constants::rbp()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::rsp(), x64asm::Constants::rsp()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r8(),  x64asm::Constants::r8()}},  \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r9(),  x64asm::Constants::r9()}},  \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r10(), x64asm::Constants::r10()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r11(), x64asm::Constants::r11()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r12(), x64asm::Constants::r12()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r13(), x64asm::Constants::r13()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r14(), x64asm::Constants::r14()}}, \
      {x64asm::XOR_R64_R64, {x64asm::Constants::r15(), x64asm::Constants::r15()}}, \
      \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm0(), x64asm::Constants::xmm0()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm1(), x64asm::Constants::xmm1()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm2(), x64asm::Constants::xmm2()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm3(), x64asm::Constants::xmm3()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm4(), x64asm::Constants::xmm4()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm5(), x64asm::Constants::xmm5()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm6(), x64asm::Constants::xmm6()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm7(), x64asm::Constants::xmm7()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm8(), x64asm::Constants::xmm8()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm9(), x64asm::Constants::xmm9()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm10(), x64asm::Constants::xmm10()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm11(), x64asm::Constants::xmm11()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm12(), x64asm::Constants::xmm12()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm13(), x64asm::Constants::xmm13()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm14(), x64asm::Constants::xmm14()}}, \
      {x64asm::PXOR_XMM_XMM, {x64asm::Constants::xmm15(), x64asm::Constants::xmm15()}}, \
      \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm0(), x64asm::Constants::mm0()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm1(), x64asm::Constants::mm1()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm2(), x64asm::Constants::mm2()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm3(), x64asm::Constants::mm3()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm4(), x64asm::Constants::mm4()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm5(), x64asm::Constants::mm5()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm6(), x64asm::Constants::mm6()}}, \
      {x64asm::PXOR_MM_MM, {x64asm::Constants::mm7(), x64asm::Constants::mm7()}}, \
      \
      {x64asm::XOR_R32_R32, {x64asm::Constants::rax(), x64asm::Constants::rax()}}, \
      {x64asm::ADD_R32_IMM32, {x64asm::Constants::rax(), x64asm::Imm32(0)}}, \
      \
      {x64asm::RET} \
  })

cpputil::Heading& search_state_heading =
  cpputil::Heading::create("Search State Options:");

cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& current_arg =
  cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>::create("current")
  .usage("<path/to/file.s>")
  .default_val(CODE)
  .description("Current rewrite; used with --init previous");

cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& best_yet_arg =
  cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>::create("best_yet")
  .usage("<path/to/file.s>")
  .default_val(CODE)
  .description("Best rewrite; used with --init previous");

cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>& best_correct_arg =
  cpputil::FileArg<TUnit, TUnitReader, TUnitWriter>::create("best_correct")
  .usage("<path/to/file.s>")
  .default_val(CODE)
  .description("Best correct rewrite; used with --init previous");

#undef CODE

} // namespace stoke

#endif
