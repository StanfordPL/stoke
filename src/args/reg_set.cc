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

#include <array>
#include <string>
#include <utility>

#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"

#include "src/args/generic.h"
#include "src/args/reg_set.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace {

array<pair<string, R64>, 68> gps {{
    {"%al", rax},
    {"%cl", rcx},
    {"%dl", rdx},
    {"%bl", rbx},

    {"%ah", rax},
    {"%ch", rcx},
    {"%dh", rdx},
    {"%bh", rbx},

    {"%spl", rsp},
    {"%bpl", rbp},
    {"%sil", rsi},
    {"%dil", rdi},
    {"%r8b", r8},
    {"%r9b", r9},
    {"%r10b", r10},
    {"%r11b", r11},
    {"%r12b", r12},
    {"%r13b", r13},
    {"%r14b", r14},
    {"%r15b", r15},

    {"%ax", rax},
    {"%cx", rcx},
    {"%dx", rdx},
    {"%bx", rbx},
    {"%sp", rsp},
    {"%bp", rbp},
    {"%si", rsi},
    {"%di", rdi},
    {"%r8w", r8},
    {"%r9w", r9},
    {"%r10w", r10},
    {"%r11w", r11},
    {"%r12w", r12},
    {"%r13w", r13},
    {"%r14w", r14},
    {"%r15w", r15},

    {"%eax", rax},
    {"%ecx", rcx},
    {"%edx", rdx},
    {"%ebx", rbx},
    {"%esp", rsp},
    {"%ebp", rbp},
    {"%esi", rsi},
    {"%edi", rdi},
    {"%r8d", r8},
    {"%r9d", r9},
    {"%r10d", r10},
    {"%r11d", r11},
    {"%r12d", r12},
    {"%r13d", r13},
    {"%r14d", r14},
    {"%r15d", r15},

    {"%rax", rax},
    {"%rcx", rcx},
    {"%rdx", rdx},
    {"%rbx", rbx},
    {"%rsp", rsp},
    {"%rbp", rbp},
    {"%rsi", rsi},
    {"%rdi", rdi},
    {"%r8", r8},
    {"%r9", r9},
    {"%r10", r10},
    {"%r11", r11},
    {"%r12", r12},
    {"%r13", r13},
    {"%r14", r14},
    {"%r15", r15}
  }
};

array<pair<string, Ymm>, 32> ys {{
    {"%xmm0", ymm0},
    {"%xmm1", ymm1},
    {"%xmm2", ymm2},
    {"%xmm3", ymm3},
    {"%xmm4", ymm4},
    {"%xmm5", ymm5},
    {"%xmm6", ymm6},
    {"%xmm7", ymm7},
    {"%xmm8", ymm8},
    {"%xmm9", ymm9},
    {"%xmm10", ymm10},
    {"%xmm11", ymm11},
    {"%xmm12", ymm12},
    {"%xmm13", ymm13},
    {"%xmm14", ymm14},
    {"%xmm15", ymm15},

    {"%ymm0", ymm0},
    {"%ymm1", ymm1},
    {"%ymm2", ymm2},
    {"%ymm3", ymm3},
    {"%ymm4", ymm4},
    {"%ymm5", ymm5},
    {"%ymm6", ymm6},
    {"%ymm7", ymm7},
    {"%ymm8", ymm8},
    {"%ymm9", ymm9},
    {"%ymm10", ymm10},
    {"%ymm11", ymm11},
    {"%ymm12", ymm12},
    {"%ymm13", ymm13},
    {"%ymm14", ymm14},
    {"%ymm15", ymm15}
  }
};

} // namespace

namespace stoke {

void RegSetReader::operator()(istream& is, RegSet& r) {
  vector<string> args;
  TextReader<vector<string>>()(is, args);

  for (const auto& a : args) {
    auto gp = rsp;
    auto ymm = ymm0;

    if (generic_read(gps, a, gp)) {
      r += gp;
    } else if (generic_read(ys, a, ymm)) {
      r += ymm;
    } else {
      is.setstate(ios::failbit);
      return;
    }
  }
}

void RegSetWriter::operator()(ostream& os, const RegSet& r) {
  os << "{";
	for (const auto& gp : r64s ) {
		if (r.contains(gp)) {
			os << " " << gp;
		}
	}
	for (const auto& sse : ymms ) {
    if (r.contains(sse)) {
      os << " " << sse;
    }
	}
  os << " }";
}

} // namespace stoke
