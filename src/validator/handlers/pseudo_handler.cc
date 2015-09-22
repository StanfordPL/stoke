// Copyright 2013-2015 Stanford University
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


#include <boost/regex.hpp>

#include "src/validator/handlers/pseudo_handler.h"

using namespace stoke;
using namespace x64asm;
using namespace std;
using namespace boost;

const vector<string> PseudoHandler::supported_regex_ = {
  "^\\.move_([0-9]{3})_([0-9]{3})_([^_]*)_([^_]*)_([^_]*)$",
  "^\\.set_(af|of|sf|zf|cf|pf)$",
  "^\\.clear_(af|of|sf|zf|cf|pf)$",
  "^\\.set_szp_for_(.*)$",
  "^\\.read_(af|of|sf|zf|cf|pf)_into_([^_]*)$",
  "^\\.move_byte_([0-9]+)_of_([^_]*)_to_([^_]*)$",
  "^\\.move_([^_]*)_to_byte_([0-9]+)_of_([^_]*)$",
  "^\\.write_([^_]*)_to_(af|of|sf|zf|cf|pf)$",
  "^\\.move_(128|032)_(128|032)_([^_]*)_([^_]*)_([^_]*)_([^_]*)_([^_]*)$",
};

const map<string, Eflags> eflag_map_ = {
  {"of", Constants::eflags_of()},
  {"zf", Constants::eflags_zf()},
  {"sf", Constants::eflags_sf()},
  {"af", Constants::eflags_af()},
  {"pf", Constants::eflags_pf()},
  {"cf", Constants::eflags_cf()},
};

const map<string, Operand> reg_map_ = {
  {"al", Constants::al()},
  {"cl", Constants::cl()},
  {"dl", Constants::dl()},
  {"bl", Constants::bl()},
  {"ah", Constants::ah()},
  {"ch", Constants::ch()},
  {"dh", Constants::dh()},
  {"bh", Constants::bh()},
  {"spl", Constants::spl()},
  {"bpl", Constants::bpl()},
  {"sil", Constants::sil()},
  {"dil", Constants::dil()},
  {"r8b", Constants::r8b()},
  {"r9b", Constants::r9b()},
  {"r10b", Constants::r10b()},
  {"r11b", Constants::r11b()},
  {"r12b", Constants::r12b()},
  {"r13b", Constants::r13b()},
  {"r14b", Constants::r14b()},
  {"r15b", Constants::r15b()},
  {"ax", Constants::ax()},
  {"cx", Constants::cx()},
  {"dx", Constants::dx()},
  {"bx", Constants::bx()},
  {"sp", Constants::sp()},
  {"bp", Constants::bp()},
  {"si", Constants::si()},
  {"di", Constants::di()},
  {"r8w", Constants::r8w()},
  {"r9w", Constants::r9w()},
  {"r10w", Constants::r10w()},
  {"r11w", Constants::r11w()},
  {"r12w", Constants::r12w()},
  {"r13w", Constants::r13w()},
  {"r14w", Constants::r14w()},
  {"r15w", Constants::r15w()},
  {"eax", Constants::eax()},
  {"ecx", Constants::ecx()},
  {"edx", Constants::edx()},
  {"ebx", Constants::ebx()},
  {"esp", Constants::esp()},
  {"ebp", Constants::ebp()},
  {"esi", Constants::esi()},
  {"edi", Constants::edi()},
  {"r8d", Constants::r8d()},
  {"r9d", Constants::r9d()},
  {"r10d", Constants::r10d()},
  {"r11d", Constants::r11d()},
  {"r12d", Constants::r12d()},
  {"r13d", Constants::r13d()},
  {"r14d", Constants::r14d()},
  {"r15d", Constants::r15d()},
  {"rax", Constants::rax()},
  {"rcx", Constants::rcx()},
  {"rdx", Constants::rdx()},
  {"rbx", Constants::rbx()},
  {"rsp", Constants::rsp()},
  {"rbp", Constants::rbp()},
  {"rsi", Constants::rsi()},
  {"rdi", Constants::rdi()},
  {"r8", Constants::r8()},
  {"r9", Constants::r9()},
  {"r10", Constants::r10()},
  {"r11", Constants::r11()},
  {"r12", Constants::r12()},
  {"r13", Constants::r13()},
  {"r14", Constants::r14()},
  {"r15", Constants::r15()},
  {"xmm0", Constants::xmm0()},
  {"xmm1", Constants::xmm1()},
  {"xmm2", Constants::xmm2()},
  {"xmm3", Constants::xmm3()},
  {"xmm4", Constants::xmm4()},
  {"xmm5", Constants::xmm5()},
  {"xmm6", Constants::xmm6()},
  {"xmm7", Constants::xmm7()},
  {"xmm8", Constants::xmm8()},
  {"xmm9", Constants::xmm9()},
  {"xmm10", Constants::xmm10()},
  {"xmm11", Constants::xmm11()},
  {"xmm12", Constants::xmm12()},
  {"xmm13", Constants::xmm13()},
  {"xmm14", Constants::xmm14()},
  {"xmm15", Constants::xmm15()},
  {"ymm0", Constants::ymm0()},
  {"ymm1", Constants::ymm1()},
  {"ymm2", Constants::ymm2()},
  {"ymm3", Constants::ymm3()},
  {"ymm4", Constants::ymm4()},
  {"ymm5", Constants::ymm5()},
  {"ymm6", Constants::ymm6()},
  {"ymm7", Constants::ymm7()},
  {"ymm8", Constants::ymm8()},
  {"ymm9", Constants::ymm9()},
  {"ymm10", Constants::ymm10()},
  {"ymm11", Constants::ymm11()},
  {"ymm12", Constants::ymm12()},
  {"ymm13", Constants::ymm13()},
  {"ymm14", Constants::ymm14()},
  {"ymm15", Constants::ymm15()},
};

