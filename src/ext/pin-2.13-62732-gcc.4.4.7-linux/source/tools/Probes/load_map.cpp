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
/* ===================================================================== */
/*
  @ORIGINAL_AUTHOR: Elena Demikhovsky
*/

/* ===================================================================== */
/*! @file
  The tool checks that page permissions in application process are not changed
  after Pin writes a probe
*/

/* ===================================================================== */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <string>
#include <linux/limits.h>
#include "pin.H"
#include <list>

using namespace std;

/* Memory range */
struct RANGE_ATTR
{
    RANGE_ATTR(ADDRINT start, ADDRINT end, string attr)
            :_start(start), _end(end), _attr(attr) {} 
    ADDRINT _start;
    ADDRINT _end;
    string _attr;
};

/* A list of memory ranges */
class RANGES
{
  public:
    /* Get memory attributes under the specified address */
    BOOL GetAttributes(ADDRINT addr, string *attr);
    VOID AddRange(ADDRINT start, ADDRINT end, string attr);
  private:
	list <RANGE_ATTR> _ranges;
};

VOID RANGES::AddRange(ADDRINT start, ADDRINT end, string attr)
{
    _ranges.push_back(RANGE_ATTR(start, end, attr));
}

/* Find range and get its attriutes */
BOOL RANGES::GetAttributes(ADDRINT addr, string *attrStr)
{
    list < RANGE_ATTR>::iterator it = _ranges.begin();
    for (; it != _ranges.end(); it++)
    {
        if ((it->_start <= addr) && (it->_end > addr))
        {
            *attrStr = it->_attr;
            return TRUE;
        }
    }
    return FALSE;
}

#define MAX_NUM_OF_RANGES_PER_FILENAME 10

/* Read /proc/self/maps and fill fileMap with ranges */
VOID FillFileMap(const char *name, RANGES *fileMap)
{
    FILE *fp = fopen("/proc/self/maps", "r");
    char buff[1024];
	char attributes[MAX_NUM_OF_RANGES_PER_FILENAME][10];
    unsigned long mapl[MAX_NUM_OF_RANGES_PER_FILENAME], maph[MAX_NUM_OF_RANGES_PER_FILENAME];
    int nRange = 0;
    while(fgets(buff, 1024, fp) != NULL)
    {
        if (strstr(buff, name) != 0)
        {
            if(sscanf(buff, "%lx-%lx %s", &mapl[nRange], &maph[nRange],
             attributes[nRange]) != 3)
                continue;
			nRange++;
		}
    }
    fclose(fp);
    for (int i=0; i< nRange; i++)
    {
        fileMap->AddRange(mapl[i], maph[i], attributes[i]);
    }
}

VOID ToolDoNothing()
{
	cout << "Tool replacement - nothing to do" << endl;
}

VOID ToolOne(size_t nBytes)
{
	cout << "Tool replacement - print 1" << endl;
}

BOOL PutProbeAndCheckAttributes(IMG img, const char *rtnName, AFUNPTR rtnReplacement)
{
    string shortName = IMG_Name(img);
    string::size_type pos = shortName.rfind('/');
    if (pos != string::npos)
        shortName = shortName.substr(pos + 1);
	
 	RANGES fileMapBeforeProbe;
    FillFileMap(shortName.c_str(), &fileMapBeforeProbe);
    
    RTN rtn = RTN_FindByName(img, rtnName);
    if (RTN_Valid(rtn) && RTN_IsSafeForProbedReplacement(rtn))
    {
	    cout << "Looking at file " << shortName << endl;
 
	    ADDRINT addr = RTN_Address(rtn);
     	string origAttr;
     	BOOL res = fileMapBeforeProbe.GetAttributes(addr, &origAttr); 
      	if (!res)
        {
            cerr << "Failed to read original page attributes from /proc/self/maps" << endl;
            cerr << "The bug is in the test" << endl;
            exit(-1);
        }
     
        RTN_ReplaceProbed(rtn, rtnReplacement);
        
        RANGES fileMapAfterProbe;
        FillFileMap(shortName.c_str(), &fileMapAfterProbe);
        string newAttr = "-cant-read-maps-file-";
     	res = fileMapAfterProbe.GetAttributes(addr, &newAttr); 
      	if (!res)
        {
            cerr << "Failed to read new page attributes from /proc/self/maps" << endl;
            cerr << "The bug is in the test" << endl;
            exit(-1);
        }
        if (newAttr != origAttr)
        {
            cout << "Original map was changes around address " << hex << addr << endl;
            cout << "Org attributes: " << origAttr << " New attributes " << newAttr << endl;
            exit(-1);
        }
        else
        {
            cout << "Original map was preserved around address " << hex << addr << endl;
        	cout << "Attributes: " << newAttr << endl;
     	}
        return TRUE;
    }
 	return FALSE;
}
    

VOID ImageLoad(IMG img, VOID * arg)
{
    UINT32 *numOfInstrumentedRtnsPtr = (UINT32 *)arg;
    if (PutProbeAndCheckAttributes(img, "do_nothing", (AFUNPTR)ToolDoNothing))
    {
        (*numOfInstrumentedRtnsPtr) ++;
	    cout << dec << *numOfInstrumentedRtnsPtr << " routines were instrumented" << endl;
    }
        
    if (PutProbeAndCheckAttributes(img, "one", (AFUNPTR)ToolOne))
    {
        (*numOfInstrumentedRtnsPtr) ++;
	    cout << dec << *numOfInstrumentedRtnsPtr << " routines were instrumented" << endl;
    }
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    UINT32 numOfInstrumentedRtns = 0;
    IMG_AddInstrumentFunction(ImageLoad, (VOID*)&numOfInstrumentedRtns);
    
    // Never returns
    PIN_StartProgramProbed();
    
    return 0;
}
