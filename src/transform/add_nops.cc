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

#include "src/transform/add_nops.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

#define ROUND_UP(X, Y) (X + Y - (X % Y))

namespace stoke {

TransformInfo AddNopsTransform::operator()(Cfg& cfg) {


  TransformInfo ti;
  ti.success = false;

  cout << "Before:" << endl << cfg.get_code() << endl;

  if(cfg.get_code().size() < 3)
    return ti;

  size_t index = (gen_() % (cfg.get_code().size() - 1)) + 1;
  ti.undo_index[0] = index;

  buffer_.reserve((index+1)*32);
  assm_.start(buffer_);
  auto code = cfg.get_code();
  for(size_t i = 0; i < index; ++i) {
    assm_.assemble(code[i]);
  }

  size_t end = buffer_.size() % 0x20;;
  size_t new_nops = 0x20 - end;
  ti.undo_index[1] = new_nops;

  auto function = cfg.get_function();
  cout << "Inserting " << new_nops << " new nops at " << index << std::endl;
  for(size_t i = 0; i < new_nops; ++i) {
    function.insert(index, Instruction(NOP));
  }

  cout << "After:" << endl << cfg.get_code() << endl;

  if (!cfg.check_invariants()) {
    undo(cfg, ti);
    return ti;
  }

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());

  ti.success = true;
  return ti;
}

void AddNopsTransform::undo(Cfg& cfg, const TransformInfo& ti) const {

  cout << "Before undo :" << endl << cfg.get_code() << endl;
  cout << "Undo with " << ti.undo_index[0] << " and " << ti.undo_index[1] << endl;
  auto function = cfg.get_function();
  for(size_t i = 0; i < ti.undo_index[1]; ++i) {
    function.remove(ti.undo_index[0]);
  }
  cout << "After undo:" << endl << cfg.get_code() << endl;

  assert(cfg.invariant_no_undef_reads());
  assert(cfg.get_function().check_invariants());
}



} // namespace stoke
