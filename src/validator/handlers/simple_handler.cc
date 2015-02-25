// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS, // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include "src/validator/error.h"
#include "src/validator/handlers/simple_handler.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

void SimpleHandler::add_all() {

  add_opcode({"andb", "andw", "andl", "andq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    if(src.size() < dst.size())
      b = b.extend(dst.size());

    ss.set(dst, a & b);
    ss.set(eflags_cf, SymBool::_false());
    ss.set(eflags_of, SymBool::_false());
    ss.set(eflags_af, SymBool::var("AF_" + to_string(temp())));
    ss.set_szp_flags(a & b);
  });

  add_opcode({"decb", "decw", "decl", "decq"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    SymBitVector one = SymBitVector::constant(dst.size(), 1);

    ss.set(dst, a - one);
    ss.set(eflags_of, a[dst.size() - 1] &
           (a[dst.size() - 2][0] == SymBitVector::constant(dst.size() - 1, 0)));
    ss.set(eflags_af, a[3][0] == SymBitVector::constant(4, 0x0));
    ss.set_szp_flags(a - one, dst.size());

  });

  add_opcode({"incb", "incw", "incl", "incq"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    SymBitVector one = SymBitVector::constant(dst.size(), 1);

    ss.set(dst, a + one);
    ss.set(eflags_of, !a[dst.size() - 1] &
           (a[dst.size()-2][0] == SymBitVector::constant(dst.size() - 1, -1)));
    ss.set(eflags_af, a[3][0] == SymBitVector::constant(4, 0xf));
    ss.set_szp_flags(a + one, dst.size());

  });

  // can't be done with packed handler because of special case for memory
  add_opcode({"movsd"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    if(src.is_sse_register()) {
      if(dst.is_typical_memory()) {
        ss.set(dst, b[63][0]);
      } else {
        ss.set(dst, a[127][64] || b[63][0]);
      }
    } else {
      auto zeros = SymBitVector::constant(128 - 64, 0);
      ss.set(dst, zeros || b[63][0]);
    }
  });

  // can't be done with packed handler because of special case for memory
  add_opcode({"vmovsd"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    assert(src.is_typical_memory() || dst.is_typical_memory());
    if(src.is_typical_memory()) {
      // memory to register
      auto zeros = SymBitVector::constant(128 - 64, 0);
      ss.set(dst, zeros || b[63][0], true);
    } else {
      // register to memory
      ss.set(dst, b[63][0]);
    }
  });

  // can't be done with packed handler because of special case for memory
  add_opcode({"vmovsd"},
  [] (Operand dst, Operand src1, Operand src2, SymBitVector a, SymBitVector b, SymBitVector c, SymState& ss) {
    assert(src1.is_sse_register() && src2.is_sse_register() && dst.is_sse_register());
    ss.set(dst, b[127][64] || c[63][0], true);
  });

  // can't be done with packed handler because of special case for memory
  add_opcode({"movss"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    if(src.is_sse_register()) {
      if(dst.is_typical_memory()) {
        ss.set(dst, b[31][0]);
      } else {
        ss.set(dst, a[127][32] || b[31][0]);
      }
    } else {
      auto zeros = SymBitVector::constant(128 - 32, 0);
      ss.set(dst, zeros || b[31][0]);
    }
  });

  // can't be done with packed handler because of special case for memory
  add_opcode({"vmovss"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    assert(src.is_typical_memory() || dst.is_typical_memory());
    if(src.is_typical_memory()) {
      // memory to register
      auto zeros = SymBitVector::constant(128 - 32, 0);
      ss.set(dst, zeros || b[31][0], true);
    } else {
      // register to memory
      ss.set(dst, b[31][0]);
    }
  });

  // can't be done with packed handler because of special case for memory
  add_opcode({"vmovss"},
  [] (Operand dst, Operand src1, Operand src2, SymBitVector a, SymBitVector b, SymBitVector c, SymState& ss) {
    assert(src1.is_sse_register() && src2.is_sse_register() && dst.is_sse_register());
    ss.set(dst, b[127][32] || c[31][0], true);
  });


  add_opcode({"negb", "negw", "negl", "negq"},
  [] (Operand dst, SymBitVector a, SymState& ss) {
    ss.set(dst, -a);
    ss.set(eflags_cf, a != SymBitVector::constant(dst.size(), 0));
    ss.set(eflags_of, a[dst.size()-1] & (-a)[dst.size()-1]);
    ss.set(eflags_af, a[3] & (-a)[3]);
    ss.set_szp_flags(-a);
  });

  add_opcode({"nop"},
  [] (SymState& ss) {});

  add_opcode({"notb", "notw", "notl", "notq"},
  [] (Operand dst, SymBitVector a, SymState& ss) {
    ss.set(dst, !a);
  });

  add_opcode({"orb", "orw", "orl", "orq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    if(src.size() < dst.size())
      b = b.extend(dst.size());

    ss.set(dst, a | b);
    ss.set(eflags_cf, SymBool::_false());
    ss.set(eflags_of, SymBool::_false());
    ss.set(eflags_af, SymBool::var("AF_" + to_string(temp())));
    ss.set_szp_flags(a | b);
  });

  add_opcode({"popq"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    M64 target = M64(rsp);
    ss.set(dst, ss[target]);
    if(dst != rsp) {
      ss.set(rsp, ss[rsp] + SymBitVector::constant(64, 8));
    }
  });

  add_opcode({"popw"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    M16 target = M16(rsp);
    ss.set(dst, ss[target]);
    if(dst != sp) {
      ss.set(rsp, ss[rsp] + SymBitVector::constant(64, 2));
    }
  });

  add_opcode({"popcntw", "popcntl", "popcntq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {

    std::function<SymBitVector (SymBitVector, uint16_t)> helper =
    [&] (SymBitVector src, uint16_t size) {
      if(size == 1) {
        return src;
      } else {
        uint16_t half = size/2;
        SymBitVector zeros = SymBitVector::constant(half, 0);
        SymBitVector left = src[size-1][half];
        SymBitVector right = src[half-1][0];
        return (zeros || helper(left, half)) + (zeros || helper(right, half));
      }
    };

    uint16_t size = dst.size();

    ss.set(dst, helper(b, size));
    ss.set(eflags_zf, b == SymBitVector::constant(size, 0));
    ss.set(eflags_cf, SymBool::_false());
    ss.set(eflags_pf, SymBool::_false());
    ss.set(eflags_sf, SymBool::_false());
    ss.set(eflags_of, SymBool::_false());
    ss.set(eflags_af, SymBool::_false());
  });

  add_opcode({"pshuflw"},
  [this] (Operand dst, Operand src, Operand i, SymBitVector a, SymBitVector b, SymBitVector imm, SymState &ss) {
    uint64_t constant = (static_cast<const SymBitVectorConstant*>(imm.ptr))->constant_;
    SymBitVector result;
    for(size_t i = 0; i < 4; ++i) {
      auto amt = SymBitVector::constant(128, ((constant & (0x3 << 2*i)) >> 2*i) << 4);
      result = (b >> amt)[15][0] || result;
    }
    result = b[127][64] || result;
    ss.set(dst, result);
  });

  add_opcode({"vpshuflw"},
  [this] (Operand dst, Operand src, Operand i, SymBitVector a, SymBitVector b, SymBitVector imm, SymState &ss) {
    uint64_t constant = (static_cast<const SymBitVectorConstant*>(imm.ptr))->constant_;
    SymBitVector result;
    for(size_t i = 0; i < 4; ++i) {
      auto amt = SymBitVector::constant(dst.size(), ((constant & (0x3 << 2*i)) >> 2*i) << 4);
      result = (b >> amt)[15][0] || result;
    }
    result = b[127][64] || result;
    if(dst.size() == 256) {
      for(size_t i = 0; i < 4; ++i) {
        auto amt = SymBitVector::constant(dst.size(), ((constant & (0x3 << 2*i)) >> 2*i) << 4);
        result = (b >> amt)[143][128] || result;
      }
      result = b[255][192] || result;
    }
    ss.set(dst, result, true);
  });

  add_opcode({"pushq"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    ss.set(rsp, ss[rsp] - SymBitVector::constant(64, 8));
    M64 target = M64(rsp);
    ss.set(target, a.extend(64));
  });

  add_opcode({"pushl"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    ss.set(rsp, ss[rsp] - SymBitVector::constant(64, 4));
    M32 target = M32(rsp);
    ss.set(target, a.extend(32));
  });

  add_opcode({"pushw"},
  [this] (Operand dst, SymBitVector a, SymState& ss) {
    ss.set(rsp, ss[rsp] - SymBitVector::constant(64, 2));
    M16 target = M16(rsp);
    ss.set(target, a.extend(16));
  });

  add_opcode({"shufpd"},
             [this] (Operand dst, Operand src, Operand ctl,
  SymBitVector arg1, SymBitVector arg2, SymBitVector imm, SymState& ss) {

    SymBitVector output;
    output = (imm[0]).ite(arg1[127][64], arg1[63][0]);
    output = (imm[1]).ite(arg2[127][64], arg2[63][0]) || output;
    ss.set(dst, output);
  });

  add_opcode({"vshufpd"},
             [this] (Operand dst, Operand src1, Operand src2, Operand ctl,
                     SymBitVector ignore, SymBitVector arg1, SymBitVector arg2, SymBitVector imm,
  SymState& ss) {

    SymBitVector output;
    output = (imm[0]).ite(arg1[127][64], arg1[63][0]);
    output = (imm[1]).ite(arg2[127][64], arg2[63][0]) || output;

    if(dst.size() == 256) {
      output = (imm[2]).ite(arg1[255][192], arg1[191][128]) || output;
      output = (imm[3]).ite(arg2[255][192], arg2[191][128]) || output;
    }

    ss.set(dst, output, true);
  });

  add_opcode({"shufps"},
             [this] (Operand dst, Operand src, Operand ctl,
  SymBitVector arg1, SymBitVector arg2, SymBitVector imm, SymState& ss) {

    SymBitVector output;
    for(size_t i = 0; i < 4; ++i) {
      SymBitVector target = (i < 2 ? arg1 : arg2);
      output = imm[2*i].ite(
                 imm[2*i + 1].ite(target[127][96], target[63][32]),
                 imm[2*i + 1].ite(target[95][64],  target[31][0])) || output;
    }
    ss.set(dst, output);

  });

  add_opcode({"vshufps"},
             [this] (Operand dst, Operand src, Operand src2, Operand ctl,
                     SymBitVector ignore, SymBitVector arg1, SymBitVector arg2, SymBitVector imm,
  SymState& ss) {

    SymBitVector output;
    for(size_t i = 0; i < 4; ++i) {
      SymBitVector target = (i < 2 ? arg1 : arg2);
      output = imm[2*i].ite(
                 imm[2*i + 1].ite(target[127][96], target[63][32]),
                 imm[2*i + 1].ite(target[95][64],  target[31][0])) || output;
    }

    if(dst.size() == 256) {

      for(size_t i = 0; i < 4; ++i) {
        SymBitVector target = (i < 2 ? arg1 : arg2);
        output = imm[2*i].ite(
                   imm[2*i + 1].ite(target[255][224], target[191][160]),
                   imm[2*i + 1].ite(target[223][192],  target[159][128])) || output;
      }

    }

    ss.set(dst, output, true);
  });

  add_opcode({"testb", "testw", "testl", "testq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    if(src.size() < dst.size())
      b = b.extend(dst.size());

    ss.set(eflags_cf, SymBool::_false());
    ss.set(eflags_of, SymBool::_false());
    ss.set(eflags_af, SymBool::var("AF_" + to_string(temp())));
    ss.set_szp_flags(a & b);
  });

  add_opcode({"vbroadcastf128"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    uint16_t size = 128;
    SymBitVector output = b[size-1][0];
    for(uint16_t i = size; i < dst.size(); i += size) {
      output = output || b[size-1][0];
    }
    ss.set(dst, output, true);
  });

  add_opcode({"vbroadcastsd"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    uint16_t size = 64;
    SymBitVector output = b[size-1][0];
    for(uint16_t i = size; i < dst.size(); i += size) {
      output = output || b[size-1][0];
    }
    ss.set(dst, output, true);
  });

  add_opcode({"vbroadcastss"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    uint16_t size = 32;
    SymBitVector output = b[size-1][0];
    for(uint16_t i = size; i < dst.size(); i += size) {
      output = output || b[size-1][0];
    }
    ss.set(dst, output, true);
  });


  add_opcode({"xchgb", "xchgw", "xchgl", "xchgq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    ss.set(dst, b);
    ss.set(src, a);
  });

  add_opcode({"xorb", "xorw", "xorl", "xorq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    if(src.size() < dst.size())
      b = b.extend(dst.size());

    ss.set(dst, a ^ b);
    ss.set(eflags_cf, SymBool::_false());
    ss.set(eflags_of, SymBool::_false());
    ss.set(eflags_af, SymBool::var("AF_" + to_string(temp())));
    ss.set_szp_flags(a ^ b);
  });



}

