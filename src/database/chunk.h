
#ifndef STOKE_SRC_NORMALIZER_CHUNK_H
#define STOKE_SRC_NORMALIZER_CHUNK_H

#include <vector>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"
#include "mongo/client/dbclient.h"

namespace stoke {

class Chunk {

  public:
    x64asm::RegSet def_ins;
    x64asm::RegSet live_outs;
    x64asm::Code code;
    uint32_t nesting_depth;



};

}

#endif
