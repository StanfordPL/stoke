
#ifndef __STOKE_TEST_DATABASE_TESTDATABASE
#define __STOKE_TEST_DATABASE_TESTDATABASE

#include "src/database/database.h"
#include "tests/code_tests.h"

#include <map>

namespace stoke {
namespace test {
namespace database {

/* This is a class for databases using the
   fixtures from CodeTest... just another name */
class DatabaseTest : public CodeTest {

  public:
    DatabaseTest() : CodeTest() {

      x64asm::Code code;
      std::stringstream ss;

      /* The following code has a CFG like:

          A 
          | \
          |  \
          v   |
          B   |
          |   |
          |   |
          v  /
          C<

        But block B has a call.  So there should be
        a total of four chunks */

      // This is the test case we're into.
         
      ss << "incq %rax" << std::endl;
      ss << "cmpq %rax, %rcx" << std::endl;
      ss << "jle .L1" << std::endl;
      ss << "subq $0x10, %rcx" << std::endl;
      ss << "movq %rcx, %rsi" << std::endl;
      ss << "movq %rcx, %rdi" << std::endl;
      ss << "callq .L2" << std::endl;
      ss << "addq $0x10, %rcx" << std::endl;
      ss << ".L1:" << std::endl;
      ss << "incq %rax" << std::endl;
      ss << "retq" << std::endl;
      ss << ".L2:" << std::endl;
      ss >> code;

      fix_4chunks = code;
    }

  public:
    x64asm::Code fix_4chunks;

};

/* This is a database implementation */
class TestDatabase : public Database {

  public:
    TestDatabase() {}

    void insert(Chunk& chunk, std::string tag) {

      tag_exists(tag);

      (*map_[tag])[chunk] = (*map_[tag])[chunk]+1;

      count_++;
    }

    uint64_t lookup(Chunk& chunk, std::string tag) {

      tag_exists(tag);

      return (*map_[tag])[chunk];

    }

    uint64_t count() {
      return count_;
    }

    void erase() {
      map_ = std::map<std::string, std::map<Chunk, uint64_t>*>();
    }

  private:

    void tag_exists(std::string& tag) {
      if(map_[tag] == 0) {
        map_[tag] = new std::map<Chunk, uint64_t>();
      }
    }

    std::map<std::string, std::map<Chunk, uint64_t>*> map_;
    uint64_t count_ = 0;
};


TEST_F(DatabaseTest, TestDatabaseWorks) {

  /* We need two fixtures to do this test. */
  ASSERT_GE(fixtures_.size(), 2);

  TestDatabase d;

  std::string zero("zero");
  std::string one("one");

  Chunk chunks[2];
  chunks[0].code = fixtures_[0];
  chunks[1].code = fixtures_[1];
 

  d.insert(chunks[0], zero);
  d.insert(chunks[1], one);

  ASSERT_EQ(1, d.lookup(chunks[0], zero));
  ASSERT_EQ(0, d.lookup(chunks[0], one));
  ASSERT_EQ(0, d.lookup(chunks[1], zero));
  ASSERT_EQ(1, d.lookup(chunks[1], one));


}

}}}

#endif
