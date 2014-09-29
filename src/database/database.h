
#ifndef STOKE_SRC_DATABASE_DATABASE_H
#define STOKE_SRC_DATABASE_DATABASE_H

#include <vector>
#include <string>

#include "src/database/chunk.h"

#include "src/ext/x64asm/include/x64asm.h"
#include "mongo/client/dbclient.h"

namespace stoke {


/* This class provides an interface to a database.  It should hide the
 * actual implementation details, such as what database backend will be
 * used. 
 */
class Database {

  public:

    /* This function inserts 'code' into the database.
       If it's already there, it increments a count of
       how many times it appears.*/
    virtual void insert(Chunk& chunk, std::string tag) = 0;

    /* This function returns the number of times this
       code has been added to the database with this tag */
    virtual uint64_t lookup(Chunk& chunk, std::string tag) = 0;
    

    /* Erases everything in the database.  Use with caution. */
    virtual void erase() = 0;

};

/* This is the implementation for MongoDB */
class MongoDatabase : public Database {

  public:
    /* This function connects to the database and
       initializes everything */
    MongoDatabase(std::string hostname, uint16_t port, std::string database);

    void insert(Chunk& chunk, std::string tag);

    uint64_t lookup(Chunk& chunk, std::string tag);

    void erase();

  private:
    mongo::DBClientConnection connection_;
    std::string database_;


};

}

#endif
