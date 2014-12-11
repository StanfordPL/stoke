// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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
    }, 64, true);

    add_opcode("addps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("add_single", 32, {32, 32});
      return f(a, b);
    }, 32, true);

    add_opcode("andpd", [] (SymBitVector a, SymBitVector b) {
      return a & b;
    }, 64, true);

    add_opcode("andps", [] (SymBitVector a, SymBitVector b) {
      return a & b;
    }, 32, true);

    add_opcode("andnpd", [] (SymBitVector a, SymBitVector b) {
      return (!a) & b;
    }, 64, true);

    add_opcode("andnps", [] (SymBitVector a, SymBitVector b) {
      return (!a) & b;
    }, 32, true);



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

    add_opcode("pmaxub", [] (SymBitVector a, SymBitVector b) {
      return (a > b).ite(a, b);
    }, 8);

    add_opcode("pmaxuw", [] (SymBitVector a, SymBitVector b) {
      return (a > b).ite(a, b);
    }, 16);

    add_opcode("pminub", [] (SymBitVector a, SymBitVector b) {
      return (a < b).ite(a, b);
    }, 8);

    add_opcode("pminuw", [] (SymBitVector a, SymBitVector b) {
      return (a < b).ite(a, b);
    }, 16);

    add_opcode("por", [] (SymBitVector a, SymBitVector b) {
      return a | b;
    }, 0);

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

    add_opcode("pxor", [] (SymBitVector a, SymBitVector b) {
      return a ^ b;
    }, 0);

    add_opcode("subpd", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_double", 64, {64, 64});
      return f(a, b);
    }, 64, true);

    add_opcode("subps", [] (SymBitVector a, SymBitVector b) {
      SymFunction f("sub_single", 32, {32, 32});
      return f(a, b);
    }, 32, true);

    add_opcode("xorpd", [] (SymBitVector a, SymBitVector b) {
      return a ^ b;
    }, 0);

    add_opcode("xorps", [] (SymBitVector a, SymBitVector b) {
      return a ^ b;
    }, 0);


  }

  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:


  /** Represents the operation done in parallel on the bitvectors */
  typedef std::function<SymBitVector (SymBitVector, SymBitVector)> BinaryOperator;

  /** Adds an opcode to our internal maps */
  void add_opcode(std::string opcode, BinaryOperator op,
                  uint16_t width, bool uninterpreted = false);

  /** Opcode -> BinaryOperator */
  std::map<std::string, BinaryOperator> operator_;
  /** Opcode -> Uses uninterpreted function? */
  std::map<std::string, bool> uninterpreted_;
  /** Opcode -> Width to break arguments into */
  std::map<std::string, uint16_t> width_;




};

} //namespace stoke


#endif
