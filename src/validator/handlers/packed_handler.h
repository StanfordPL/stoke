// Copyright 2013-2016 Stanford University
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
      return f(a[127][64], b[127][64]) || g(a[63][0], b[63][0]);
    }, 128, 128, true);

    add_opcode("addsubps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_single", 32, {32, 32});
      SymFunction g("sub_single", 32, {32, 32});
      return f(a[63][32], b[63][32]) || g(a[31][0], b[31][0]);
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
      SymFunction f("cvt_int32_to_double", 64, {32});
      return f(b);
    }, 32, 64, true);

    add_opcode("cvtdq2ps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_int32_to_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtpd2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int32", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvtpd2ps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_single", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvtpi2pd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_int32_to_double", 64, {32});
      return f(b);
    }, 32, 64, true);

    add_opcode("cvtpi2ps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_int32_to_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtps2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int32", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtps2pd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_double", 64, {32});
      return f(b);
    }, 32, 64, true);

    add_opcode("cvtps2pi", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int32", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvtsd2sil", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int32", 32, {64});
      return f(b);
    }, 64, 32, true, true);

    add_opcode("cvtsd2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int64", 64, {64});
      return f(b);
    }, 64, 64, true, true);

    add_opcode("cvtsd2ss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_single", 32, {64});
      return f(b);
    }, 64, 32, true, true);

    add_opcode("cvtss2sd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_double", 64, {32});
      return f(b);
    }, 32, 64, true, true);

    add_opcode("cvtss2sil", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int32", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("cvtss2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int64", 64, {32});
      return f(b);
    }, 32, 64, true, true);

    add_opcode("cvttpd2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int32_truncate", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvttpd2pi", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int32_truncate", 32, {64});
      return f(b);
    }, 64, 32, true);

    add_opcode("cvttps2dq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int32_truncate", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvttps2pi", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int32_truncate", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("cvttsd2sil", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int32_truncate", 32, {64});
      return f(b);
    }, 64, 32, true, true);

    add_opcode("cvttsd2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_double_to_int64_truncate", 64, {64});
      return f(b);
    }, 64, 64, true, true);

    add_opcode("cvttss2sil", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int32_truncate", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("cvttss2siq", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("cvt_single_to_int64_truncate", 64, {32});
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
      SymFunction f("maxcmp_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true);

    add_opcode("maxps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxcmp_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true);


    add_opcode("maxsd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxcmp_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true, true);

    add_opcode("maxss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("maxcmp_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true, true);


    add_opcode("minpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("mincmp_double", 1, {64, 64});
      return (f(a,b)[0]).ite(a, b);
    }, 64, 64, true);

    add_opcode("minps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("mincmp_single", 1, {32, 32});
      return (f(a,b)[0]).ite(a, b);
    }, 32, 32, true);

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


    // dppd
    add_opcode("dppd", [] (SymBitVector a, SymBitVector b, SymBitVector c, uint16_t k) {
      SymFunction f("mul_double", 64, {64, 64});
      SymFunction g("add_double", 64, {64, 64});
      auto temp1_1 = (c[4][4] == SymBitVector::constant(1, 1)).ite(f(a[63][0], b[63][0]), SymBitVector::constant(64, 0x0));
      auto temp1_2 = (c[5][5] == SymBitVector::constant(1, 1)).ite(f(a[127][64], b[127][64]), SymBitVector::constant(64, 0x0));
      auto temp2 = g(temp1_1, temp1_2);

      auto result = (c[1][1] == SymBitVector::constant(1, 1)).ite(temp2, SymBitVector::constant(64, 0x0)) ||
                    (c[0][0] == SymBitVector::constant(1, 1)).ite(temp2, SymBitVector::constant(64, 0x0));

      /*
            auto temp1_1 = f(a[63][0], b[63][0]);
            auto temp1_2 = f(a[127][64], b[127][64]);
            auto temp1_3 = SymBitVector::constant(64, 0x0);
            auto temp2 =  ((c[4][4] == SymBitVector::constant(1, 1)) & (c[5][5] == SymBitVector::constant(1, 1))).ite(g(temp1_1, temp1_2),
                          ((c[4][4] == SymBitVector::constant(1, 0)) & (c[5][5] == SymBitVector::constant(1, 1))).ite(g(temp1_3, temp1_2),
                          ((c[4][4] == SymBitVector::constant(1, 1)) & (c[5][5] == SymBitVector::constant(1, 0))).ite(g(temp1_1, temp1_3),
                          ((c[4][4] == SymBitVector::constant(1, 0)) & (c[5][5] == SymBitVector::constant(1, 0))).ite(g(temp1_3, temp1_3),
                  g(temp1_3, temp1_3)))));

            auto result = (c[1][1] == SymBitVector::constant(1, 1)).ite(temp2 , SymBitVector::constant(64, 0x0)) ||
                          (c[0][0] == SymBitVector::constant(1, 1)).ite(temp2, SymBitVector::constant(64, 0x0));
                          */

      return result;
    }, 0, 0);

    // dpps
    add_opcode("dpps", [] (SymBitVector a, SymBitVector b, SymBitVector c, uint16_t k) {
      SymFunction f("mul_single", 32, {32, 32});
      SymFunction g("add_single", 32, {32, 32});
      auto dest_width = a.width();
      short unsigned int vec_len = 128;

      auto dp_primitive = [&](SymBitVector a, SymBitVector b, SymBitVector c) {
        auto temp1_1 = (c[4][4] == SymBitVector::constant(1, 1)).ite(f(a[31][0], b[31][0]), SymBitVector::constant(32, 0x0));
        auto temp1_2 = (c[5][5] == SymBitVector::constant(1, 1)).ite(f(a[63][32], b[63][32]), SymBitVector::constant(32, 0x0));
        auto temp1_3 = (c[6][6] == SymBitVector::constant(1, 1)).ite(f(a[95][64], b[95][64]), SymBitVector::constant(32, 0x0));
        auto temp1_4 = (c[7][7] == SymBitVector::constant(1, 1)).ite(f(a[127][96], b[127][96]), SymBitVector::constant(32, 0x0));

        auto temp2 = g(temp1_1, temp1_2);
        auto temp3 = g(temp1_3, temp1_4);
        auto temp4 = g(temp2,   temp3);

        auto result = (c[3][3] == SymBitVector::constant(1, 1)).ite(temp4, SymBitVector::constant(32, 0x0)) ||
                      (c[2][2] == SymBitVector::constant(1, 1)).ite(temp4, SymBitVector::constant(32, 0x0)) ||
                      (c[1][1] == SymBitVector::constant(1, 1)).ite(temp4, SymBitVector::constant(32, 0x0)) ||
                      (c[0][0] == SymBitVector::constant(1, 1)).ite(temp4, SymBitVector::constant(32, 0x0));
        return result;
      };

      size_t i = 0;
      auto  result = dp_primitive(a[vec_len-1 + vec_len*i][vec_len*i], b[vec_len-1 + vec_len*i][vec_len*i], c);
      for (i = 1 ; i < dest_width/vec_len; i++) {
        result = dp_primitive(a[vec_len-1 + vec_len*i][vec_len*i], b[vec_len-1 + vec_len*i][vec_len*i], c) || result;
      }

      return result;

    }, 0, 0);

    // pshufhw
    add_opcode("pshufhw", [] (SymBitVector a, SymBitVector b, SymBitVector c, uint16_t k) {
      auto dest_width = a.width();
      // uint64_t constant = (static_cast<const SymBitVectorConstant*>(c.ptr))->constant_;
      auto result = SymBitVector::constant(128, 0);

      for (size_t k = 0 ; k < dest_width/128; k++) {
        if (0 == k) {
          result = b[63+128*k][0+128*k];
        } else {
          result = b[63+128*k][0+128*k] || result;
        }
        result = (b >> ((SymBitVector::constant(dest_width - 2, 0) ||  c[1][0]) << 4))[79 + 128*k][64 + 128*k] || result;
        result = (b >> ((SymBitVector::constant(dest_width - 2, 0) ||  c[3][2]) << 4))[79 + 128*k][64 + 128*k] || result;
        result = (b >> ((SymBitVector::constant(dest_width - 2, 0) ||  c[5][4]) << 4))[79 + 128*k][64 + 128*k] || result;
        result = (b >> ((SymBitVector::constant(dest_width - 2, 0) ||  c[7][6]) << 4))[79 + 128*k][64 + 128*k] || result;
      }
      return result;
    }, 0, 0);

    // insertps
    add_opcode("insertps", [] (SymBitVector a, SymBitVector b, SymBitVector imm8, uint16_t k) {
      short unsigned int vec_len = 32;
      auto dest_width = a.width();

      auto count_s = imm8[7][6];
      auto count_d = imm8[5][4];
      auto zmask   = imm8[3][0];

      auto temp = (count_s == SymBitVector::constant(2, 0x0)).ite(
                    b[31][0], (count_s == SymBitVector::constant(2, 0x1)).ite(
                      b[63][32], (count_s == SymBitVector::constant(2, 0x2)).ite(
                        b[95][64], (count_s == SymBitVector::constant(2, 0x3)).ite(
                          b[127][96], b[127][96]))));

      auto temp2 =      (count_d == SymBitVector::constant(2, 0x0)).ite( a[127][32] || temp,
                        (count_d == SymBitVector::constant(2, 0x1)).ite( a[127][64] || temp || a[31][0],
                            (count_d == SymBitVector::constant(2, 0x2)).ite( a[127][96] || temp || a[63][0],
                                (count_d == SymBitVector::constant(2, 0x3)).ite( temp || a[95][0], temp || a[95][0]))));

      auto result = (zmask[3][3] == SymBitVector::constant(1, 0x1)).ite(SymBitVector::constant(32, 0x0), temp2[127][96])
                    || (zmask[2][2] == SymBitVector::constant(1, 0x1)).ite(SymBitVector::constant(32, 0x0), temp2[95][64])
                    || (zmask[1][1] == SymBitVector::constant(1, 0x1)).ite(SymBitVector::constant(32, 0x0), temp2[63][32])
                    || (zmask[0][0] == SymBitVector::constant(1, 0x1)).ite(SymBitVector::constant(32, 0x0), temp2[31][0]);

      return result;
    }, 0, 0);


    // blendpd
    add_opcode("blendpd", [] (SymBitVector a, SymBitVector b, SymBitVector imm, uint16_t k) {
      short unsigned int vec_len = 64;
      auto dest_width = a.width();

      auto result = SymBitVector::constant(vec_len, 0);
      for (size_t i = 0; i < dest_width/vec_len; i++) {
        if (0 == i) {
          result = (imm[i][i] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i]);
        } else {
          result = (imm[i][i] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i])
                   || result;
        }
      }

      return result;
    }, 0, 0);

    // blendps
    add_opcode("blendps", [] (SymBitVector a, SymBitVector b, SymBitVector imm, uint16_t k) {
      short unsigned int vec_len = 32;
      auto dest_width = a.width();

      auto result = SymBitVector::constant(vec_len, 0);
      for (size_t i = 0; i < dest_width/vec_len; i++) {
        if (0 == i) {
          result = (imm[i][i] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i]);
        } else {
          result = (imm[i][i] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i])
                   || result;
        }
      }

      return result;
    }, 0, 0);

    // blendd
    add_opcode("vpblendd", [] (SymBitVector a, SymBitVector b, SymBitVector imm, uint16_t k) {
      short unsigned int vec_len = 32;
      auto dest_width = a.width();

      auto result = SymBitVector::constant(vec_len, 0);
      for (size_t i = 0; i < dest_width/vec_len; i++) {
        if (0 == i) {
          result = (imm[i][i] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i]);
        } else {
          result = (imm[i][i] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i])
                   || result;
        }
      }

      return result;
    }, 0, 0);

    // blendw
    add_opcode("pblendw", [] (SymBitVector a, SymBitVector b, SymBitVector imm, uint16_t k) {
      short unsigned int vec_len = 16;
      auto dest_width = a.width();

      auto result = SymBitVector::constant(vec_len, 0);
      for (size_t i = 0; i < dest_width/vec_len; i++) {
        if (0 == i) {
          result = (imm[i%8][i%8] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i]);
        } else {
          result = (imm[i%8][i%8] == SymBitVector::constant(1, 0)).ite(
                     a[vec_len -1 + vec_len*i][vec_len*i], b[vec_len -1 + vec_len*i][vec_len*i])
                   || result;
        }
      }

      return result;
    }, 0, 0);




    // roundpd
    add_opcode("roundpd", [] (SymBitVector a, SymBitVector b, SymBitVector imm, uint16_t k) {
      short unsigned int vec_len = 64;
      SymFunction f("cvt_double_to_int64_rm", vec_len, {vec_len, 8});
      auto dest_width = a.width();

      auto result = f(b[vec_len-1][0], imm);
      for (size_t i = 1; i < dest_width/vec_len; i++) {
        result =  f(b[vec_len-1 + i*vec_len][vec_len*i], imm) || result;
      }
      return result;
    }, 0, 0, true);

    // roundps
    add_opcode("roundps", [] (SymBitVector a, SymBitVector b, SymBitVector imm, uint16_t k) {
      short unsigned int vec_len = 32;
      SymFunction f("cvt_single_to_int32_rm", vec_len, {vec_len, 8});
      auto dest_width = a.width();

      auto result = f(b[vec_len-1][0], imm);
      for (size_t i = 1; i < dest_width/vec_len; i++) {
        result =  f(b[vec_len-1 + i*vec_len][vec_len*i], imm) || result;
      }
      return result;
    }, 0, 0, true);

    // mpsadbw
    add_opcode("mpsadbw", [this] (SymBitVector a, SymBitVector b, SymBitVector imm8, uint16_t k) {
      auto dest_width = a.width();
      short unsigned int scale1 = 8;
      short unsigned int scale2 = 32;
      auto dest = a;
      auto src = b;

      auto select_ = [&](SymBitVector dest, SymBitVector offset, uint16_t high, uint16_t low) {
        if (offset.width() == 1) {
          auto slice0 = SymBitVector::constant(8, 0) || dest[0*32+high][0*32+low];
          auto slice1 = SymBitVector::constant(8, 0) || dest[1*32+high][1*32+low];
          return (offset == SymBitVector::constant(1, 0x0)).ite(slice0, slice1);
        } else {
          auto slice0 = SymBitVector::constant(8,0) || dest[0*32+high][0*32+low];
          auto slice1 = SymBitVector::constant(8,0) || dest[1*32+high][1*32+low];
          auto slice2 = SymBitVector::constant(8,0) || dest[2*32+high][2*32+low];
          auto slice3 = SymBitVector::constant(8,0) || dest[3*32+high][3*32+low];
          return (offset == SymBitVector::constant(2, 0x0)).ite(slice0,
                 (offset == SymBitVector::constant(2, 0x1)).ite(slice1,
                     (offset == SymBitVector::constant(2, 0x2)).ite(slice2,
                         (offset == SymBitVector::constant(2, 0x3)).ite(slice3,
                             slice3))));
        }
      };

      auto result = SymBitVector::constant(dest_width, 0);
      for (size_t i = 0, k = 0 ; i < dest_width/128; i++, k += 3) {
        auto src_offset = imm8[k+1][k];
        auto dest_offset = imm8[k+2][k+2];

        auto src_byte0   = select_( src, src_offset, 7 + 128*i, 0 + 128*i);
        auto src_byte1   = select_( src, src_offset, 15+ 128*i, 8 + 128*i);
        auto src_byte2   = select_( src, src_offset, 23+ 128*i, 16+ 128*i);
        auto src_byte3   = select_( src, src_offset, 31+ 128*i, 24+ 128*i);

        auto dest_byte0  = select_(dest, dest_offset, 7  + 128*i,   0 + 128*i);
        auto dest_byte1  = select_(dest, dest_offset, 15 + 128*i,  8 + 128*i);
        auto dest_byte2  = select_(dest, dest_offset, 23 + 128*i, 16 + 128*i);
        auto dest_byte3  = select_(dest, dest_offset, 31 + 128*i, 24 + 128*i);
        auto dest_byte4  = select_(dest, dest_offset, 39 + 128*i, 32 + 128*i);
        auto dest_byte5  = select_(dest, dest_offset, 47 + 128*i, 40 + 128*i);
        auto dest_byte6  = select_(dest, dest_offset, 55 + 128*i, 48 + 128*i);
        auto dest_byte7  = select_(dest, dest_offset, 63 + 128*i, 56 + 128*i);
        auto dest_byte8  = select_(dest, dest_offset, 71 + 128*i, 64 + 128*i);
        auto dest_byte9  = select_(dest, dest_offset, 79 + 128*i, 72 + 128*i);
        auto dest_byte10 = select_(dest, dest_offset, 87 + 128*i, 80 + 128*i);

        auto temp0 = absoluteUnsignedDifference(dest_byte0, src_byte0);
        auto temp1 = absoluteUnsignedDifference(dest_byte1, src_byte1);
        auto temp2 = absoluteUnsignedDifference(dest_byte2, src_byte2);
        auto temp3 = absoluteUnsignedDifference(dest_byte3, src_byte3);

        if (i == 0) {
          result = (temp0 + temp1 + temp2 + temp3);
        } else {
          result = (temp0 + temp1 + temp2 + temp3) || result;
        }

        temp0 = absoluteUnsignedDifference(dest_byte1, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte2, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte3, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte4, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;

        temp0 = absoluteUnsignedDifference(dest_byte2, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte3, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte4, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte5, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;

        temp0 = absoluteUnsignedDifference(dest_byte3, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte4, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte5, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte6, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;

        temp0 = absoluteUnsignedDifference(dest_byte4, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte5, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte6, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte7, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;

        temp0 = absoluteUnsignedDifference(dest_byte5, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte6, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte7, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte8, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;

        temp0 = absoluteUnsignedDifference(dest_byte6, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte7, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte8, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte9, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;

        temp0 = absoluteUnsignedDifference(dest_byte7, src_byte0);
        temp1 = absoluteUnsignedDifference(dest_byte8, src_byte1);
        temp2 = absoluteUnsignedDifference(dest_byte9, src_byte2);
        temp3 = absoluteUnsignedDifference(dest_byte10, src_byte3);
        result = (temp0 + temp1 + temp2 + temp3) || result;
      }

      return result;
    }, 0, 0);




    // vpermps
    add_opcode("vpermps", [this] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();

      auto result = (b[255][0] >> ( (SymBitVector::constant(253,0) || a[2][0]) * SymBitVector::constant(256,32)))[31][0];

      for (size_t i = 1; i < dest_width/32; i++ ) {
        result = (b[255][0] >> ( (SymBitVector::constant(253,0) || a[2 + 32*i][32*i]) * SymBitVector::constant(256,32)))[31][0] || result;
      }
      return result;
    }, 0);

    // vpermd
    add_opcode("vpermd", [this] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();

      auto result = (b[255][0] >> ( (SymBitVector::constant(253,0) || a[2][0]) * SymBitVector::constant(256,32)))[31][0];

      for (size_t i = 1; i < dest_width/32; i++ ) {
        result = (b[255][0] >> ( (SymBitVector::constant(253,0) || a[2 + 32*i][32*i]) * SymBitVector::constant(256,32)))[31][0] || result;
      }

      return result;
    }, 0);



    // phminposuw
    add_opcode("phminposuw", [this] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();
      auto index = SymBitVector::constant(3,0);
      auto min = b[15][0];

      for (size_t i = 1; i < dest_width/16; i++ ) {
        auto val_ = b[15+16*i][16*i];
        index = (val_ < min).ite(SymBitVector::constant(3,i), index);
        min = (val_ < min).ite(val_, min);
      }

      return SymBitVector::constant(109,0) || index || min;
    }, 0);

    // phsubsw
    add_opcode("phsubsw", [this] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();

      auto val1 = a[15][0].extend(32);
      auto val2 = a[31][16].extend(32);
      auto result = signedSaturate(val1 - val2, 32, 16);

      size_t i = 2;
      for (size_t k = 0; k < dest_width/128; k++, i=0 ) {
        for (; i < 8; i+= 2 ) {
          val1 = a[15+16*i+128*k][16*i+128*k].extend(32);
          val2 = a[15+16*(i+1)+128*k][16*(i+1)+128*k].extend(32);
          result = signedSaturate(val1 - val2, 32, 16) || result;
        }
        for (size_t j = 0 ; j < 8; j+=2 ) {
          val1 = b[15+16*j+128*k][16*j+128*k].extend(32);
          val2 = b[15+16*(j+1)+128*k][16*(j+1)+128*k].extend(32);
          result = signedSaturate(val1 - val2, 32, 16) || result;
        }
      }

      return result;
    }, 0);

    // pmulhrsw
    add_opcode("pmulhrsw", [this] (SymBitVector a, SymBitVector b) {
      auto n = a.width();
      auto aa = a.extend(2*n);
      auto bb = b.extend(2*n);
      return (((aa*bb) >> SymBitVector::constant(2*n, 14)) + SymBitVector::constant(2*n, 1))[16][1];
    }, 16, 16);

    // pmulhuw
    add_opcode("pmulhuw", [this] (SymBitVector a, SymBitVector b) {
      auto n = a.width();
      auto aa = SymBitVector::constant(n, 0) || a;
      auto bb = SymBitVector::constant(n, 0) || b;
      return (aa * bb)[31][16];
    }, 16, 16);

    // pmuludq
    add_opcode("pmuludq", [this] (SymBitVector a, SymBitVector b) {
      auto aa = SymBitVector::constant(32, 0) || a[31][0];
      auto bb = SymBitVector::constant(32, 0) || b[31][0];
      return (aa * bb);
    }, 64, 64);

    // pmaddwd
    add_opcode("pmaddwd", [this] (SymBitVector a, SymBitVector b) {
      auto val1 = (b[15][0].extend(32)  * a[15][0].extend(32));
      auto val2 = (b[31][16].extend(32) * a[31][16].extend(32));
      return val1 + val2;
    }, 32, 32);

    // pmaddubsw
    add_opcode("pmaddubsw", [this] (SymBitVector a, SymBitVector b) {
      auto val1 = (b[7][0].extend(16)   * (SymBitVector::constant(8, 0) || a[7][0])  ).extend(32);
      auto val2 = (b[15][8].extend(16)  * (SymBitVector::constant(8, 0) || a[15][8]) ).extend(32);
      return signedSaturate(val1 + val2, 32, 16);
    }, 16, 16);

    // phaddsw
    add_opcode("phaddsw", [this] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();

      auto val1 = a[15][0].extend(32);
      auto val2 = a[31][16].extend(32);
      auto sum = signedSaturate(val1 + val2, 32, 16)[15][0];

      size_t i = 2;
      for (size_t k = 0; k < dest_width/128; k++, i = 0) {
        for (; i < 8; i=i+2) {
          auto val1 = a[16*i+15 + 128*k][16*i + 128*k].extend(32);
          auto val2 = a[16*(i+1)+15 + 128*k][16*(i+1) + 128*k].extend(32);
          sum = signedSaturate(val2 + val1, 32, 16)[15][0] || sum;
        }

        for (size_t j = 0; j < 8; j = j + 2) {
          auto val1 = b[16*j+15 + 128*k][16*j + 128*k].extend(32);
          auto val2 = b[16*(j+1)+15 + 128*k][16*(j+1) + 128*k].extend(32);
          sum = signedSaturate(val2 + val1, 32, 16)[15][0] || sum;
        }
      }

      return sum;

    }, 0);

    // paddsb
    add_opcode("paddsb", [this] (SymBitVector a, SymBitVector b) {
      auto val1 =  a.extend(16);
      auto val2 =  b.extend(16);
      return signedSaturate(val1 + val2, 16, 8)[7][0];
    }, 8, 8);

    // paddsw
    add_opcode("paddsw", [this] (SymBitVector a, SymBitVector b) {
      auto val1 = a.extend(32);
      auto val2 = b.extend(32);
      return signedSaturate(val1 + val2, 32, 16)[15][0];
    }, 16, 16);

    // psadbw
    add_opcode("psadbw", [this] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();
      auto auxsum = SymBitVector::constant(16, 0);

      for (size_t i = 0; i <= 7; ++i) {
        auxsum = (SymBitVector::constant(8, 0) || absoluteUnsignedDifference(a[7 + 8*i][8*i], b[7 + 8*i][8*i])) + auxsum;
      }

      auto sum = SymBitVector::constant(48, 0) || auxsum;


      for (size_t k = 1 ; k < dest_width/64; k++) {
        auxsum = SymBitVector::constant(16, 0);

        for (size_t i = 0; i <= 7; ++i) {
          auxsum = (SymBitVector::constant(8, 0) ||  absoluteUnsignedDifference(a[7 + 8*i + 64*k][8*i + 64*k], b[7 + 8*i + 64*k][8*i + 64*k])) + auxsum;
        }

        sum = (SymBitVector::constant(48, 0) || auxsum) || sum;
      }

      return sum;

    }, 0);

    // packsswb
    // Intel Manual Bug:  If the signed doubleword value is beyond the range of an unsigned word (i.e. greater than 7FH or less than 80H),
    // What does that even mean!!
    add_opcode("packsswb", [this] (SymBitVector a, SymBitVector b) {
      auto a_width = a.width();
      auto b_width = b.width();
      uint16_t src_width = 16;
      uint16_t dest_width = 8;

      auto result = signedSaturate  (   a[15][0], src_width, dest_width);

      size_t i = 1;
      for (size_t k = 0; k < a_width; k += 128, i = 0) {
        for (; i < 8; ++i) {
          result = signedSaturate  (a[15 + 16*i + k][16*i + k], src_width, dest_width) || result;
        }

        for (i = 0; i < 8; ++i) {
          result = signedSaturate  (b[15 + 16*i + k][16*i + k], src_width, dest_width) || result;
        }
      }

      return result;
    }, 0);

    // packssdw
    add_opcode("packssdw", [this] (SymBitVector a, SymBitVector b) {
      auto a_width = a.width();
      auto b_width = b.width();
      uint16_t src_width = 32;
      uint16_t dest_width = 16;

      auto result = signedSaturate  (   a[31][0], src_width, dest_width);

      size_t i = 1;
      for (size_t k = 0; k < a_width; k += 128, i = 0) {
        for (; i < 4; ++i) {
          result = signedSaturate  (a[31 + 32*i + k][32*i + k], src_width, dest_width) || result;
        }

        for (i = 0; i < 4; ++i) {
          result = signedSaturate  (b[31 + 32*i + k][32*i + k], src_width, dest_width) || result;
        }
      }

      return result;
    }, 0);

    // packuswb
    add_opcode("packuswb", [this] (SymBitVector a, SymBitVector b) {
      auto a_width = a.width();
      auto b_width = b.width();
      uint16_t src_width = 16;
      uint16_t dest_width = 8;

      auto result = unSignedSaturate  (   a[15][0], src_width, dest_width);

      size_t i = 1;
      for (size_t k = 0; k < a_width; k += 128, i = 0) {
        for (; i < 8; ++i) {
          result = unSignedSaturate  (a[15 + 16*i + k][16*i + k],  src_width, dest_width) || result;
        }

        for (i = 0; i < 8; ++i) {
          result = unSignedSaturate  (b[15 + 16*i + k][16*i + k],  src_width, dest_width) || result;
        }
      }

      return result;
    }, 0);

    // packusdw
    add_opcode("packusdw", [this] (SymBitVector a, SymBitVector b) {
      auto a_width = a.width();
      auto b_width = b.width();
      uint16_t src_width = 32;
      uint16_t dest_width = 16;

      auto result = unSignedSaturate  (   a[31][0], src_width, dest_width);

      size_t i = 1;
      for (size_t k = 0; k < a_width; k += 128, i = 0) {
        for (; i < 4 ; ++i) {
          result = unSignedSaturate  (a[31 + 32*i + k][32*i + k], src_width, dest_width) || result;
        }

        for (i = 0; i < 4 ; ++i) {
          result = unSignedSaturate  (b[31 + 32*i + k][32*i + k], src_width, dest_width) || result;
        }
      }

      return result;
    }, 0);

    // vpsravd
    add_opcode("vpsravd", [] (SymBitVector a, SymBitVector b) {
      auto dest_width = a.width();
      auto index = dest_width/32 - 1;

      auto result = a[31][0].s_shr(b[31][0]);
      for (uint16_t i = 1 ; i <= index; i++) {
        result = a[31 + i*32][i*32].s_shr(b[31 + i*32][i*32]) || result;
      }
      // Intel Manual Bug
      //result = a[31 + 32*index][32*index].s_shr( SymBitVector::constant(27, 0) || (b[4 + 32*index][32*index])) || result;
      return result;
    }, 0);


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

    add_opcode("rcpps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approx_reciprocal_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("rcpss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approx_reciprocal_single", 32, {32});
      return f(b);
    }, 32, 32, true, true);

    add_opcode("rsqrtps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approx_reciprocal_sqrt_single", 32, {32});
      return f(b);
    }, 32, 32, true);

    add_opcode("rsqrtss", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("approx_reciprocal_sqrt_single", 32, {32});
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

    add_opcode("vpsllvd", [] (SymBitVector a, SymBitVector b) {
      auto amt = b;
      if (b.width() != a.width())
        amt = SymBitVector::constant(a.width() - b.width(), 0) || b;
      return a << amt;
    }, 32);
    add_opcode("vpsllvq", [] (SymBitVector a, SymBitVector b) {
      auto amt = b;
      if (b.width() != a.width())
        amt = SymBitVector::constant(a.width() - b.width(), 0) || b;
      return a << amt;
    }, 64);

    add_opcode("vpsrlvd", [] (SymBitVector a, SymBitVector b) {
      auto amt = b;
      if (b.width() != a.width())
        amt = SymBitVector::constant(a.width() - b.width(), 0) || b;
      return a >> amt;
    }, 32);
    add_opcode("vpsrlvq", [] (SymBitVector a, SymBitVector b) {
      auto amt = b;
      if (b.width() != a.width())
        amt = SymBitVector::constant(a.width() - b.width(), 0) || b;
      return a >> amt;
    }, 64);

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

  virtual std::vector<x64asm::Opcode> full_support_opcodes() {
    std::vector<x64asm::Opcode> res;

    for (auto& opc : Handler::opcodes_convert(opcode_names_)) {
      if (std::find(blacklist_.begin(), blacklist_.end(), opc) == blacklist_.end()) {
        res.push_back(opc);
      }
    }

    return res;
  }

  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

  /** Represents the operation done in parallel on the bitvectors */
  typedef std::function<SymBitVector (SymBitVector, SymBitVector)> BinaryOperator;
  /** Represents the operation done in parallel on the bitvectors */
  typedef std::function<SymBitVector (SymBitVector, SymBitVector, SymBitVector)> TernaryOperator;
  /** Represents the operation done in parallel on the bitvectors */
  typedef std::function<SymBitVector (SymBitVector, SymBitVector, SymBitVector, uint16_t)> BinaryOperatorWithConstant;

  std::vector<std::string> opcode_names_;

  // these don't work correctly, see #752
  std::vector<x64asm::Opcode> blacklist_ = {
    x64asm::Opcode::ADDSUBPD_XMM_XMM
    , x64asm::Opcode::ADDSUBPS_XMM_XMM
    , x64asm::Opcode::ADDSUBPD_XMM_M128
    , x64asm::Opcode::ADDSUBPS_XMM_M128
    , x64asm::Opcode::CVTPD2DQ_XMM_M128
    , x64asm::Opcode::CVTPD2DQ_XMM_XMM
    , x64asm::Opcode::CVTPD2PS_XMM_M128
    , x64asm::Opcode::CVTPD2PS_XMM_XMM
    , x64asm::Opcode::CVTTPD2DQ_XMM_M128
    , x64asm::Opcode::CVTTPD2DQ_XMM_XMM
    , x64asm::Opcode::VADDSD_XMM_XMM_M64
    , x64asm::Opcode::VADDSD_XMM_XMM_XMM
    , x64asm::Opcode::VADDSS_XMM_XMM_M32
    , x64asm::Opcode::VADDSS_XMM_XMM_XMM
    , x64asm::Opcode::VADDSUBPD_XMM_XMM_XMM
    //, x64asm::Opcode::VADDSUBPD_YMM_YMM_YMM
    , x64asm::Opcode::VADDSUBPS_XMM_XMM_XMM
    //, x64asm::Opcode::VADDSUBPS_YMM_YMM_YMM
    , x64asm::Opcode::VADDSUBPD_XMM_XMM_M128
    //, x64asm::Opcode::VADDSUBPD_YMM_YMM_M256
    , x64asm::Opcode::VADDSUBPS_XMM_XMM_M128
    //, x64asm::Opcode::VADDSUBPS_YMM_YMM_M256
    , x64asm::Opcode::VCVTPD2DQ_XMM_M256
    , x64asm::Opcode::VCVTPD2DQ_XMM_YMM
    , x64asm::Opcode::VCVTPD2PS_XMM_M128
    , x64asm::Opcode::VCVTPD2PS_XMM_M256
    , x64asm::Opcode::VCVTPD2PS_XMM_XMM
    , x64asm::Opcode::VCVTPD2PS_XMM_YMM
    , x64asm::Opcode::VCVTSD2SS_XMM_XMM_M64
    , x64asm::Opcode::VCVTSD2SS_XMM_XMM_XMM
    , x64asm::Opcode::VCVTSI2SD_XMM_XMM_M32
    , x64asm::Opcode::VCVTSI2SD_XMM_XMM_R32
    , x64asm::Opcode::VCVTSI2SD_XMM_XMM_M64
    , x64asm::Opcode::VCVTSI2SD_XMM_XMM_R64
    , x64asm::Opcode::VCVTSI2SS_XMM_XMM_M32
    , x64asm::Opcode::VCVTSI2SS_XMM_XMM_R32
    , x64asm::Opcode::VCVTSI2SS_XMM_XMM_M64
    , x64asm::Opcode::VCVTSI2SS_XMM_XMM_R64
    , x64asm::Opcode::VCVTSS2SD_XMM_XMM_M32
    , x64asm::Opcode::VCVTSS2SD_XMM_XMM_XMM
    , x64asm::Opcode::VCVTTPD2DQ_XMM_M128
    , x64asm::Opcode::VCVTTPD2DQ_XMM_M256
    , x64asm::Opcode::VCVTTPD2DQ_XMM_XMM
    , x64asm::Opcode::VCVTTPD2DQ_XMM_YMM
    , x64asm::Opcode::VDIVSD_XMM_XMM_M64
    , x64asm::Opcode::VDIVSD_XMM_XMM_XMM
    , x64asm::Opcode::VDIVSS_XMM_XMM_M32
    , x64asm::Opcode::VDIVSS_XMM_XMM_XMM
    , x64asm::Opcode::VMULSD_XMM_XMM_M64
    , x64asm::Opcode::VMULSD_XMM_XMM_XMM
    , x64asm::Opcode::VMULSS_XMM_XMM_M32
    , x64asm::Opcode::VMULSS_XMM_XMM_XMM
    , x64asm::Opcode::VRCPSS_XMM_XMM_M32
    , x64asm::Opcode::VRCPSS_XMM_XMM_XMM
    , x64asm::Opcode::VRSQRTSS_XMM_XMM_M32
    , x64asm::Opcode::VRSQRTSS_XMM_XMM_XMM
    , x64asm::Opcode::VSQRTSD_XMM_XMM_M64
    , x64asm::Opcode::VSQRTSD_XMM_XMM_XMM
    , x64asm::Opcode::VSQRTSS_XMM_XMM_M32
    , x64asm::Opcode::VSQRTSS_XMM_XMM_XMM
    , x64asm::Opcode::VSUBSD_XMM_XMM_M64
    , x64asm::Opcode::VSUBSD_XMM_XMM_XMM
    , x64asm::Opcode::VSUBSS_XMM_XMM_M32
    , x64asm::Opcode::VSUBSS_XMM_XMM_XMM
  };

  class PackedOpcode {

  public:

    PackedOpcode(std::string opcode, BinaryOperator binop) :
      opcode_(opcode), binop_(binop), has_constant_(false) {
      init();
    }

    PackedOpcode(std::string opcode, TernaryOperator ternaryop) :
      opcode_(opcode), ternaryop_(ternaryop), has_constant_(false) {
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

    SymBitVector operator()(x64asm::Operand arg1, SymBitVector bv1, x64asm::Operand arg2, SymBitVector bv2, x64asm::Operand arg3, SymBitVector bv3, SymState& ss) {
      assert(!has_constant_);
      return ternaryop_(bv1, bv2, bv3);
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

    std::string opcode_;

    BinaryOperator binop_;
    TernaryOperator ternaryop_;
    BinaryOperatorWithConstant binop_with_constant_;
    bool has_constant_;

    bool uninterpreted_;
    bool only_one_;
    bool clear_unset_;
    int16_t  fixed_arg_;
    uint16_t input_width_;
    uint16_t output_width_;
    bool avx_alignment_;
  };

  /** Helper functions for signed/unsigned saturation  */
  SymBitVector signedSaturate(SymBitVector a,  uint16_t src_width, uint16_t dest_width) {
    int64_t maxIntVal = int64_t(pow(2, dest_width-1)) - 1;
    int64_t minIntVal = -1*(int64_t(pow(2, dest_width-1)));
    auto maxBvVal_src_width = SymBitVector::constant(src_width, maxIntVal);
    auto maxBvVal_dest_width = SymBitVector::constant(dest_width, maxIntVal);
    auto minBvVal_src_width = SymBitVector::constant(src_width, minIntVal);
    auto minBvVal_dest_width = SymBitVector::constant(dest_width, minIntVal);

    return a.s_gt(maxBvVal_src_width).ite( maxBvVal_dest_width,
                                           a.s_lt(minBvVal_src_width).ite(minBvVal_dest_width, a[dest_width - 1][0]));
  }

  SymBitVector unSignedSaturate(SymBitVector a,  uint16_t src_width, uint16_t dest_width) {
    int64_t maxIntVal = int64_t(pow(2, dest_width)) -1;
    int64_t minIntVal = 0;
    auto maxBvVal_src_width = SymBitVector::constant(src_width, maxIntVal);
    auto maxBvVal_dest_width = SymBitVector::constant(dest_width, maxIntVal);
    auto minBvVal_src_width = SymBitVector::constant(src_width, minIntVal);
    auto minBvVal_dest_width = SymBitVector::constant(dest_width, minIntVal);

    return a.s_gt(maxBvVal_src_width).ite( maxBvVal_dest_width,
                                           a.s_lt(minBvVal_src_width).ite(minBvVal_dest_width, a[dest_width - 1][0]));
  }

  SymBitVector absoluteUnsignedDifference(SymBitVector a, SymBitVector b) {
    return (a>b).ite(a-b, b-a);
  }

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
