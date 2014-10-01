
#ifndef __STOKE_TEST_DATABASE_TESTDATABASE
#define __STOKE_TEST_DATABASE_TESTDATABASE

#include "src/database/database.h"
#include "tests/fixture.h"

#include <map>

namespace stoke_test {

/* This is a database implementation */
class TestDatabase : public stoke::Database {

  public:
    TestDatabase() {}

    void insert(stoke::Chunk& chunk, std::string tag) {

      tag_exists(tag);

      (*map_[tag])[chunk] = (*map_[tag])[chunk]+1;

      count_++;
    }

    uint64_t lookup(stoke::Chunk& chunk, std::string tag) {

      tag_exists(tag);

      return (*map_[tag])[chunk];

    }

    uint64_t count() {
      return count_;
    }

    void erase() {
      map_ = std::map<std::string, std::map<stoke::Chunk, uint64_t>*>();
    }

  private:

    void tag_exists(std::string& tag) {
      if(map_[tag] == 0) {
        map_[tag] = new std::map<stoke::Chunk, uint64_t>();
      }
    }

    std::map<std::string, std::map<stoke::Chunk, uint64_t>*> map_;
    uint64_t count_ = 0;
};


TEST_F(FixtureTest, TestDatabaseWorks) {

  /* We need two fixtures to do this test. */
  ASSERT_GE(fixtures_.size(), 2);

  TestDatabase d;

  std::string zero("zero");
  std::string one("one");

  stoke::Chunk chunks[2];
  chunks[0].code = fixtures_[0].get_code();
  chunks[1].code = fixtures_[1].get_code();
 

  d.insert(chunks[0], zero);
  d.insert(chunks[1], one);

  ASSERT_EQ(1, d.lookup(chunks[0], zero));
  ASSERT_EQ(0, d.lookup(chunks[0], one));
  ASSERT_EQ(0, d.lookup(chunks[1], zero));
  ASSERT_EQ(1, d.lookup(chunks[1], one));


}

}

#endif
