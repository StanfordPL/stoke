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

#ifndef STOKE_SRC_SPECGEN_BASE_H
#define STOKE_SRC_SPECGEN_BASE_H

namespace stoke {

bool specgen_is_base(const x64asm::Opcode& opcode);
bool specgen_is_crypto(const x64asm::Opcode& opcode);
bool specgen_is_jump(const x64asm::Opcode& opcode);
bool specgen_is_system(const x64asm::Opcode& opcode);
bool specgen_is_float(const x64asm::Opcode& opcode);
bool specgen_is_duplicate(const x64asm::Opcode& opcode);
bool specgen_is_sandbox_unsupported(const x64asm::Opcode& op);
bool specgen_is_mm(const x64asm::Opcode& opcode);
bool specgen_is_imm8(const x64asm::Opcode& opcode);

bool specgen_uses_memory(const x64asm::Opcode& opcode);
bool specgen_uses_imm(const x64asm::Opcode& opcode);

} // namespace stoke

#endif



