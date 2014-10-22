
#ifndef _STOKE_TEST_X64ASM_REGSET_H
#define _STOKE_TEST_X64ASM_REGSET_H

#include "src/ext/x64asm/src/reg_set.h"
#include "src/args/reg_set.h"

#include <sstream>


class RegSetReaderTest : public ::testing::Test {

  public:

    void SetUp() {

    }

  protected:

    std::stringstream ss_;
    stoke::RegSetReader rsr_;
    x64asm::RegSet rs_;

};





#endif
