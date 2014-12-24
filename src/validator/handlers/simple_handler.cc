// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    SymBitVector one = SymBitVector::constant(dst.size(), 1);

    ss.set(dst, a - one);
    ss.set(eflags_of, a[dst.size() - 1] &
           a[dst.size() - 2][0] == SymBitVector::constant(dst.size() - 1, 0));
    ss.set(eflags_af, a[3][0] == SymBitVector::constant(4, 0x0));
    ss.set_szp_flags(a - one, dst.size());

  });

  add_opcode({"incb", "incw", "incl", "incq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    SymBitVector one = SymBitVector::constant(dst.size(), 1);

    ss.set(dst, a + one);
    ss.set(eflags_of, !a[dst.size() - 1] &
           a[dst.size()-2][0] == SymBitVector::constant(dst.size() - 1, -1));
    ss.set(eflags_af, a[3][0] == SymBitVector::constant(4, 0xf));
    ss.set_szp_flags(a + one, dst.size());

  });

  add_opcode({"negb", "negw", "negl", "negq"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    ss.set(dst, -a);
    ss.set(eflags_cf, a != SymBitVector::constant(dst.size(), 0));
    ss.set(eflags_of, a[dst.size()-1] & (-a)[dst.size()-1]);
    ss.set(eflags_af, a[3] & (-a)[3]);
    ss.set_szp_flags(-a);
  });

  add_opcode({"nop"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {});

  add_opcode({"notb", "notw", "notl", "notq"},
  [] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
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
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    M64 target = M64(rsp);
    ss.set(dst, ss[target]);
    ss.set(rsp, ss[rsp] + SymBitVector::constant(64, 8));
  });

  add_opcode({"popl"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    M32 target = M32(rsp);
    ss.set(dst, ss[target]);
    ss.set(rsp, ss[rsp] + SymBitVector::constant(64, 4));
  });

  add_opcode({"popw"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    M16 target = M16(rsp);
    ss.set(dst, ss[target]);
    ss.set(rsp, ss[rsp] + SymBitVector::constant(64, 2));
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

  add_opcode({"pushq"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    ss.set(rsp, ss[rsp] - SymBitVector::constant(64, 8));
    M64 target = M64(rsp);
    ss.set(target, a.extend(64));
  });

  add_opcode({"pushl"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    ss.set(rsp, ss[rsp] - SymBitVector::constant(64, 4));
    M32 target = M32(rsp);
    ss.set(target, a.extend(32));
  });

  add_opcode({"pushw"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    ss.set(rsp, ss[rsp] - SymBitVector::constant(64, 2));
    M16 target = M16(rsp);
    ss.set(target, a.extend(16));
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
    ss.set(dst, b, true);
  });

  add_opcode({"vbroadcastsd"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    uint16_t size = 64;
    SymBitVector output = b[size-1][0];
    for(uint16_t i = size; i < dst.size(); i += size) {
      output = output || b[size-1][0];
    }
    ss.set(dst, b, true);
  });

  add_opcode({"vbroadcastss"},
  [this] (Operand dst, Operand src, SymBitVector a, SymBitVector b, SymState& ss) {
    uint16_t size = 32;
    SymBitVector output = b[size-1][0];
    for(uint16_t i = size; i < dst.size(); i += size) {
      output = output || b[size-1][0];
    }
    ss.set(dst, b, true);
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

  if(!operator_.count(opcode))
    return Handler::NONE;

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

  // Figure out the arguments
  Operand dst = instr.get_operand<Operand>(0);
  Operand src = instr.get_operand<Operand>(0);

  size_t arity = instr.arity();

  if(arity == 2) {
    src = instr.get_operand<Operand>(1);
  } else if (arity > 2) {
    throw VALIDATOR_ERROR("Only arity 0/1/2 instructions supported by SimpleHandler");
  }

  // Run the real handler
  auto f = operator_[opcode];

  if(arity > 0)
    f(dst, src, state[dst], state[src], state);
  else
    f(dst, src, SymBitVector::constant(1, 0), SymBitVector::constant(1,0), state);

}

void SimpleHandler::add_opcode(vector<string> opcodes, BinaryOperator op) {
  for(auto it : opcodes) {
    operator_[it] = op;
  }
}



