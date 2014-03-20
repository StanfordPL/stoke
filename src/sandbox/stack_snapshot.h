// Copyright 2014 eric schkufza
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

#ifndef STOKE_SRC_SANDBOX_STACK_SNAPSHOT_H
#define STOKE_SRC_SANDBOX_STACK_SNAPSHOT_H

#include <array>
#include <stdint.h>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/sandbox/cpu_io.h"
#include "src/state/cpu_state.h"

namespace stoke {

/** Records user-/stoke-facing stack frames prior to sandbox execution. */
class StackSnapshot {
 public:
  /** Compiles internal functions. */
  void init() {
    save_user_callee_save_ = CpuIo::read(user_callee_save_,
    x64asm::RegSet::linux_callee_save(), {{x64asm::rsp, (uint64_t*)get_user_rsp()}});
    save_stoke_callee_save_ = CpuIo::read(stoke_callee_save_,
    x64asm::RegSet::linux_callee_save(), {{x64asm::rsp, (uint64_t*)get_stoke_rsp()}});
    restore_stoke_callee_save_ = CpuIo::write(stoke_callee_save_,
        x64asm::RegSet::linux_callee_save() - (x64asm::RegSet::empty() + x64asm::rsp));
  }

  /** Returns the address of the memory that holds the user rsp. */
  void* get_user_rsp() {
    return (void*)user_callee_save_.gp[x64asm::rsp].data();
  }
  /** Returns the address of the memory that holds the stoke rsp. */
  void* get_stoke_rsp() {
    return (void*)stoke_callee_save_.gp[x64asm::rsp].data();
  }

  /** Returns the address of the function that saves user callee-save. */
  void* get_save_user_callee_save() {
    return (void*)save_user_callee_save_.get_entrypoint();
  }
  /** Returns the address of the function that saves stoke callee-save. */
  void* get_save_stoke_callee_save() {
    return (void*)save_stoke_callee_save_.get_entrypoint();
  }
  /** Returns the address of the function that restores stoke callee-save. */
  void* get_restore_stoke_callee_save() {
    return (void*)restore_stoke_callee_save_.get_entrypoint();
  }

  /** Checks whether a state agrees with user-facing callee-save regs. */
  bool check_abi(const CpuState& cs) const;

 private:
  /** User-facing callee-save registers. */
  CpuState user_callee_save_;
  /** A function which records user-facing callee save registers. */
  x64asm::Function save_user_callee_save_;

  /** Stoke-facing callee-save registers. */
  CpuState stoke_callee_save_;
  /** A function which records stoke-facing callee save registers. */
  x64asm::Function save_stoke_callee_save_;
  /** A function which restores stoke-facing callee save registers. */
  x64asm::Function restore_stoke_callee_save_;
};

} // namespace stoke

#endif
