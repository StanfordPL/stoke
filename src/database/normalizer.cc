
#include <iostream>
#include <sstream>

#include "src/database/normalizer.h"
#include "include/container/tokenizer.h"

using namespace stoke;
using namespace std;
using namespace x64asm;
using namespace cpputil;


void Normalizer::slurp_cfg(Cfg &cfg) {

  Code* vs = new Code();

  // STEP 2: build chunks with
  // vectors of instructions

  //loop through all the reachable blocks
  for(auto it = cfg.reachable_begin();
           it != cfg.reachable_end(); ++it) {

    if (cfg.num_instrs(*it) == 0)
      continue;

    //loop through instructions
    size_t instr_index = 0;
    for(auto instr_it = cfg.instr_begin(*it);
             instr_it != cfg.instr_end(*it);
             ++instr_it, instr_index++) {


      if (instr_it->is_label_defn() ||
          instr_it->is_nop() ||
          instr_it->is_return() ||
          instr_it->is_jump() ||
          instr_it->is_call()) {

        if(vs->size() > 0) {
          //save this chunk!
          chunk_list_.push_back(*vs);
          vs = new Code();
        }

      } else {
        //add instruction to vector
        vs->push_back(*instr_it);
      }
    }

    if(vs->size() > 0) {
      //save this chunk!

      chunk_list_.push_back(*vs);
      vs = new Code();
    }
  }

}

void Normalizer::normalize_registers() {
  for (auto& code : chunk_list_)
    normalize_registers(code);
}

