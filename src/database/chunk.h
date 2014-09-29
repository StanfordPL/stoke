
#ifndef STOKE_SRC_NORMALIZER_CHUNK_H
#define STOKE_SRC_NORMALIZER_CHUNK_H

#include <vector>
#include <string>
#include <sstream>

#include "src/ext/x64asm/include/x64asm.h"
#include "mongo/client/dbclient.h"

namespace stoke {

class Chunk {

  public:
    x64asm::RegSet def_ins;
    x64asm::RegSet live_outs;
    x64asm::Code code;
    uint32_t nesting_depth;


    bool operator< (const Chunk& other) const {
      std::stringstream ss1;
      ss1 << code;

      std::stringstream ss2;
      ss2 << other.code;

      return ss1.str() < ss2.str();
    }

};

}

#endif
