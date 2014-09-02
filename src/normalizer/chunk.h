
#ifndef STOKE_SRC_NORMALIZER_CHUNK_H
#define STOKE_SRC_NORMALIZER_CHUNK_H

#include <vector>

#include "src/ext/x64asm/include/x64asm.h"


namespace stoke {

class Chunk {

  public:

    Chunk(x64asm::Code code, x64asm::RegSet def_ins, x64asm::RegSet live_outs) 
      : _code(code), _def_ins(def_ins), _live_outs(live_outs) {

    }

    void normalize();

  private:
    x64asm::RegSet& _def_ins;
    x64asm::RegSet& _live_outs;
    x64asm::Code& _code;

};

}

#endif
