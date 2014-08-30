
#ifndef STOKE_SRC_NORMALIZER_NORMALIZER_H
#define STOKE_SRC_NORMALIZER_NORMALIZER_H

#include <vector>

#include "src/cfg/cfg.h"
#include "src/normalizer/chunk.h"

namespace stoke {

class Normalizer {

  public:

    Normalizer();

    void slurp_cfg(Cfg &cfg);

  private:

    std::vector<Chunk> chunk_list_;
    

};

}




#endif
