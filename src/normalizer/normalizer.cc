
#include <iostream>
#include "src/normalizer/normalizer.h"


using namespace stoke;
using namespace std;
using namespace x64asm;

Normalizer::Normalizer() {
}

void Normalizer::slurp_cfg(Cfg &cfg) {

  vector<Instruction>* vs = new vector<Instruction>();

  // STEP 1: compute reaching definitions
  cfg.recompute_defs();
  cout << "the block count: " << cfg.num_blocks() << endl;

  // STEP 2: build chunks with
  // vectors of instructions

  //loop through all the reachable blocks
  for(auto it = cfg.reachable_begin();
           it != cfg.reachable_end(); ++it) {

    //loop through instructions
    for(auto instr_it = cfg.instr_begin(*it);
             instr_it != cfg.instr_end(*it);
             ++instr_it) {


      if (instr_it->is_label_defn() ||
          instr_it->is_nop() ||
          instr_it->is_return() ||
          instr_it->is_jump() ||
          instr_it->is_call()) {

        if(vs->size() > 0) {
          //save this chunk!
          Chunk* c = new Chunk(*vs);
          chunk_list_.push_back(*c);
          vs = new vector<Instruction>();
        }

      } else {
        //add instruction to vector
        vs->push_back(*instr_it);
      }
    }

    if(vs->size() > 0) {
      //save this chunk!
      Chunk* c = new Chunk(*vs);
      chunk_list_.push_back(*c);
      vs = new vector<Instruction>();
    }
  }

  for(auto it = chunk_list_.begin(); 
           it != chunk_list_.end(); 
           ++it) {
    cout << "x" << endl;
  }


  // STEP 3: rewrite registers


}
