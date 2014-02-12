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
#ifndef _PARSE_ADDRESS_COUNT_H_
# define _PARSE_ADDRESS_COUNT_H_

namespace INSTLIB 
{

GLOBALCONST UINT64 PIN_CONTROLLER_ALL_TIDS = 0xFFFF;

class ADDRESS_COUNT
{
  public:
    ADDRESS_COUNT()
        : name(""),
          address(0),
          count(0),
          offset(0),
          rearm(false),
          always_enabled(false),
          low_thread(0),
          high_thread(0),
          tid(PIN_CONTROLLER_ALL_TIDS)
    {}

    void print()
    {
        cerr << "name: " << name
             << " address: " << hex << address << dec
             << " count: " <<  count
             << " offset: " << hex << offset << dec
             << " rearm: " << (rearm?"true":"false")
             << " always_enabled: " << (always_enabled?"true":"false")
             << " low_thread: " <<  low_thread
             << " high_thread: " <<  high_thread;
        if (tid == PIN_CONTROLLER_ALL_TIDS) 
            cerr << " All TIDs" ;
        else 
            cerr << " TID=" << tid;
        cerr  << endl;
    }
    
    string name; 
    ADDRINT address;
    UINT64 count; 
    ADDRDELTA offset;
    BOOL rearm;
    BOOL always_enabled; // ignores count
    UINT32  low_thread;
    UINT32  high_thread;
    THREADID tid;
    
};

LOCALFUN unsigned int
split_args(const string& sep, 
           const string& input, 
           vector<string>& output_array)
{
    // returns the number of args
    // rip off the separator characters and split the src string based on separators.
    
    // find the string between last_pos and pos. pos is after last_pos
    string::size_type last_pos = input.find_first_not_of(sep, 0);
    string::size_type pos = input.find_first_of(sep, last_pos);  
    //XTMSG("input " << input << " \tlast_pos " << last_pos << " pos " << pos);
    int i=0;
    while( pos != string::npos && last_pos != string::npos ) 
    {
        string a = input.substr(last_pos, pos-last_pos);
        output_array.push_back(a); 
        //XTMSG("\t\tlast_pos " << last_pos << " pos " << pos << " i " << i);
        last_pos = input.find_first_not_of(sep, pos);
        pos = input.find_first_of(sep, last_pos);  
        i++;
    }
    if (last_pos != string::npos && pos == string::npos)
    {
        //XTMSG("\t\tGetting last substring at " << last_pos);
        string a = input.substr(last_pos); // get the rest of the string
        output_array.push_back(a);
        i++;
    }
    //XTMSG("\t returning " << i);
    return i;
}

// Usage:
// <address>[:<count>][:tid<tid>][:tidrange<first tid>_<last tid>][:(rearm|repeat)]
//      address == (0x<hex address>|<decimal address>|<name>[+<offset>])

LOCALFUN ADDRESS_COUNT ParseAddressCount(string str)
{
    ADDRESS_COUNT retval;
    string addressStr;
    string countStr = "1";
    BOOL foundCount = false;
    string offsetStr;


    vector<string> tokens;
    const string sep = ":";
    unsigned int args = split_args(sep, str, tokens);
    ASSERTX(args != 0);
    addressStr = tokens[0];
    for(unsigned int i = 1 ;i < args ;i++)
    {
        const size_t length = tokens[i].size();
        if (length > 0 && isdigit(tokens[i][0]))
        {
             ASSERT(!foundCount, "Count should be decalred just once.\n" +
                   "Syntax: <address>[:<count>][:tid<tid>][:tidrange<first tid>_<last tid>][:(rearm|repeat)]\n");

            foundCount = true;
            countStr = tokens[i];
        }
        else if (tokens[i] == "repeat" || tokens[i] == "rearm")
        {
            retval.rearm = true;
        }
        else if (tokens[i].substr(0,3) == "tid") 
        {
            retval.tid = static_cast<THREADID>(Uint64FromString(tokens[i].substr(3)));
        }
        else
        {
            cerr << "Unrecognized token in controller argument: " << tokens[i]
                 << endl;
            ASSERTX(0);
        }
    }
  
    if (retval.rearm && foundCount == false)
    {
        retval.always_enabled = true;
    }
    retval.count = Uint64FromString(countStr);
    if ( (addressStr.size() > 2 && addressStr[0] == '0' &&  addressStr[1] == 'x') ||
         isdigit(addressStr[0]) )
    {
        retval.address = AddrintFromString(addressStr);
        retval.name = "";
    }
    else
    {
        retval.address = 0;
        // Split at +
        size_t pos = addressStr.find("+");
     
        if (pos == string::npos)
        {
            retval.name = addressStr;
            retval.offset = 0;
        }
        else
        {
            retval.name = addressStr.substr(0,pos);
            offsetStr = addressStr.substr(pos+1,addressStr.length());
            retval.offset = static_cast<THREADID>(Uint64FromString(offsetStr));
        }
    }

    return retval;
}

// Usage: 
// <count>[:tid<tid>][:tidrange<first tid>_<last tid>][:(rearm|repeat)]
LOCALFUN ADDRESS_COUNT ParseCount(string str)
{
    ADDRESS_COUNT retval;
    string countStr = "1";
    BOOL foundCount = false;
    string offsetStr;

    vector<string> tokens;
    const string sep = ":";
    unsigned int args = split_args(sep, str, tokens);
    ASSERTX(args != 0);
    for(unsigned int i = 0 ;i < args ;i++)
    {
        const size_t length = tokens[i].size();
        if (length > 0 && isdigit(tokens[i][0]))
        {
            ASSERT(!foundCount, "Count should be decalred just once.\n" +
                   "Syntax: <count>[:tid<tid>][:tidrange<first tid>_<last tid>][:(rearm|repeat)]\n");

            foundCount = true;
            countStr = tokens[i];
        }
        else if (tokens[i] == "repeat" || tokens[i] == "rearm")
        {
            retval.rearm = true;
        }
        else if (tokens[i].substr(0,8) == "tidrange") 
        {
            string rangeStr;
            string lowStr;
            string highStr;

            rangeStr = tokens[i].substr(8);
            // Split at _
            size_t pos = rangeStr.find("_");
     
            if (pos == string::npos)
            {
                ASSERT(FALSE, "Must use S_T with length:tidrange\n");
            }
            else
            {
                lowStr = rangeStr.substr(0,pos);
                highStr = rangeStr.substr(pos+1,rangeStr.length());
                retval.low_thread = (UINT32)Uint64FromString(lowStr);
                retval.high_thread = (UINT32)Uint64FromString(highStr);
                ASSERT(retval.low_thread < retval.high_thread, "tid range low must be less than tid range high.\n");
            }
            retval.tid =  PIN_CONTROLLER_ALL_TIDS;
        }
        else if (tokens[i].substr(0,3) == "tid") 
        {
            retval.tid = static_cast<THREADID>(Uint64FromString(tokens[i].substr(3)));
        }
        else
        {
            cerr << "Unrecognized token in controller argument: " << tokens[i]
                 << endl;
            ASSERTX(0);
        }
    }
  
    if (retval.rearm && foundCount == false)
        retval.always_enabled = true;
    retval.count = Uint64FromString(countStr);
    return retval;
}


#if defined(TARGET_IA32) || defined(TARGET_IA32E)
// Usage: 
// <count>[:tid<tid>][:(rearm|repeat)]
LOCALFUN ADDRESS_COUNT ParsePatternCount(string str)
{
    ADDRESS_COUNT retval;
    string patternStr;
    string countStr = "1";
    BOOL foundCount = false;
    string offsetStr;


    vector<string> tokens;
    const string sep = ":";
    unsigned int args = split_args(sep, str, tokens);
    ASSERTX(args != 0);
    patternStr = tokens[0];
    for(unsigned int i = 1 ;i < args ;i++)
    {
        const size_t length = tokens[i].size();
        if (length > 0 && isdigit(tokens[i][0]))
        {
            ASSERT(!foundCount, "Count should be decalred just once.\n" +
                   "Syntax: <count>[:tid<tid>][:(rearm|repeat)]\n");

            foundCount = true;
            countStr = tokens[i];
        }
        else if (tokens[i] == "repeat" || tokens[i] == "rearm")
        {
            retval.rearm = true;
        }
        else if (tokens[i].substr(0,3) == "tid") 
        {
            retval.tid = static_cast<THREADID>(Uint64FromString(tokens[i].substr(3)));
        }
        else
        {
            cerr << "Unrecognized token in controller argument: " << tokens[i]
                 << endl;
            ASSERTX(0);
        }
    }
  
    if (retval.rearm && foundCount == false)
    {
        retval.always_enabled = true;
    }
    retval.count = Uint64FromString(countStr);
    retval.name  = patternStr;
    return retval;
}
#endif

} // namespace
#endif
