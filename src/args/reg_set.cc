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


array<pair<string, Rb>, 16> gp8s {{
    {"%al", al},
    {"%cl", cl},
    {"%dl", dl},
    {"%bl", bl},
    {"%spl", spl},
    {"%bpl", bpl},
    {"%sil", sil},
    {"%dil", dil},
    {"%r8b", r8b},
    {"%r9b", r9b},
    {"%r10b", r10b},
    {"%r11b", r11b},
    {"%r12b", r12b},
    {"%r13b", r13b},
    {"%r14b", r14b},
    {"%r15b", r15b}
}};


array<pair<string, Rh>, 4> gphs {{
    {"%ah", ah},
    {"%ch", ch},
    {"%dh", dh},
    {"%bh", bh}
}};


array<pair<string, R16>, 16> gp16s {{
    {"%ax", ax},
    {"%cx", cx},
    {"%dx", dx},
    {"%bx", bx},
    {"%sp", sp},
    {"%bp", bp},
    {"%si", si},
    {"%di", di},
    {"%r8w", r8w},
    {"%r9w", r9w},
    {"%r10w", r10w},
    {"%r11w", r11w},
    {"%r12w", r12w},
    {"%r13w", r13w},
    {"%r14w", r14w},
    {"%r15w", r15w}
}};

array<pair<string, R32>, 16> gp32s {{
    {"%eax", eax},
    {"%ecx", ecx},
    {"%edx", edx},
    {"%ebx", ebx},
    {"%esp", esp},
    {"%ebp", ebp},
    {"%esi", esi},
    {"%edi", edi},
    {"%r8d", r8d},
    {"%r9d", r9d},
    {"%r10d", r10d},
    {"%r11d", r11d},
    {"%r12d", r12d},
    {"%r13d", r13d},
    {"%r14d", r14d},
    {"%r15d", r15d}
}};

array<pair<string, R64>, 16> gp64s {{
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

array<pair<string, Xmm>, 16> xmms_a {{
    {"%xmm0", xmm0},
    {"%xmm1", xmm1},
    {"%xmm2", xmm2},
    {"%xmm3", xmm3},
    {"%xmm4", xmm4},
    {"%xmm5", xmm5},
    {"%xmm6", xmm6},
    {"%xmm7", xmm7},
    {"%xmm8", xmm8},
    {"%xmm9", xmm9},
    {"%xmm10", xmm10},
    {"%xmm11", xmm11},
    {"%xmm12", xmm12},
    {"%xmm13", xmm13},
    {"%xmm14", xmm14},
    {"%xmm15", xmm15}
}};

array<pair<string, Ymm>, 16> ymms_a {{
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
    Rh rh = ah;
    Rb r8 = al;
    R16 r16 = ax; 
    R32 r32 = eax;
    R64 r64 = rax;
    Xmm xmm = xmm0;
    Ymm ymm = ymm0;

    if (generic_read(gp64s, a, r64)) {
      r += r64;
    } else if (generic_read(gp32s, a, r32)) {
      r += r32;
    } else if (generic_read(gp16s, a, r16)) {
      r += r16;
    } else if (generic_read(gp8s, a, r8)) {
      r += r8;
    } else if (generic_read(gphs, a, rh)) {
      r += rh;
    } else if (generic_read(xmms_a, a, xmm)) {
      r += xmm;
    } else if (generic_read(ymms_a, a, ymm)) {
      r += ymm;
    } else {
      is.setstate(ios::failbit);
      return;
    }
  }
}

void RegSetWriter::operator()(ostream& os, const RegSet& r) {
  os << "{";
	for (size_t i = 0; i < 16; ++i) {
		if (r.contains(r64s[i])) {
			os << " " << r64s[i];
		} else if (r.contains(r32s[i])) {
			os << " " << r32s[i];
		} else if (r.contains(r16s[i])) {
			os << " " << r16s[i];
		} else if (i < 4) {
			if (r.contains(rls[i])) {
				os << " " << rls[i];
			}
			if (r.contains(rhs[i])) {
				os << " " << rhs[i];
			}
		} else if (r.contains(rbs[i-4])) {
			os << " " << rbs[i-4];
		}
	}
	for (size_t i = 0; i < 16; ++i) {
		if (r.contains(ymms[i])) {
			os << " " << ymms[i];
		} else if (r.contains(xmms[i])) {
			os << " " << xmms[i];
		}
	}
  os << " }";
}

} // namespace stoke
