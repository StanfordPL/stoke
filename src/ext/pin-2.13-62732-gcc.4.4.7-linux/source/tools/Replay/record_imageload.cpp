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
//
// This tool records or replays image load events and associated image data.
// The test requires using it twice.
//
// Note that on replay it doesn't execute the loaded code, just re-generates the
// image load trace.
//

#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

KNOB<BOOL> KnobReplay(KNOB_MODE_WRITEONCE, "pintool", "r", "0", "replay if 1, default is to log");
KNOB<BOOL> KnobVerbose(KNOB_MODE_WRITEONCE, "pintool", "v", "0", "print more verbose messages");

// This is questionable, but should be fine. Doing something smarter does not seem warranted
// for this simple test.
// The problems with MAX_PATH (or Windows PATH_MAX) are described here
// http://stackoverflow.com/questions/833291/is-there-an-equivalent-to-winapis-max-path-under-linux-unix
// for instance.
//
#define MAX_FILENAME_LENGTH 4096

static FILE * trace;
static FILE * imgLog;
static int  imageCount = 0;
static BOOL logging = FALSE;

// Save the image load event 
static void LogImageLoad(IMG img, void *v)
{
    // Ensure that we can't overflow when we read it back.
    ASSERTX (IMG_Name(img).length() < MAX_FILENAME_LENGTH);

    // Log the data needed to restore it
    fprintf (imgLog, "L '%s' 0x%lx \n", IMG_Name(img).c_str(), (unsigned long)IMG_LoadOffset(img));
}

// Save the image unload event 
static void LogImageUnload(IMG img, void *)
{
    ASSERTX (IMG_Name(img).length() < MAX_FILENAME_LENGTH);

    // Log the unload event.
    fprintf (imgLog, "U '%s'\n", IMG_Name(img).c_str());
}


// Parse the image description
static void ParseImageLoadLine(string &imageName,  ADDRINT *offset)
{
    // Data was written like this :-
    // fprintf (imgLog, "L '%s' 0x%x\n", IMG_Name(img).c_str(), 
    //          IMG_LoadOffset(img), base, IMG_HighAddress(img));
    char imgNameBuffer[MAX_FILENAME_LENGTH];

    int itemsRead = fscanf(imgLog," '%[^']' %p\n",&imgNameBuffer[0], (void**)offset);
    if (itemsRead != 2)
    {
        fprintf (trace, "ParseImageLoadLine: Failed to parse; parsed %d expected to parse 2\n", itemsRead);
        exit(1);
    }
    imageName = imgNameBuffer;
}

static void ParseImageUnloadLine(string &imageName)
{
    // Data was written like this :-
    // fprintf (imgLog, "U '%s');
    char imgNameBuffer[MAX_FILENAME_LENGTH];

    int itemsRead = fscanf(imgLog," '%[^']'\n",&imgNameBuffer[0]);
    if (itemsRead != 1)
    {
        fprintf (trace, "ParseImageUnloadLine: Failed to parse\n");
        exit(1);
    }
    imageName = imgNameBuffer;
}

static IMG FindNamedImg(const string& imgName)
{
    // Visit every loaded image
    for (IMG img= APP_ImgTail(); IMG_Valid(img); img = IMG_Prev(img))
    {
        if (IMG_Name(img) == imgName)
            return img;
    }
    return IMG_Invalid();
}

static int replayedImageCount = 0;

// Replay the image log.
// We run this before the each instruction of the code as an analysis routine.
// So we eat up the image loads one instruction at a time!
// We can also call it before PIN_StartProgram, to check that queuing
// the replay calls up works.
//
static void ReplayImageEntry()
{
    if (feof(imgLog))
        exit(0);

    char tag = fgetc(imgLog);
    switch (tag)
    {
        case 'L':
            {
                string imageName;
                ADDRINT offset;

                ParseImageLoadLine(imageName, &offset);
                if (KnobVerbose)
                    fprintf (trace, "Replaying load for %s\n", imageName.c_str());
                // And, finally, inform Pin that it is all there, which will invoke
                // image load callbacks.
                PIN_LockClient();
                // Tag the first image as the main program
                PIN_ReplayImageLoad(imageName.c_str(), imageName.c_str(), offset, replayedImageCount++==0);
                PIN_UnlockClient();

                break;
            }
        case 'U':
            {
                string imageName;
                ParseImageUnloadLine(imageName);
                
                IMG img = FindNamedImg(imageName);
                if (KnobVerbose)
                    fprintf (trace, "Replaying unload for %s\n", imageName.c_str());
                // And, finally, inform Pin that it has gone, which will invoke
                // image unload callbacks.
                PIN_LockClient();
                PIN_ReplayImageUnload(img);
                PIN_UnlockClient();
                break;
            }            
        default:
            fprintf (trace, "Unexpected line in log file starting with '%c'\n", tag);
            exit(0);
    }
}

