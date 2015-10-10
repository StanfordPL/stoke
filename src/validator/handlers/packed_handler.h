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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_PACKED_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_PACKED_HANDLER_H

#include <map>
#include <functional>

#include "src/validator/handler.h"

namespace stoke {

/** For instructions that repeat the same instruction across multiple data in
 * the register.  Supports many AVX/SSE instructions easily.  */
class PackedHandler : public Handler {

public:

  PackedHandler() : Handler() {

    add_opcode("addpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true);

    add_opcode("addps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true);

    add_opcode("addsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true, true);

    add_opcode("addss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true, true);

    add_opcode("addsubpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_double", 64, {64, 64});
      SymFunction g("sub_double", 64, {64, 64});
      return g(a[63][0], b[63][0]) || f(a[127][64], b[127][64]);
    }, 128, 128, true);

    add_opcode("addsubps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_single", 32, {32, 32});
      SymFunction g("sub_single", 32, {32, 32});
      return g(a[31][0], b[31][0]) || f(a[63][32], b[63][32]);
    }, 64, 64, true);

    add_opcode("andpd", [] (SymBitVector a, SymBitVector b) {
      return a & b;
    }, 0);

    add_opcode("andps", [] (SymBitVector a, SymBitVector b) {
      return a & b;
    }, 0);

    add_opcode("andnpd", [] (SymBitVector a, SymBitVector b) {
      return (!a) & b;
    }, 0);

    add_opcode("andnps", [] (SymBitVector a, SymBitVector b) {
      return (!a) & b;
    }, 0);

    add_opcode("cvtdq2pd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer32_To_Double_Precision_Floating_Point", 64, {32});
      return f(b);
    }, 32, 64, true);