Handler::SupportLevel SimpleHandler::get_support(const x64asm::Instruction& instr) {

  auto opcode = get_opcode(instr);

  switch(instr.arity()) {
  case 0:
    if (!operator_0_.count(opcode))
      return Handler::NONE;
    break;
  case 1:
    if (!operator_1_.count(opcode))
      return Handler::NONE;
    break;
  case 2:
    if (!operator_2_.count(opcode))
      return Handler::NONE;
    break;
  case 3:
    if (!operator_3_.count(opcode))
      return Handler::NONE;
    break;
  case 4:
    if (!operator_4_.count(opcode))
      return Handler::NONE;
    break;
  default:
    return Handler::NONE;
  }

  for(size_t i = 0; i < instr.arity(); ++i) {
    Operand o = instr.get_operand<Operand>(i);
    if(!o.is_gp_register() && !o.is_typical_memory() &&
        !o.is_sse_register() && !o.is_immediate())
      return Handler::NONE;
  }

  return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);

}

void SimpleHandler::build_circuit(const x64asm::Instruction& instr, SymState& state) {

  auto opcode = get_opcode(instr);

  error_ = "";
  if(!get_support(instr)) {
    error_ = "No support for this instruction.";
    return;
  }

  // Figure out the right arguments
  size_t arity = instr.arity();
  switch(arity) {
  case 0: {
    auto f = operator_0_.at(opcode);
    f(state);
    break;
  }

  case 1: {
    auto f = operator_1_.at(opcode);
    Operand src = instr.get_operand<Operand>(0);
    SymBitVector value = state[src];
    f(src, value, state);
    break;
  }

  case 2: {
    auto f = operator_2_.at(opcode);
    Operand o1 = instr.get_operand<Operand>(0);
    Operand o2 = instr.get_operand<Operand>(1);
    SymBitVector v1 = state[o1];
    SymBitVector v2 = state[o2];
    f(o1, o2, v1, v2, state);
    break;
  }

  case 3: {
    auto f = operator_3_.at(opcode);
    Operand o1 = instr.get_operand<Operand>(0);
    Operand o2 = instr.get_operand<Operand>(1);
    Operand o3 = instr.get_operand<Operand>(2);
    SymBitVector v1 = state[o1];
    SymBitVector v2 = state[o2];
    SymBitVector v3 = state[o3];
    f(o1, o2, o3, v1, v2, v3, state);
    break;
  }

  case 4: {
    auto f = operator_4_.at(opcode);
    Operand o1 = instr.get_operand<Operand>(0);
    Operand o2 = instr.get_operand<Operand>(1);
    Operand o3 = instr.get_operand<Operand>(2);
    Operand o4 = instr.get_operand<Operand>(3);
    SymBitVector v1 = state[o1];
    SymBitVector v2 = state[o2];
    SymBitVector v3 = state[o3];
    SymBitVector v4 = state[o4];
    f(o1, o2, o3, o4, v1, v2, v3, v4, state);
    break;
  }

  default: {
    error_ = "Simple handler only support 0, 1, 2, 3 or 4 operands.";
    break;
  }

  }

}

void SimpleHandler::add_opcode(vector<string> opcodes, ConstantOperator op) {
  for(auto it : opcodes) {
    operator_0_[it] = op;
  }
}
void SimpleHandler::add_opcode(vector<string> opcodes, UnaryOperator op) {
  for(auto it : opcodes) {
    operator_1_[it] = op;
  }
}
void SimpleHandler::add_opcode(vector<string> opcodes, BinaryOperator op) {
  for(auto it : opcodes) {
    operator_2_[it] = op;
  }
}
void SimpleHandler::add_opcode(vector<string> opcodes, TrinaryOperator op) {
  for(auto it : opcodes) {
    operator_3_[it] = op;
  }
}
void SimpleHandler::add_opcode(vector<string> opcodes, QuadOperator op) {
  for(auto it : opcodes) {
    operator_4_[it] = op;
  }
}

