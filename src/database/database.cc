
#include <sstream>
#include <algorithm>

#include "src/database/database.h"

#include "mongo/client/dbclient.h"
#include "mongo/bson/bson.h"

#include "include/container/tokenizer.h"

using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace mongo;
using namespace cpputil;

void Database::insert(x64asm::Code code, std::string tag) {

  stringstream code_ss;
  code_ss << code;

  string db = database_ + "." + tag;

  try {
    /* Either add this code to the database with
       count 1, or update the existing count */
    c.ensureIndex(db, fromjson("{code:1}"));
    connection_.update(db,
             BSON( "code" << code_ss.str() ),
             BSON( "$inc" << BSON( "count" << 1 ) ),
             true);

  } catch (const DBException &e) {
    cerr << "caught " << e.what() << endl;
  }

}

uint64_t Database::lookup(x64asm::Code code, string tag) {

  stringstream code_ss;
  code_ss << code;

  string db = database_ + "." + tag;

  try {
    /* Lookup the count corresponding to this
       code/tag pair */
    DBClientCursor *cursor = 
      connection_.query(db, QUERY("code" << code_ss.str())).release();

    uint64_t sum = 0;
    while (cursor->more()) {
      BSONObj p = cursor->next();
      sum += p.getIntField("count");
    }
    
    return sum;

  } catch (const DBException &e) {
    cerr << "caught " << e.what() << endl;
    return 0;
  }

}

Database::Database(string hostname, uint16_t port, string database) {

  //TODO use the port :)
  connection_.connect(hostname);
  database_ = database;

}
