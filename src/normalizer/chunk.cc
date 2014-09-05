
#include <sstream>

#include "src/normalizer/chunk.h"

#include "mongo/client/dbclient.h"
#include "mongo/bson/bson.h"

#include "include/container/tokenizer.h"

using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace mongo;
using namespace cpputil;

void Chunk::upload(int norm_type) {
  
  try {
    DBClientConnection c;
    c.connect("localhost");

    stringstream code_ss;
    code_ss << code_;

    stringstream regin_ss;
    regin_ss << def_ins_;

    stringstream liveout_ss;
    liveout_ss << live_outs_;

    BSONObjBuilder b;
    b.append("code", code_ss.str());
    b.append("regin", regin_ss.str());
    b.append("lvout", liveout_ss.str());
    b.append("norm", norm_type);

    c.insert("test.chunks", b.obj());

    cout << "db access OK" << endl;
  } catch (const DBException &e) {
    cerr << "caught " << e.what() << endl;
  }

}

void Chunk::print() {
  cout << "----- CHUNK ---------" << endl;
  cout << code_ << endl;
  cout << "Def In: " << def_ins_ << endl;
  cout << "Live Outs: " << live_outs_ << endl;
  cout << endl;
}

void Chunk::normalize_registers() {

  Tokenizer<uint64_t, uint64_t> gps;
  Tokenizer<uint64_t, uint64_t> sses;

  for ( auto& instr : code_) {
    for (size_t i = 0, ie = instr.arity(); i < ie; ++i) {
      switch (instr.type(i)) {
        case Type::RL:
        case Type::RB:
        case Type::R_16:
        case Type::R_32:
        case Type::R_64: {
          auto& op = instr.get_operand<R64>(i);
          instr.set_operand(i, r64s[gps.tokenize(op)->second]);
          break;
        }

        case Type::XMM:
        case Type::YMM: {
          auto& op = instr.get_operand<Xmm>(i);
          instr.set_operand(i, xmms[sses.tokenize(op)->second]);
          break;
        }

        case Type::M_8:
        case Type::M_16:
        case Type::M_32:
        case Type::M_64:
        case Type::M_128:
        case Type::M_256:
        case Type::M_16_INT:
        case Type::M_32_INT:
        case Type::M_64_INT:
        case Type::M_32_FP:
        case Type::M_64_FP:
        case Type::M_80_FP:
        case Type::M_80_BCD:
        case Type::M_2_BYTE:
        case Type::M_28_BYTE:
        case Type::M_108_BYTE:
        case Type::M_512_BYTE:
        case Type::FAR_PTR_16_16:
        case Type::FAR_PTR_16_32:
        case Type::FAR_PTR_16_64: {
          auto op = instr.get_operand<M8>(i);
          if (op.contains_base()) {
            op.set_base(r64s[gps.tokenize(op.get_base())->second]);
          }
          if (op.contains_index()) {
            op.set_index(r64s[gps.tokenize(op.get_index())->second]);
          }
          //op.set_scale(Scale::TIMES_1);
          //op.set_disp(Imm32(imms.tokenize(op.get_disp())->second));
          instr.set_operand(i, op);
          break;
        }

        default:
          break;

      }
    }
  }
}

void Chunk::normalize_constants() {

  Tokenizer<uint64_t, uint64_t> imms;

  for ( auto& instr : code_) {
    for (size_t i = 0, ie = instr.arity(); i < ie; ++i) {
      switch (instr.type(i)) {
        case Type::IMM_8:
        case Type::IMM_16:
        case Type::IMM_32:
        case Type::IMM_64: {
          auto& op = instr.get_operand<Imm64>(i);
          instr.set_operand(i, Imm64(imms.tokenize(op)->second));
          break;
        }

        case Type::M_8:
        case Type::M_16:
        case Type::M_32:
        case Type::M_64:
        case Type::M_128:
        case Type::M_256:
        case Type::M_16_INT:
        case Type::M_32_INT:
        case Type::M_64_INT:
        case Type::M_32_FP:
        case Type::M_64_FP:
        case Type::M_80_FP:
        case Type::M_80_BCD:
        case Type::M_2_BYTE:
        case Type::M_28_BYTE:
        case Type::M_108_BYTE:
        case Type::M_512_BYTE:
        case Type::FAR_PTR_16_16:
        case Type::FAR_PTR_16_32:
        case Type::FAR_PTR_16_64: {
          auto op = instr.get_operand<M8>(i);
          op.set_disp(Imm32(imms.tokenize(op.get_disp())->second));
          op.set_scale(Scale::TIMES_1);
          instr.set_operand(i, op);
          break;
        }

        default:
          break;

      }
    }
  }
}

void Chunk::normalize_memory() {

}

vector<Chunk*>* Chunk::normalize_mangle() {
  return new vector<Chunk*>();
}