    add_opcode("cvtdq2ps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer_To_Single_Precision_Floating_Point", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtpd2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvtpd2ps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_To_Single_Precision_Floating_Point", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvtpi2pd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer32_To_Double_Precision_Floating_Point", 64, {32});
      return f(b);
    }, 32, 64, true);

    add_opcode("cvtpi2ps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer_To_Single_Precision_Floating_Point", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtps2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtps2pd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_To_Double_Precision_Floating_Point", 64, {32});
      return f(b);
    }, 32, 64, true);

    add_opcode("cvtps2pi", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer32", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtsd2sil", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer32", 32, {64});
      return f(b);
    }, 64, 32, true, true);

    add_opcode("cvtsd2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer64", 64, {64});
      return f(b);
    }, 64, 64, true, true);

    add_opcode("cvtsd2ss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_To_Single_Precision_Floating_Point", 32, {64});
      return f(b);
    }, 64, 32, true, true);

    add_opcode("cvtsi2sdl", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer32_To_Double_Precision_Floating_Point", 64, {32});
      return f(b);
    }, 32, 64, true, true);

    add_opcode("cvtsi2sdq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer64_To_Double_Precision_Floating_Point", 64, {64});
      return f(b);
    }, 64, 64, true, true);

    add_opcode("cvtsi2ssl", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer32_To_Single_Precision_Floating_Point", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("cvtsi2ssq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Integer64_To_Single_Precision_Floating_Point", 32, {64});
      return f(b);
    }, 64, 32, true, true);

    add_opcode("cvtss2sd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_To_Double_Precision_Floating_Point", 64, {32});
      return f(b);
    }, 32, 64, true, true);

    add_opcode("cvtss2sil", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer32", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("cvtss2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer64", 64, {32});
      return f(b);
    }, 32, 64, true, true);

    add_opcode("cvttpd2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer32_Truncate", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvttpd2pi", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer32_Truncate", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvttps2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer32_Truncate", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvttps2pi", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer32_Truncate", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvttsd2si", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer32_Truncate", 32, {64});
        return f(b);
    }, 64, 32, true, true);

    add_opcode("cvttsd2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Double_Precision_Floating_Point_To_Integer64_Truncate", 64, {64});
      return f(b);
    }, 64, 64, true, true);

    add_opcode("cvttss2si", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer32_Truncate", 32, {32});
        return f(b);
    }, 32, 32, true, true);

    add_opcode("cvttss2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("Convert_Single_Precision_Floating_Point_To_Integer64_Truncate", 64, {32});
      return f(b);
    }, 32, 64, true, true);

    add_opcode("divpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("div_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true);

    add_opcode("divps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("div_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true);

    add_opcode("divsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("div_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true, true);

    add_opcode("divss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("div_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true, true);

    add_opcode("haddpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_double", 64, {64, 64});
      return f(b[63][0], b[127][64]) || f(a[63][0], a[127][64]);
    }, 128, 128, true);

    add_opcode("haddps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_single", 32, {32, 32});
      return f(b[95][64], b[127][96]) ||
             f(b[31][0],  b[63][32])  ||
             f(a[95][64], a[127][96]) ||
             f(a[31][0],  a[63][32]);
    }, 128, 128, true);

    add_opcode("hsubpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_double", 64, {64, 64});
      return f(b[63][0], b[127][64]) || f(a[63][0], a[127][64]);
    }, 128, 128, true);

    add_opcode("hsubps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_single", 32, {32, 32});
      return f(b[95][64], b[127][96]) ||
             f(b[31][0],  b[63][32])  ||
             f(a[95][64], a[127][96]) ||
             f(a[31][0],  a[63][32]);
    }, 128, 128, true);

    add_opcode("lddqu", [] (SymBitVector a, SymBitVector b) {
      return b;
    }, 0);

    add_opcode("maxpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxpd_compare_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true);

    add_opcode("maxps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxps_compare_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true);

    /*
    add_opcode("maxsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxpd_compare_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true, true);

    add_opcode("maxss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxps_compare_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true, true);
    */

    add_opcode("minpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("minpd_compare_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true);

    add_opcode("minps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("minps_compare_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true);

    /*
    add_opcode("minsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("minpd_compare_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true, true);

    add_opcode("minss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("minps_compare_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true, true);
    */

    add_opcode("movapd", [] (SymBitVector a, SymBitVector b) {
      return b;
    }, 0)
    .set_avx_alignment(true);

    add_opcode("movaps", [] (SymBitVector a, SymBitVector b) {
      return b;
    }, 0)
    .set_avx_alignment(true);

    /*
    add_opcode("movddup", [] (SymBitVector a, SymBitVector b) {
      return b[63][0] || b[63][0];
    }, 128, 128);
    */

    add_opcode("movdqu", [] (SymBitVector a, SymBitVector b) {
      return b;
    }, 0);

    add_opcode("movupd", [] (SymBitVector a, SymBitVector b) {
      return b;
    }, 0);

    add_opcode("movups", [] (SymBitVector a, SymBitVector b) {
      return b;
    }, 0);



    add_opcode("mulpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("mul_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true);

    add_opcode("mulps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("mul_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true);

    add_opcode("mulsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("mul_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true, true);

    add_opcode("mulss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("mul_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true, true);

    add_opcode("orpd", [] (SymBitVector a, SymBitVector b) {
      return a | b;
    }, 0);

    add_opcode("orps", [] (SymBitVector a, SymBitVector b) {
      return a | b;
    }, 0);

    add_opcode("pabsb", [] (SymBitVector a, SymBitVector b) {
      return (b > SymBitVector::constant(8, 0x7f)).ite(-b, b);
    }, 8);

    add_opcode("pabsw", [] (SymBitVector a, SymBitVector b) {
      return (b > SymBitVector::constant(16, 0x7fff)).ite(-b, b);
    }, 16);

    add_opcode("pabsd", [] (SymBitVector a, SymBitVector b) {
      return (b > SymBitVector::constant(32, 0x7fffffff)).ite(-b, b);
    }, 32);

    add_opcode("paddb", [] (SymBitVector a, SymBitVector b) {
      return a + b;
    }, 8);

    add_opcode("paddw", [] (SymBitVector a, SymBitVector b) {
      return a + b;
    }, 16);

    add_opcode("paddd", [] (SymBitVector a, SymBitVector b) {
      return a + b;
    }, 32);

    add_opcode("paddq", [] (SymBitVector a, SymBitVector b) {
      return a + b;
    }, 64);

    add_opcode("paddusb", [] (SymBitVector a, SymBitVector b) {
      auto zero = SymBitVector::constant(1, 0);
      SymBitVector total = (zero || a) + (zero || b);
      return total[8].ite(SymBitVector::constant(8, 0xff), total[7][0]);
    }, 8);

    add_opcode("paddusw", [] (SymBitVector a, SymBitVector b) {
      auto zero = SymBitVector::constant(1, 0);
      SymBitVector total = (zero || a) + (zero || b);
      return total[16].ite(SymBitVector::constant(16, 0xffff), total[15][0]);
    }, 16);

    add_opcode("pand", [] (SymBitVector a, SymBitVector b) {
      return a & b;
    }, 0);

    add_opcode("pandn", [] (SymBitVector a, SymBitVector b) {
      return (!a) & (b);
    }, 0);

    add_opcode("pavgb", [] (SymBitVector a, SymBitVector b) {
      SymBitVector zero = SymBitVector::constant(1, 0);
      SymBitVector one = SymBitVector::constant(9, 1);
      SymBitVector total = ((zero || a) + (zero || b) + one) >> one;
      return total[7][0];
    }, 8);

    add_opcode("pavgw", [] (SymBitVector a, SymBitVector b) {
      SymBitVector zero = SymBitVector::constant(1, 0);
      SymBitVector one = SymBitVector::constant(17, 1);
      SymBitVector total = ((zero || a) + (zero || b) + one) >> one;
      return total[15][0];
    }, 16);

    add_opcode("pcmpeqb", [] (SymBitVector a, SymBitVector b) {
      return (a == b).ite(SymBitVector::constant(8, 0xff),
                          SymBitVector::constant(8, 0x0));
    }, 8);

    add_opcode("pcmpeqw", [] (SymBitVector a, SymBitVector b) {
      return (a == b).ite(SymBitVector::constant(16, 0xffff),
                          SymBitVector::constant(16, 0x0));
    }, 16);

    add_opcode("pcmpeqd", [] (SymBitVector a, SymBitVector b) {
      return (a == b).ite(SymBitVector::constant(32, 0xffffffff),
                          SymBitVector::constant(32, 0x0));
    }, 32);

    add_opcode("pcmpeqq", [] (SymBitVector a, SymBitVector b) {
      return (a == b).ite(SymBitVector::constant(64, 0xffffffffffffffff),
                          SymBitVector::constant(64, 0x0));
    }, 64);

    add_opcode("pcmpgtb", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(SymBitVector::constant(8, 0xff),
                             SymBitVector::constant(8, 0x0));
    }, 8);

    add_opcode("pcmpgtw", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(SymBitVector::constant(16, 0xffff),
                             SymBitVector::constant(16, 0x0));
    }, 16);

    add_opcode("pcmpgtd", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(SymBitVector::constant(32, 0xffffffff),
                             SymBitVector::constant(32, 0x0));
    }, 32);

    add_opcode("pcmpgtq", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(SymBitVector::constant(64, 0xffffffffffffffff),
                             SymBitVector::constant(64, 0x0));
    }, 64);

    add_opcode("phaddw", [] (SymBitVector a, SymBitVector b) {
      return (b[127][112] + b[111][96]) ||
             (b[95][80]   + b[79][64])  ||
             (b[63][48]   + b[47][32])  ||
             (b[31][16]   + b[15][0])   ||
             (a[127][112] + a[111][96]) ||
             (a[95][80]   + a[79][64])  ||
             (a[63][48]   + a[47][32])  ||
             (a[31][16]   + a[15][0]);
    }, 128);

    add_opcode("phaddd", [] (SymBitVector a, SymBitVector b) {
      return (b[127][96] + b[95][64]) ||
             (b[63][32]  + b[31][0])  ||
             (a[127][96] + a[95][64]) ||
             (a[63][32]  + a[31][0]);
    }, 128);

    add_opcode("phsubw", [] (SymBitVector a, SymBitVector b) {
      return (b[111][96] - b[127][112]) ||
             (b[79][64]  - b[95][80]  )  ||
             (b[47][32]  - b[63][48]  )  ||
             (b[15][0]   - b[31][16]  )   ||
             (a[111][96] - a[127][112]) ||
             (a[79][64]  - a[95][80]  )  ||
             (a[47][32]  - a[63][48]  )  ||
             (a[15][0]   - a[31][16]  );
    }, 128);

    add_opcode("phsubd", [] (SymBitVector a, SymBitVector b) {
      return (b[95][64] - b[127][96]) ||
             (b[31][0]  - b[63][32] )  ||
             (a[95][64] - a[127][96]) ||
             (a[31][0]  - a[63][32] );
    }, 128);

    add_opcode("pmaxsb", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(a, b);
    }, 8);

    add_opcode("pmaxsw", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(a, b);
    }, 16);

    add_opcode("pmaxsd", [] (SymBitVector a, SymBitVector b) {
      return (a.s_gt(b)).ite(a, b);
    }, 32);

    add_opcode("pmaxub", [] (SymBitVector a, SymBitVector b) {
      return (a > b).ite(a, b);
    }, 8);

    add_opcode("pmaxuw", [] (SymBitVector a, SymBitVector b) {
      return (a > b).ite(a, b);
    }, 16);

    add_opcode("pmaxud", [] (SymBitVector a, SymBitVector b) {
      return (a > b).ite(a, b);
    }, 32);

    add_opcode("pminsb", [] (SymBitVector a, SymBitVector b) {
      return (a.s_lt(b)).ite(a, b);
    }, 8);

    add_opcode("pminsw", [] (SymBitVector a, SymBitVector b) {
      return (a.s_lt(b)).ite(a, b);
    }, 16);

    add_opcode("pminsd", [] (SymBitVector a, SymBitVector b) {
      return (a.s_lt(b)).ite(a, b);
    }, 32);

    add_opcode("pminub", [] (SymBitVector a, SymBitVector b) {
      return (a < b).ite(a, b);
    }, 8);

    add_opcode("pminuw", [] (SymBitVector a, SymBitVector b) {
      return (a < b).ite(a, b);
    }, 16);

    add_opcode("pminud", [] (SymBitVector a, SymBitVector b) {
      return (a < b).ite(a, b);
    }, 32);

    add_opcode("pmovsxbw", [] (SymBitVector a, SymBitVector b) {
      return b.extend(16);
    }, 8, 16);

    add_opcode("pmovsxbd", [] (SymBitVector a, SymBitVector b) {
      return b.extend(32);
    }, 8, 32);

    add_opcode("pmovsxbq", [] (SymBitVector a, SymBitVector b) {
      return b.extend(64);
    }, 8, 64);

    add_opcode("pmovsxwd", [] (SymBitVector a, SymBitVector b) {
      return b.extend(32);
    }, 16, 32);

    add_opcode("pmovsxwq", [] (SymBitVector a, SymBitVector b) {
      return b.extend(64);
    }, 16, 64);

    add_opcode("pmovsxdq", [] (SymBitVector a, SymBitVector b) {
      return b.extend(64);
    }, 32, 64);

    add_opcode("pmovzxbw", [] (SymBitVector a, SymBitVector b) {
      return SymBitVector::constant(8, 0) || b;
    }, 8, 16);

    add_opcode("pmovzxbd", [] (SymBitVector a, SymBitVector b) {
      return SymBitVector::constant(24, 0) || b;
    }, 8, 32);

    add_opcode("pmovzxbq", [] (SymBitVector a, SymBitVector b) {
      return SymBitVector::constant(56, 0) || b;
    }, 8, 64);

    add_opcode("pmovzxwd", [] (SymBitVector a, SymBitVector b) {
      return SymBitVector::constant(16, 0) || b;
    }, 16, 32);

    add_opcode("pmovzxwq", [] (SymBitVector a, SymBitVector b) {
      return SymBitVector::constant(48, 0) || b;
    }, 16, 64);

    add_opcode("pmovzxdq", [] (SymBitVector a, SymBitVector b) {
      return SymBitVector::constant(32, 0) || b;
    }, 32, 64);

    add_opcode("pmuldq", [] (SymBitVector a, SymBitVector b) {
      return (a[31][0].extend(64))*(b[31][0].extend(64));
    }, 64);

    add_opcode("pmulhw", [] (SymBitVector a, SymBitVector b) {
      return (a.extend(32)*b.extend(32))[31][16];
    }, 16);

    add_opcode("pmulld", [] (SymBitVector a, SymBitVector b) {
      return (a.extend(64)*b.extend(64))[31][0];
    }, 32);

    add_opcode("pmullw", [] (SymBitVector a, SymBitVector b) {
      return (a.extend(32)*b.extend(32))[15][0];
    }, 16);

    add_opcode("por", [] (SymBitVector a, SymBitVector b) {
      return a | b;
    }, 0);

    add_opcode("psignb", [] (SymBitVector a, SymBitVector b) {
      auto zero = SymBitVector::constant(8, 0);
      return (b.s_gt(zero)).ite(a, (b == zero).ite(zero, -a));
    }, 8);

    add_opcode("psignw", [] (SymBitVector a, SymBitVector b) {
      auto zero = SymBitVector::constant(16, 0);
      return (b.s_gt(zero)).ite(a, (b == zero).ite(zero, -a));
    }, 16);

    add_opcode("psignd", [] (SymBitVector a, SymBitVector b) {
      auto zero = SymBitVector::constant(32, 0);
      return (b.s_gt(zero)).ite(a, (b == zero).ite(zero, -a));
    }, 32);

    add_opcode("psubb", [] (SymBitVector a, SymBitVector b) {
      return a - b;
    }, 8);

    add_opcode("psubw", [] (SymBitVector a, SymBitVector b) {
      return a - b;
    }, 16);

    add_opcode("psubd", [] (SymBitVector a, SymBitVector b) {
      return a - b;
    }, 32);

    add_opcode("psubq", [] (SymBitVector a, SymBitVector b) {
      return a - b;
    }, 64);

    add_opcode("psubsb", [] (SymBitVector a, SymBitVector b) {
      auto tmp = (a.extend(10) - b.extend(10));
      return (tmp.s_gt(SymBitVector::constant(10, 0x7f))).ite(
               SymBitVector::constant(8, 0x7f),
               (tmp.s_lt(SymBitVector::constant(10, -0x80)).ite(
                  SymBitVector::constant(8, 0x80),
                  tmp[7][0])));
    }, 8);

    add_opcode("psubsw", [] (SymBitVector a, SymBitVector b) {
      auto tmp = (a.extend(18) - b.extend(18));
      return (tmp.s_gt(SymBitVector::constant(18, 0x7fff))).ite(
               SymBitVector::constant(16, 0x7fff),
               (tmp.s_lt(SymBitVector::constant(18, -0x8000)).ite(
                  SymBitVector::constant(16, 0x8000),
                  tmp[15][0])));
    }, 16);

    add_opcode("psubusb", [] (SymBitVector a, SymBitVector b) {
      auto zeros = SymBitVector::constant(2, 0);
      auto tmp = ((zeros || a) - (zeros || b));
      return (tmp.s_gt(SymBitVector::constant(10, 0xff))).ite(
               SymBitVector::constant(8, 0xff),
               (tmp.s_lt(SymBitVector::constant(10, 0)).ite(
                  SymBitVector::constant(8, 0x0),
                  tmp[7][0])));
    }, 8);

    add_opcode("psubusw", [] (SymBitVector a, SymBitVector b) {
      auto zeros = SymBitVector::constant(2, 0);
      auto tmp = ((zeros || a) - (zeros || b));
      return (tmp.s_gt(SymBitVector::constant(18, 0xffff))).ite(
               SymBitVector::constant(16, 0xffff),
               (tmp.s_lt(SymBitVector::constant(18, -0x0)).ite(
                  SymBitVector::constant(16, 0x0),
                  tmp[15][0])));
    }, 16);

    add_opcode("pxor", [] (SymBitVector a, SymBitVector b) {
      return a ^ b;
    }, 0);

    add_opcode("subpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true);

    add_opcode("subps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true);

    add_opcode("rcpps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approximate_reciprocal_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("rcpss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approximate_reciprocal_single", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("rsqrtps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approximate_reciprocal_sqrt_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("rsqrtss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approximate_reciprocal_sqrt_single", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("sqrtpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sqrt_double", 64, {64});
      return f(b);
    }, 64, 64, true);

    add_opcode("sqrtps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sqrt_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("sqrtsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sqrt_double", 64, {64});
      return f(b);
    }, 64, 64, true, true);

    add_opcode("sqrtss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sqrt_single", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("subpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true);

    add_opcode("subps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true);

    add_opcode("subsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_double", 64, {64, 64});
      return f(a, b);
    }, 64, 64, true, true);

    add_opcode("subss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_single", 32, {32, 32});
      return f(a, b);
    }, 32, 32, true, true);

    add_opcode("unpckhpd", [] (SymBitVector a, SymBitVector b) {
      return b[127][64] || a[127][64];
    }, 128);

    add_opcode("unpckhps", [] (SymBitVector a, SymBitVector b) {
      return b[127][96] || a[127][96] || b[95][64] || a[95][64];
    }, 128);

    add_opcode("unpcklpd", [] (SymBitVector a, SymBitVector b) {
      return b[63][0] || a[63][0];
    }, 128);

    add_opcode("unpcklps", [] (SymBitVector a, SymBitVector b) {
      return b[63][32] || a[63][32] || b[31][0] || a[31][0];
    }, 128);

    add_opcode("xorpd", [] (SymBitVector a, SymBitVector b) {
      return a ^ b;
    }, 0);

    add_opcode("xorps", [] (SymBitVector a, SymBitVector b) {
      return a ^ b;
    }, 0);


  }

  ~PackedHandler() {
    for (auto it : opcodes_) {
      if (it.second != NULL) {
        delete it.second;
      }
      if (opcodes_.count(it.first))
        opcodes_[it.first] = NULL;
      if (opcodes_.count("v" + it.first))
        opcodes_["v" + it.first] = NULL;
      if (it.first[0] == 'v') {
        auto substr = it.first.substr(1);
        if (opcodes_.count(substr))
          opcodes_[substr] = NULL;
      }
    }
  }

  virtual std::vector<std::string> full_support_opcodes() {
    return opcode_names_;
  }

  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

  /** Represents the operation done in parallel on the bitvectors */
  typedef std::function<SymBitVector (SymBitVector, SymBitVector)> BinaryOperator;
  /** Represents the operation done in parallel on the bitvectors */
  typedef std::function<SymBitVector (SymBitVector, SymBitVector, SymBitVector, uint16_t)> BinaryOperatorWithConstant;

  std::vector<std::string> opcode_names_;

  class PackedOpcode {

  public:

    PackedOpcode(std::string opcode, BinaryOperator binop) :
      opcode_(opcode), binop_(binop), has_constant_(false) {
      init();
    }

    PackedOpcode(std::string opcode, BinaryOperatorWithConstant binop) :
      opcode_(opcode), binop_with_constant_(binop), has_constant_(true) {
      init();
    }

    PackedOpcode& set_uninterpreted(bool b = true) {
      uninterpreted_ = b;
      return *this;
    }
    PackedOpcode& set_only_one(bool b = true) {
      only_one_ = b;
      return *this;
    }
    PackedOpcode& set_clear(bool b = true) {
      clear_unset_ = b;
      return *this;
    }
    PackedOpcode& set_input_width(uint16_t width) {
      input_width_ = width;
      return *this;
    }
    PackedOpcode& set_output_width(uint16_t width) {
      output_width_ = width;
      return *this;
    }
    PackedOpcode& set_fixed_arg(int16_t index) {
      fixed_arg_ = index;
      return *this;
    }
    PackedOpcode& set_avx_alignment(bool avx_alignment) {
      avx_alignment_ = avx_alignment;
      return *this;
    }

    SymBitVector operator()(x64asm::Operand arg1, SymBitVector bv1, x64asm::Operand arg2, SymBitVector bv2, SymState& ss) {
      assert(!has_constant_);
      return binop_(bv1, bv2);
    }

    SymBitVector operator()(x64asm::Operand arg1, SymBitVector bv1, x64asm::Operand arg2, SymBitVector bv2, SymState& ss, SymBitVector imm, uint16_t k) {
      assert(has_constant_);
      return binop_with_constant_(bv1, bv2, imm, k);
    }

    bool get_uninterpreted() {
      return uninterpreted_;
    }
    bool get_only_one() {
      return only_one_;
    }
    bool get_clear() {
      return clear_unset_;
    }
    uint16_t get_input_width() {
      return input_width_;
    }
    uint16_t get_output_width() {
      return output_width_;
    }
    int16_t get_fixed_arg() {
      return fixed_arg_;
    }
    uint16_t get_avx_alignment() {
      return avx_alignment_;
    }

  private:

    void init() {
      set_uninterpreted(false);
      set_only_one(false);
      set_clear(false);
      set_input_width(0);
      set_output_width(0);
      set_fixed_arg(-1);
      set_avx_alignment(false);
    }

    BinaryOperator binop_;
    BinaryOperatorWithConstant binop_with_constant_;
    bool has_constant_;

    std::string opcode_;
    bool uninterpreted_;
    bool only_one_;
    bool clear_unset_;
    int16_t  fixed_arg_;
    uint16_t input_width_;
    uint16_t output_width_;
    bool avx_alignment_;
  };

  /** Adds an opcode to our internal maps */
  template <typename T>
  PackedOpcode& add_opcode(std::string opcode, T op,
                           uint16_t width, uint16_t output_width = 0,
                           bool uninterpreted = false, bool limit1 = false) {

    //Note: memory leak here.  Make custom destructor.
    PackedOpcode* entry = new PackedOpcode(opcode, op);
    entry->set_input_width(width)
    .set_output_width(output_width)
    .set_uninterpreted(uninterpreted)
    .set_only_one(limit1);

    opcodes_[opcode] = entry;
    opcodes_["v" + opcode] = entry;
    opcode_names_.push_back(opcode);
    opcode_names_.push_back("v" + opcode);

    return *entry;
  }

  /** Opcode -> PackedOpcode */
  std::map<std::string, PackedOpcode*> opcodes_;

};

} //namespace stoke


#endif
