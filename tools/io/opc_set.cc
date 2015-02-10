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

#include <array>
#include <string>
#include <utility>

#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"

#include "src/ext/x64asm/src/opcode.h"

#include "tools/io/opc_set.h"
#include "tools/io/generic.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace {

array<const char*, X64ASM_NUM_OPCODES> att_ {{
    // Internal mnemonics
    "<label definition>"
    // Auto-generated mnemonics
#include "src/ext/x64asm/src/opcode.att"
  }};

array<const char*, 59> types_ {{
    "hint",
    "imm8",
    "imm16",
    "imm32",
    "imm64",
    "zero",
    "one",
    "three",
    "label",
    "m8",
    "m16",
    "m32",
    "m64",
    "m128",
    "m256",
    "m16int",
    "m32int",
    "m64int",
    "m32fp",
    "m64fp",
    "m80fp",
    "m80bcd",
    "m2byte",
    "m28byte",
    "m108byte",
    "m512byte",
    "farptr1616",
    "farptr1632",
    "farptr1664",
    "mm",
    "pref66",
    "prefrexw",
    "far",
    "moffs8",
    "moffs16",
    "moffs32",
    "moffs64",
    "rl",
    "rh",
    "rb",
    "al",
    "cl",
    "r16",
    "ax",
    "dx",
    "r32",
    "eax",
    "r64",
    "rax",
    "rel8",
    "rel32",
    "sreg",
    "fs",
    "gs",
    "st",
    "st0",
    "xmm",
    "xmm0",
    "ymm"
  }};

vector<pair<Opcode, string>> opcodes;

}

namespace stoke {

int test(const pair<Opcode, string>& a, const pair<Opcode, string>& b) {
  return b.second.compare(0, a.second.size(), a.second);
}
bool cmp(const pair<Opcode, string>& a, const pair<Opcode, string>& b) {
  return test(a, b) > 0;
}
bool binary_search(const string& key, set<Opcode>& os) {
  if (opcodes.size() == 0) {
    // initialize sorted opcode list
    for (int i = ADC_AL_IMM8; i <= XTEST; i++) {
      opcodes.push_back(pair<Opcode, string>((Opcode) i, opcode_to_string((Opcode) i) + "$"));
    }
    sort(opcodes.begin(), opcodes.end(), cmp);
  }

  auto k = pair<Opcode, string>(XTEST, key);
  auto lower = lower_bound(opcodes.begin(), opcodes.end(), k, cmp);
  bool found = false;
  while (lower != opcodes.end() && test(k, *lower) == 0) {
    found = true;
    os.insert(lower->first);
    ++lower;
  }
  return found;
}

void OpcSetReader::operator()(istream& is, set<Opcode>& os) {
  vector<string> args;
  TextReader<vector<string>>()(is, args);

  for (const auto& a : args) {
    if (!binary_search(a, os)) {
      is.setstate(ios::failbit);
      return;
    }
  }
}

void OpcSetWriter::operator()(ostream& os, const set<Opcode>& ocs) {
  os << "{";
  set<const char*> result;
  for (auto opc : ocs) {
    os << " " << opcode_to_string(opc) << "$";
  }
  os << " }";
}

string opcode_to_string(Opcode op) {
  Instruction instr(op);
  string result(att_[op]);
  for (size_t i = 0; i < instr.arity(); i++) {
    result += "_";
    result += types_[(int)instr.type(i)-1];
  }
  return result;
}

} // namespace stoke

