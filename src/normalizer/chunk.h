
#ifndef STOKE_SRC_NORMALIZER_CHUNK_H
#define STOKE_SRC_NORMALIZER_CHUNK_H

#include <vector>

#include "src/ext/x64asm/include/x64asm.h"


namespace stoke {

class Chunk {

  public:

    Chunk(x64asm::Code& code, x64asm::RegSet& def_ins, x64asm::RegSet& live_outs) 
      : code_(code), def_ins_(def_ins), live_outs_(live_outs) {

    }

    Chunk* clone() {
      //FIXME: def_ins_, live_outs_ not properly cloned
      x64asm::Code* newcode = new x64asm::Code();
      for(auto& instr : code_) {
        newcode->push_back(instr);
      }
      return new Chunk(*newcode, def_ins_, live_outs_);
    }

    void upload(int norm_type);

    void normalize_registers();
    void normalize_constants();
    void normalize_memory();
    std::vector<Chunk*>* normalize_mangle();

    void print();

  private:
    x64asm::RegSet& def_ins_;
    x64asm::RegSet& live_outs_;
    x64asm::Code& code_;

};

}

#endif
