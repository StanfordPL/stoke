
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

    void upload();

    void normalize();
    void print();

  private:
    x64asm::RegSet& def_ins_;
    x64asm::RegSet& live_outs_;
    x64asm::Code& code_;

};

}

#endif
