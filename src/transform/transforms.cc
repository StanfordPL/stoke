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

#include "src/sandbox/sandbox.h"
#include "src/solver/cvc4solver.h"
#include "src/transform/transforms.h"

using namespace std;
using namespace stoke;
using namespace x64asm;


namespace stoke {

bool Transforms::modify(Cfg& cfg, Move type) {
  auto ret = false;
  switch (type) {
  case Move::INSTRUCTION:
    ret = instruction_move(cfg);
    break;
  case Move::OPCODE:
    ret = opcode_move(cfg);
    break;
  case Move::OPERAND:
    ret = operand_move(cfg);
    break;
  case Move::RESIZE:
    ret = resize_move(cfg);
    break;
  case Move::LOCAL_SWAP:
    ret = local_swap_move(cfg);
    break;
  case Move::GLOBAL_SWAP:
    ret = global_swap_move(cfg);
    break;
  case Move::EXTENSION:
    ret = extension_move(cfg);
    break;
  default:
    assert(false);
    return false;
  }

  // Most if not all of these methods have the potential to break invariants
  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
  return ret;
}

bool Transforms::instruction_move(Cfg& cfg) {

  //cout << "Cfg before instruction move" << endl << cfg.get_code() << endl;

  info_ = instr_trans_(cfg);

  //cout << "Successful move? " << info_.success << endl;
  //cout << "Instruction replaced? " << info_.undo_instr << endl;
  //cout << "Instruction index? " << info_.undo_index[0] << endl;

  //cout << "Cfg after instruction move: " << endl << cfg.get_code() << endl;

  return info_.success;

}

bool Transforms::opcode_move(Cfg& cfg) {
  info_ = opcode_trans_(cfg);
  return info_.success;
}

bool Transforms::operand_move(Cfg& cfg) {
  info_ = operand_trans_(cfg);
  return info_.success;
}

bool Transforms::resize_move(Cfg& cfg) {
  info_ = rotate_trans_(cfg);
  return info_.success;
}

bool Transforms::local_swap_move(Cfg& cfg) {
  info_ = local_swap_trans_(cfg);
  return info_.success;
}

bool Transforms::global_swap_move(Cfg& cfg) {
  info_ = global_swap_trans_(cfg);
  return info_.success;
}

bool Transforms::extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...

  // Invariant 1:
  // If this method returns true, it should leave this class in a state such
  // that calling undo_extension_move() will revert cfg to its original state.

  // Invariant 2:
  // If this method returns false, it must leave cfg in its original state.

  // Invariant 3:
  // If validator_ is non-null, validator_->is_sound(instr) must hold true for
  // all instructions instr upon return.  (You can assume this holds at the
  // beginning).

  // Invariant 4:
  // The soundness of the underlying function must be preserved. This can be
  // checking by calling ...
  assert(cfg.get_function().check_invariants());

  return false;
}

void Transforms::undo(Cfg& cfg, Move type) {
  switch (type) {
  case Move::INSTRUCTION:
    undo_instruction_move(cfg);
    break;
  case Move::OPCODE:
    undo_opcode_move(cfg);
    break;
  case Move::OPERAND:
    undo_operand_move(cfg);
    break;
  case Move::RESIZE:
    undo_resize_move(cfg);
    break;
  case Move::LOCAL_SWAP:
    undo_local_swap_move(cfg);
    break;
  case Move::GLOBAL_SWAP:
    undo_global_swap_move(cfg);
    break;
    undo_extension_move(cfg);
    break;
  default:
    assert(false);
    break;
  }

  // Most if not all of these methods have the potential to break invariants
  // Make sure that we've left everything back in a valid state before continuing
  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
}

void Transforms::undo_extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...

  // Invariant: If the previous invocation of extension_move() returned true, this
  // method must return cfg to its original state.

  return;
}

} // namespace stoke