void Normalizer::normalize_registers(x64asm::Code& code) {

  Tokenizer<uint64_t, uint64_t> gps;
  Tokenizer<uint64_t, uint64_t> sses;

  for ( auto& instr : code) {
    for (size_t i = 0, ie = instr.arity(); i < ie; ++i) {
      switch (instr.type(i)) {
        case Type::RB:
        case Type::R_16:
        case Type::R_32:
        case Type::R_64: {
          auto& op = instr.get_operand<R64>(i);
          //cout << dec << "op: " << op << " tok: " << gps.tokenize(op)->second;
          //cout << " (" << r64s[gps.tokenize(op)->second] << ")" << endl;
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

void Normalizer::normalize_constants() {
  for (auto& code : chunk_list_)
    normalize_constants(code);
}

void Normalizer::normalize_constants(x64asm::Code& code) {

  Tokenizer<uint64_t, uint64_t> imms;


  for ( auto& instr : code) {
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

/*
void Chunk::normalize_order() {

  size_t size = code.size(); 
  bool dependency[size][size];

  // This function tries to canonically reorder the instructions so that if you
  // have instructions where the order doesn't matter, one ordering will be
  // picked ahead of time.  An easy thing to do would be to just sort the
  // instructions lexiographically given the constraints of the dependency
  // chains.  But this is totally broken becuase we're renaming registers and
  // constants.  Getting both renaming and reordering to work at the same time
  // turns out to be really hard.  I think this problem is closely tied to
  // isomorphism of directed, acyclic graphs, where the best algorithms are
  // exponential in time.
  //
  // I'm designing this function with the following goals in mind:
  //
  // * Be sound (i.e. don't reorder in an illegal way)
  // * Be sort-of fast (there's *DEFINITELY* room for improvement)
  // * Make normalize_order() commutative with normalize_registers()
  //   (this gives us some guarantee we don't make things worse)
  // * Do our best to get a cannonical form without implementing too much
  //
  // I decided to go with the following metrics to sort nodes:
  // 
  // First: the nodes have to satisfy dependency chains
  // Then, sort by the number of in-edges of dependency graph
  // Then, sort by number of out-edges of dependency graph
  // Then, sort by opcode
  //
  // You can keep adding to this list; e.g.
  //  - size of connected component [in both directions],
  //  - number of distance-k vertices [in both directions] [for each k >= 2],
  //
  // Basically, any property of nodes of a graph that distinguish it from
  // others can go here, and you can get pretty esoteric.  "E.g. number of
  // paths of length s that go to a node with has out-degree t".  And you could
  // keep going until the algorithm takes exponential time and solves this
  // problem entirely, but we want to keep this moderately fast.  I suspect
  // that we could add a few more quick things to the implementation, but only
  // if it proves useful.
  // 
  //TODO: make whole function more efficient
  //

  // STEP 1: COMPUTE DEPENDENCY CHAINS //
  for (size_t i = 0; i < size; ++i) {
    for (size_t j = 0; j < size; ++j) {
      dependency[i][j] = false;
    }
  }

  for (size_t i = 0; i < size; ++i) {
    for(size_t j = i+1; j < size; ++j) {

      auto& fst_ins = code[i];
      auto& snd_ins = code[j];

      // Check for register R-W, W-R, W-W dependencies
      RegSet write_1 = fst_ins.must_write_set() |
                       fst_ins.maybe_write_set() |
                       fst_ins.must_undef_set() |
                       fst_ins.maybe_undef_set();
      RegSet read_1  = fst_ins.must_read_set() |
                       fst_ins.maybe_read_set();

                       
      RegSet write_2 = snd_ins.must_write_set() |
                       snd_ins.maybe_write_set() |
                       snd_ins.must_undef_set() |
                       snd_ins.maybe_undef_set();
      RegSet read_2  = snd_ins.must_read_set() |
                       snd_ins.maybe_read_set();

      if ( (write_1 & (read_2 | write_2)) != RegSet::empty() ) {
//        cout << dec << "dependency " << i << " --> " << j << endl;
        dependency[i][j] = true;
        continue;
      }

      if ( (write_2 & (read_1 | write_1)) != RegSet::empty() ) {
//        cout << dec << "dependency " << i << " --> " << j << endl;
        dependency[i][j] = true;
        continue;
      }

      // Overapproximate memory dependencies
      // TODO: We can do better here if both of them only read memory
      if (fst_ins.derefs_mem() && snd_ins.derefs_mem()) {
//        cout << dec << "dependency " << i << " --> " << j << endl;
        dependency[i][j] = true;
      }

    }
  }


  // STEP 2: SORT ACCORDING TO CONSTRAINTS //

  for (size_t i = 0; i < size; ++i) {
    for (size_t j = i+1; j < size; ++j) {

//     cout << "Comparing " << i << " with " << j << endl;

      //Is code[j] a candidate for the ith position?
      //We need to make sure that there's no k >= i such
      //that dependency[k][j] is true.

      bool dep_ok = true;
      for (size_t k = i; k < size; k++) 
//        cout << "      checking if " << k << " --> " << j << endl;
        if (dependency[k][j]) {
//          cout << "    oops!  no good." << endl;
          dep_ok = false;
//        } else {
//          cout << "    looks find." << endl;
//        }
        }

      if (!dep_ok)
        continue;
      

//      cout << "  dependencies ok" << endl;
      // if a future instruction is dependent on the
      // one currently in this position, we have to switch.
      bool j_first = false;
      for (size_t k = i+1; k < size; ++k) {
        if (dependency[k][i])
          j_first = true;
      }

      //compute #in-nodes
      size_t i_in = 0;
      size_t j_in = 0;

      for (size_t k = 0; k < size; ++k)
        i_in += dependency[k][i];

      for (size_t k = 0; k < size; ++k)
        j_in += dependency[k][j];

      if (!j_first && i_in < j_in) {
//        cout << "  " << i << " has fewer in-nodes.  Give up." << endl;
        continue;
      } else if (j_in < i_in) {
//        cout << "  " << j << " has fewer in-nodes.  Continuing." << endl;
        j_first |= true;
      }

      //compute #out-notes
      size_t i_out = 0;
      size_t j_out = 0;

      for (size_t k = 0; k < size; ++k)
        i_out += dependency[i][k];

      for (size_t k = 0; k < size; ++k)
        j_out += dependency[j][k];

      if (!j_first && i_out < j_out) {
//        cout << "  " << i << " has fewer out-nodes.  Give up." << endl;
        continue;
      } else if (j_out < i_out) {
//        cout << "  " << j << " has fewer out-nodes.  Continuing." << endl;
        j_first |= true;
      }

      //compare opcodes
      if (!j_first && code[i].get_opcode() < code[j].get_opcode()) {
//        cout << "  " << i << "  has smaller opcode.  Give up." << endl;
        continue;
      } else if (code[j].get_opcode() < code[i].get_opcode()) {
        j_first |= true;
      }

      if (j_first) {
//        cout << "Swaping " << i << " and " << j << endl;
        std::swap(code[i], code[j]);
        for(size_t k = 0; k < size; ++k) {
          bool tmp = dependency[i][k];
          dependency[i][k] = dependency[j][k];
          dependency[j][k] = tmp;
        }

        for(size_t k = 0; k < size; ++k) {
          bool tmp = dependency[k][i];
          dependency[k][i] = dependency[k][j];
          dependency[k][j] = tmp;
        }
      }

    }
  }

  // Check our work //
  for(size_t i = 0; i < size; ++i) {
    for(size_t j = i+1; j < size; ++j) {
      assert(!dependency[j][i]);
    }
  }

}

vector<Chunk*>* Chunk::normalize_mangle() {
  vector<Chunk*>* mangled = new vector<Chunk*>();

  // Take subsets of size 2 or more
  // Consider every ordering thereof

  return mangled;

}
*/
