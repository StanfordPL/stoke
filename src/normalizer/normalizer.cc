
#include <iostream>
#include "src/normalizer/normalizer.h"


using namespace stoke;
using namespace std;
using namespace x64asm;

Normalizer::Normalizer() {
}

void Normalizer::slurp_cfg(Cfg &cfg) {

  Code* vs = new Code();
  RegSet* def_ins = 0;

  // STEP 2: build chunks with
  // vectors of instructions

  //loop through all the reachable blocks
  for(auto it = cfg.reachable_begin();
           it != cfg.reachable_end(); ++it) {

    if (cfg.num_instrs(*it) == 0)
      continue;

    def_ins = new RegSet();
    *def_ins |= cfg.def_ins(*it);

    //loop through instructions
    size_t instr_index = 0;
    for(auto instr_it = cfg.instr_begin(*it);
             instr_it != cfg.instr_end(*it);
             ++instr_it, instr_index++) {

      Cfg::loc_type here(*it, instr_index);
      cout << dec << endl << "DEF: " << cfg.def_ins(here) << endl;
      cout << "b" << *it << "/" << instr_index << ": " << *instr_it << endl;
      cout << "LIVE: " << cfg.live_outs(here) << endl;

      if (instr_it->is_label_defn() ||
          instr_it->is_nop() ||
          instr_it->is_return() ||
          instr_it->is_jump() ||
          instr_it->is_call()) {

        if(vs->size() > 0) {
          //save this chunk!
          Cfg::loc_type here(*it, instr_index);
          auto live_outs = cfg.live_outs(here);

          Chunk* c = new Chunk(*vs, *def_ins, live_outs);
          chunk_list_.push_back(*c);
          vs = new Code();
          def_ins = new RegSet();
          *def_ins |= cfg.def_ins(here);
        }

      } else {
        //add instruction to vector
        vs->push_back(*instr_it);
      }
    }

    if(vs->size() > 0) {
      //save this chunk!
      Cfg::loc_type here(*it, instr_index);
      auto live_outs = cfg.live_outs(here);

      Chunk* c = new Chunk(*vs, *def_ins, live_outs);
      chunk_list_.push_back(*c);
      vs = new Code();

      def_ins = new RegSet();
      *def_ins |= cfg.def_ins(here);
    }
  }


  // STEP 3: do normalization and upload

  // (A) rename registers
  // (B) rename constants
  // (C) rename all memory references to "mem"
  // OR rename definitely-distinct memory references (?)
  // (D) mangle and create duplicates
  //     - change instructions
  //     - use a fragment of the code
  //     - extract a def-use chain

  for (auto it = chunk_list_.begin(), ie = chunk_list_.end();
       it != ie; ++it) {

    cout << "________________________________________________" << endl;
    cout << "________________________________________________" << endl;
    for(int i = 0; i < 8; ++i) {

      Chunk* copy = it->clone();

      if (i & 4) {
        cout << "reorder" << endl;
        //change the order of instructions
        copy->normalize_order();
      }

      if (i & 1) {
        cout << "regs" << endl;
        //must happen after reordering
        //rename registers
        copy->normalize_registers();
      }

      if (i & 2) {
        cout << "imms" << endl;
        //must happen after reordering
        //rename constants
        copy->normalize_constants();
      }

      if (i & 8) {
        //mangle
        copy->normalize_mangle();
      }

      //copy->upload(i);
      //delete copy;
      cout << "i = " << i << endl;
      copy->print();
    }


  }


  // STEP 4: upload to database
    //it->upload();
}