Handler::SupportLevel PseudoHandler::get_support(const Instruction& instr) {
  if (instr.get_opcode() == CALL_LABEL) {
    auto lbl = instr.get_operand<Label>(0).get_text();
    for (auto lbl_regex : supported_regex_) {
      regex r(lbl_regex);
      if (regex_match(lbl, r)) {
        return (Handler::SupportLevel)(SupportLevel::BASIC | SupportLevel::CEG);
      }
    }
  }
  return SupportLevel::NONE;
}

void PseudoHandler::build_circuit(const Instruction& instr, SymState& ss) {

  error_ = "";
  if (!get_support(instr)) {
    error_ = "Instruction not supported by pseudo handler";
    return;
  }

  auto lbl = instr.get_operand<Label>(0).get_text();

  // split move
  smatch result;
  regex split_move_r(supported_regex_[0]);
  if (regex_match(lbl, result, split_move_r)) {
    auto from = stoi(result[1]);
    auto to = stoi(result[2]);
    auto r0 = reg_map_.at(result[3]);
    auto r1 = reg_map_.at(result[4]);
    auto r2 = reg_map_.at(result[5]);
    if (from > to) {
      assert(from == 2*to);
      assert(r0.size() == from);
      assert(r1.size() == to);
      assert(r2.size() == to);
      ss.set(r1, ss[r0][to-1][0]);
      ss.set(r2, ss[r0][2*to-1][to]);
      return;
    } else {
      assert(2*from == to);
      assert(r0.size() == from);
      assert(r1.size() == from);
      assert(r2.size() == to);
      ss.set(r2, ss[r1][from-1][0] || ss[r0][from-1][0]);
      return;
    }
  }

  // set eflag
  regex set_flag_r(supported_regex_[1]);
  if (regex_match(lbl, result, set_flag_r)) {
    auto flag = eflag_map_.at(result[1]);
    ss.set(flag, SymBool::constant(true));
    return;
  }

  // clear eflag
  regex clear_flag_r(supported_regex_[2]);
  if (regex_match(lbl, result, clear_flag_r)) {
    auto flag = eflag_map_.at(result[1]);
    ss.set(flag, SymBool::constant(false));
    return;
  }

  // set flags according to result
  regex flags_acc_res_r(supported_regex_[3]);
  if (regex_match(lbl, result, flags_acc_res_r)) {
    auto reg = reg_map_.at(result[1]);
    ss.set_szp_flags(ss[reg], reg.size());
    return;
  }

  // read flags into a gp register
  regex read_flag_r(supported_regex_[4]);
  if (regex_match(lbl, result, read_flag_r)) {
    auto flag = eflag_map_.at(result[1]);
    auto reg = reg_map_.at(result[2]);
    ss.set(reg, SymBitVector::constant(63, 0) || SymBitVector::from_bool(ss[flag]));
    return;
  }

  // move a single byte from a gp
  regex byte_from_gp_r(supported_regex_[5]);
  if (regex_match(lbl, result, byte_from_gp_r)) {
    auto i = stoi(result[1]);
    auto from = reg_map_.at(result[2]);
    auto to = reg_map_.at(result[3]);
    ss.set(to, ss[from][(i+1)*8-1][i*8]);
    return;
  }

  // move a single byte to a gp
  regex byte_to_gp_r(supported_regex_[6]);
  if (regex_match(lbl, result, byte_to_gp_r)) {
    auto from = reg_map_.at(result[1]);
    auto i = stoi(result[2]);
    auto to = reg_map_.at(result[3]);
    if ((i+1)*8 == to.size()) {
      ss.set(to, ss[from] || ss[to][i*8-1][0]);
    } else if (i == 0) {
      ss.set(to, ss[to][to.size()-1][(i+1)*8] || ss[from]);
    } else {
      ss.set(to, ss[to][to.size()-1][(i+1)*8] || ss[from] || ss[to][i*8-1][0]);
    }
    return;
  }

  // write a flag based on a gp register (last bit)
  regex write_flag_r(supported_regex_[7]);
  if (regex_match(lbl, result, write_flag_r)) {
    auto reg = reg_map_.at(result[1]);
    auto flag = eflag_map_.at(result[2]);
    ss.set(flag, ss[reg][0]);
    return;
  }

  // 4 way split move of vector register
  regex split_move_4x_r(supported_regex_[8]);
  if (regex_match(lbl, result, split_move_4x_r)) {
    auto from = stoi(result[1]);
    auto to = stoi(result[2]);
    auto r0 = reg_map_.at(result[3]);
    auto r1 = reg_map_.at(result[4]);
    auto r2 = reg_map_.at(result[5]);
    auto r3 = reg_map_.at(result[6]);
    auto r4 = reg_map_.at(result[7]);
    if (from > to) {
      assert(from == 128);
      assert(to == 32);
      assert(r0.size() == 128);
      assert(r1.size() == 128);
      assert(r2.size() == 128);
      assert(r3.size() == 128);
      assert(r4.size() == 128);
      ss.set(r1, ss[r1][from-1][to] || ss[r0][1*to-1][0*to]);
      ss.set(r2, ss[r2][from-1][to] || ss[r0][2*to-1][1*to]);
      ss.set(r3, ss[r3][from-1][to] || ss[r0][3*to-1][2*to]);
      ss.set(r4, ss[r4][from-1][to] || ss[r0][4*to-1][3*to]);
      return;
    } else {
      assert(from == 32);
      assert(to == 128);
      assert(r0.size() == 128);
      assert(r1.size() == 128);
      assert(r2.size() == 128);
      assert(r3.size() == 128);
      assert(r4.size() == 128);
      ss.set(r4, ss[r3][from-1][0] || ss[r2][from-1][0] || ss[r1][from-1][0] || ss[r0][from-1][0]);
      return;
    }
  }

  std::cout << lbl << std::endl;
  assert(false);
}

