
#ifndef STOKE_SRC_NORMALIZER_CHUNK_H
#define STOKE_SRC_NORMALIZER_CHUNK_H

#include <vector>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"


namespace stoke {

class Chunk {

  public:

    Chunk(x64asm::Code& code, x64asm::RegSet& def_ins, x64asm::RegSet& live_outs) 
      : code_(code), def_ins_(def_ins), live_outs_(live_outs) {

    }

    /* Create a deep copy of this object */
    Chunk* clone() {
      //FIXME: def_ins_, live_outs_ not properly cloned
      x64asm::Code* newcode = new x64asm::Code();
      for(auto& instr : code_) {
        newcode->push_back(instr);
      }
      return new Chunk(*newcode, def_ins_, live_outs_);
    }

    /* Uploads the chunk to the given database with a few
       extra parameters */
    void upload(std::string db_destination, int norm_type);

    /* Rewrite the register names in a canonical way */
    void normalize_registers();

    /* Rewrite the constants in a canonical way */
    void normalize_constants();

    /* Reorder the instructions in a canonical way */
    void normalize_order();
    std::vector<Chunk*>* normalize_mangle();

    /* Print this chunk to standard out */
    void print();

  private:
    x64asm::RegSet& def_ins_;
    x64asm::RegSet& live_outs_;
    x64asm::Code& code_;

};

}

#endif
