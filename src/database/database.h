
#ifndef STOKE_SRC_DATABASE_DATABASE_H
#define STOKE_SRC_DATABASE_DATABASE_H

#include <vector>
#include <string>

#include "src/ext/x64asm/include/x64asm.h"
#include "mongo/client/dbclient.h"

namespace stoke {


/* This class provides an interface to an actual database.
   It should hide the actual implementation details, such
   as what database backend will be used.  It's reasonable
   to assume that any database backend will require a few
   parameters such as:
    - ip address/hostname
    - port
    - database name
    - credentials (in the future)
 */
class Database {

  public:

    /* This function connects to the database and
       initializes everything */
    Database(std::string hostname, uint16_t port, std::string database);

    /* This function inserts 'code' into the database.
       If it's already there, it increments a count of
       how many times it appears.*/
    void insert(x64asm::Code code, std::string tag);

    /* This function returns the number of times this
       code has been added to the database with this tag */
    uint64_t lookup(x64asm::Code code, std::string tag);
    

  private:
    mongo::DBClientConnection connection_;
    std::string database_;

};

}

#endif
