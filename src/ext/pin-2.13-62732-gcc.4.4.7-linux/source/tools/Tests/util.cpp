/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
/*
  @ORIGINAL_AUTHOR: Daniel Lemel
 */

/*! @file
 *  General tests for pin util functions.
 */

#include <fstream>
#include "pin_tests_util.H"

VOID CharsUtilTest()
{
   CHAR c = 'a';
   TEST('A' == CharToUpper(c), "CharToUpper failed");

   TEST(10 == CharToHexDigit(c), "CharToHexDigit failed");

   TEST(false == CharIsSpace(c), "CharIsSpace failed");
   TEST(true == CharIsSpace(' '), "CharIsSpace failed");

   //printf("Chars util tests completed\n");
}

VOID StringsUtilTest()
{
    string str = "hello/world";
    TEST(str == Joinpath("hello", "world"), "Joinpath failed");
    TEST(str == Joinpath("hello/", "world"), "Joinpath failed");

    TEST(("DD1,234,567,890" == StringBignum(1234567890, 15,'D')), "StringBignum failed");
    // if digits < len(number), digits and padding are irrelevant
    TEST("-1,234,567,890" == StringBignum(-1234567890, 7,'B'), "StringBignum failed");

    TEST(("T" == StringBool(true)) && ("F" == StringBool(false)), "StringBool failed");

    TEST(("Y" == StringTri(TRI_YES)) && ("N" == StringTri(TRI_NO)) &&
            ("M" == StringTri(TRI_MAYBE)), "StringTri failed");

    TEST(float(100) == FLT64FromString("1.0E2"), "FLT64FromString failed");
    
    //printf("Strings util tests completed\n");
}

VOID TempFileTest()
{
   CHAR tmpl[18] = "/tmp/test.XXXXXX";
   CHAR* filename = CreateTmpFileName(tmpl);

   fstream tmpStream(filename);
   TEST(tmpStream.is_open(), "Fail to open "+string(filename)+"\n");
   //printf("%s is now opened\n", filename);

   tmpStream.close();

   INT32 removed = remove(filename);
   TEST(removed == 0, "Can't remove tmp file "+string(filename)+"\n");
   //printf("%s is now removed\n", filename);
}

VOID TimeTest()
{
    MilliSecondsElapsed();
    TEST(MilliSecondsElapsed() == 0, "MilliSecondsElapsed failed");
}

VOID PageTest()
{
    ADDRINT addr = 0x123456;
    string pageAddr1 = hexstr(GetPageOfAddr(addr));
    string pageAddr2 = ptrstr(MemPageRange((void*)addr).Base());
    TEST(pageAddr1 == pageAddr2, "GetPageOfAddr or MemPageRange failed");
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    CharsUtilTest();
    StringsUtilTest();
    TempFileTest();
    TimeTest();
    PageTest();

    TEST(PIN_VmFullPath() != string(), "PIN_VmFullPath failed"); 
    BreakMe(); // Empty function

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