static VOID InstrumentInstruction (INS ins, void *)
{
    INS_InsertCall (ins, IPOINT_BEFORE, (AFUNPTR)ReplayImageEntry, IARG_END);
}

// Logging to demonstrate that the rest of the tool does replay the image load
// and unload operations, and that the Pin data structures are valid.

// Grab some detailed information about the image, the number of SECs and RTNs
static VOID CountImageSecsAndRtns (IMG img, int *nSecs, int *nRtns)
{
    int numSecs = 0;
    int numRtns = 0;

    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        numSecs++;
        for (RTN rtn=SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {
            numRtns++;
        }
    }

    *nSecs = numSecs;
    *nRtns = numRtns;
}

// Print the list of images currently loaded, with some information about each.
static VOID PrintImageList()
{
    for (IMG img= APP_ImgHead(); IMG_Valid(img); img = IMG_Next(img))
    {
        int nSecs;
        int nRtns;

        CountImageSecsAndRtns (img, &nSecs, &nRtns);
        fprintf (trace, "   L  %-40s %2d [0x%lx:0x%lx] offset 0x%lx %2d SECs %4d RTNs\n", IMG_Name(img).c_str(), IMG_Id(img),
                 (unsigned long)IMG_LowAddress(img), (unsigned long)IMG_HighAddress(img), (unsigned long)IMG_LoadOffset(img), nSecs, nRtns);
    }    
}

// Trace an image load event
static VOID TraceImageLoad(IMG img, VOID *v)
{
    fprintf(trace, "[%2d]+ %-40s %2d\n", imageCount++, IMG_Name(img).c_str(), IMG_Id(img));
    PrintImageList();
}

// Trace an image unload event
static VOID TraceImageUnload(IMG img, VOID *v)
{
    fprintf(trace, "[%2d]- %-40s %2d\n", imageCount--, IMG_Name(img).c_str(), IMG_Id(img));
    PrintImageList();
}

// This function is called when the application exits
static VOID Fini(INT32 code, VOID *v)
{
    fclose(trace);
    fclose(imgLog);
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

static INT32 Usage()
{
    PIN_ERROR("This tool prints a log of image load and unload events, logs them and can replay them\n"
             + KNOB_BASE::StringKnobSummary() + "\n");
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    // Initialize symbol processing
    PIN_InitSymbols();
    
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    logging = ! KnobReplay.Value();

    if (logging)
    {
        trace  = fopen("record_imageload_rec.out", "w");
        imgLog = fopen("imageload.log", "w");

        IMG_AddInstrumentFunction(LogImageLoad, 0);
        IMG_AddUnloadFunction    (LogImageUnload, 0);
    }
    else
    {  // Replaying
        trace  = fopen("record_imageload_play.out", "w");
        imgLog = fopen("imageload.log", "r");

        // We will handle image load operations.
        PIN_SetReplayMode (REPLAY_MODE_IMAGEOPS);
        // And then we replay the first two image load ops before we start the program.
        // We do this even before adding the image instrumentation callback, that should still work,
        // Pin should defer these and replay them inside PIN_StartProgram.
        ReplayImageEntry();
        ReplayImageEntry();

        INS_AddInstrumentFunction (InstrumentInstruction, 0);
    }

    // These Trace functions demonstrate that the events are happening, they are the client...
    IMG_AddInstrumentFunction(TraceImageLoad, 0);
    IMG_AddUnloadFunction    (TraceImageUnload, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
