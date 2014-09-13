
#ifndef STOKE_SRC_NORMALIZER_NORMALIZER_H
#define STOKE_SRC_NORMALIZER_NORMALIZER_H

#include <vector>

#include "src/cfg/cfg.h"
#include "src/normalizer/chunk.h"

namespace stoke {

class Normalizer {

  public:

    Normalizer(mongo::DBClientConnection& connection, 
               std::string database, 
               std::string collection) : connection_(connection) {
      db_destination_ = database + "." + collection;
    }

    /* Break a CFG down into "chunks" and start processing them */
    // FIXME: it would make more sense to have more functions
    // exported by this class that can be called by the 'tool'
    void slurp_cfg(Cfg &cfg);

    void normalize(int type);

    void upload(int type);
    void hit(int type);

  private:

    mongo::DBClientConnection& connection_;
    std::vector<Chunk> chunk_list_;
    std::string db_destination_;    

};

}




#endif
