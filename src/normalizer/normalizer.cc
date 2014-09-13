
#include <iostream>
#include <sstream>
#include "src/normalizer/normalizer.h"


using namespace stoke;
using namespace std;
using namespace x64asm;


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
//      cout << dec << endl << "DEF: " << cfg.def_ins(here) << endl;
//      cout << "b" << *it << "/" << instr_index << ": " << *instr_it << endl;
//      cout << "LIVE: " << cfg.live_outs(here) << endl;

      if (instr_it->is_label_defn() ||
          instr_it->is_nop() ||
          instr_it->is_return() ||
          instr_it->is_jump() ||
          instr_it->is_call()) {

        if(vs->size() > 0) {
          //save this chunk!
          Cfg::loc_type here(*it, instr_index);
          auto live_outs = cfg.live_outs(here);

          Chunk* c = new Chunk(connection_, *vs, *def_ins, live_outs);
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

      Chunk* c = new Chunk(connection_, *vs, *def_ins, live_outs);
      chunk_list_.push_back(*c);
      vs = new Code();

      def_ins = new RegSet();
      *def_ins |= cfg.def_ins(here);
    }
  }

}

void Normalizer::upload(int type) {

  for (auto it = chunk_list_.begin(), ie = chunk_list_.end();
        it != ie; ++it) {
    //cout << "Uploading chunk." << endl;
    it->upload(db_destination_, type);
  }
}

void Normalizer::hit(int type) {

  for (auto it = chunk_list_.begin(), ie = chunk_list_.end();
        it != ie; ++it) {
    it->hit(db_destination_, type);
  }

}

void Normalizer::normalize(int type) {
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


    if (type & 4) {
      //change the order of instructions
      it->normalize_order();
    }

    if (type & 1) {
      //must happen after reordering
      //rename registers
      it->normalize_registers();
    }

    if (type & 2) {
      //must happen after reordering
      //rename constants
      it->normalize_constants();
    }

    if (type & 8) {
      //mangle
      it->normalize_mangle();
    }



  }


  // STEP 4: upload to database
    //it->upload();
}
