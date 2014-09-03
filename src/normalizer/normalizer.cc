
#include <iostream>
#include "src/normalizer/normalizer.h"


using namespace stoke;
using namespace std;
using namespace x64asm;

Normalizer::Normalizer() {
}

void Normalizer::slurp_cfg(Cfg &cfg) {

  Code* vs = new Code();

  // STEP 2: build chunks with
  // vectors of instructions

  //loop through all the reachable blocks
  for(auto it = cfg.reachable_begin();
           it != cfg.reachable_end(); ++it) {

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
          auto def_ins = cfg.def_ins(here);
          auto live_outs = cfg.live_outs(here);

          Chunk* c = new Chunk(*vs, def_ins, live_outs);
          chunk_list_.push_back(*c);
          vs = new Code();
        }

      } else {
        //add instruction to vector
        vs->push_back(*instr_it);
      }
    }

    if(vs->size() > 0) {
      //save this chunk!
      Cfg::loc_type here(*it, instr_index);
      auto def_ins = cfg.def_ins(here);
      auto live_outs = cfg.live_outs(here);

      Chunk* c = new Chunk(*vs, def_ins, live_outs);
      chunk_list_.push_back(*c);
      vs = new Code();
    }
  }


  // STEP 3: rewrite registers

  // STEP 4: upload to database
  for (auto it = chunk_list_.begin(), ie = chunk_list_.end();
       it != ie; ++it) {
    //it->upload();
    it->print();
  }
}
