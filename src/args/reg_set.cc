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

array<pair<string, R64>, 16> gps {{
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

array<pair<string, Xmm>, 16> xs {{
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
  }
};

array<pair<string, Ymm>, 16> ys {{
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
    auto xmm = xmm1;
    auto ymm = ymm0;

    if (generic_read(gps, a, gp)) {
      r += gp;
    } else if (generic_read(xs, a, xmm)) {
      r += xmm;
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
  for (size_t i = 0; i < 16; ++i)
    if (r.contains(r64s[i])) {
      os << " " << r64s[i];
    } else if (r.contains(r32s[i])) {
      os << " " << r32s[i];
    } else if (r.contains(r16s[i])) {
      os << " " << r16s[i];
    } else if (i < 4) {
      if (r.contains(rls[i])) {
        os << " " << rls[i];
      } else if (r.contains(rhs[i])) {
        os << " " << rhs[i];
      }
    } else if (r.contains(rbs[i - 4])) {
      os << " " << rbs[i - 4];
    }
  for (size_t i = 0; i < 16; ++i)
    if (r.contains(ymms[i])) {
      os << " " << ymms[i];
    } else if (r.contains(xmms[i])) {
      os << " " << xmms[i];
    }
  os << " }";
}

} // namespace stoke
