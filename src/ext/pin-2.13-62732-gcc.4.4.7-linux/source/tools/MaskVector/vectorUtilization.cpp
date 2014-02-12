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
// This tool collects statistics on the usage of vectors by the application.

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include "vectorUtilizationTypes.h"

using std::ofstream;
using std::cerr;
using std::vector;
using std::stringstream;


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for defining the output file name
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "vectorUtilization.out",
                            "specify file name for Vector Utilization output");

// ofstream object for handling the output.
ofstream OutFile;

// Total number of threads spawned by the application.
volatile int numAppThreads = 0;

// A container for holding the MaskStats struct for all application threads.
vector<MaskStats*> ThreadsMaskStatsDB;

// This register holds a pointer to the MaskStats object for each thread.
REG threadDataReg;

// The regsins array hold regsets which are used during instrumentation to pass a partial context containing
// only the relevant mask register to analysis routines. The regsoutEmpty is used as an empty regset for
// the partial context since we don't need to write back a register value.
REGSET regsins[MAX_MASK_REGS];
REGSET regsoutEmpty;


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

static int Usage()
{
    cerr << "This tool collects statistics on the usage of vectors by the application." << endl << endl <<
             KNOB_BASE::StringKnobSummary() << endl;
    return 1;
}

static void InitializeRegsets()
{
    for (int reg = REG_K_BASE; reg < MAX_MASK_REGS; ++reg)
    {
        regsins[reg].Clear();
        regsins[reg].Insert((REG)reg);
    }
    regsoutEmpty.Clear();
}

static INT32 GetVectorRegOperandNum(xed_decoded_inst_t const* xedd, xed_inst_t const* const xedi,
                                    UINT32 start, UINT32 end)
{
    for (UINT32 operandNum = start; operandNum < end; ++operandNum)
    {
        xed_operand_t const* const operand = xed_inst_operand(xedi, operandNum);
        const xed_operand_enum_t op_name = xed_operand_name(operand);
        if (xed_operand_is_register(op_name))
        {
            xed_reg_enum_t reg = xed_decoded_inst_get_reg(xedd, op_name);
            xed_reg_class_enum_t reg_class =  xed_reg_class(reg);
            if (XED_REG_CLASS_ZMM == reg_class) return operandNum;
        }
    }
    return -1;
}

static UINT32 CalculateElementsForVectorOperand(xed_decoded_inst_t const* const xedd, UINT32 operandNum)
{
    UINT32 opWidth = xed_decoded_inst_operand_element_size_bits(xedd, operandNum); // size (in bits) of a single element
    if (0 == opWidth) return 0;
    UINT32 opSize = VECTORSIZE_BITS; // size (in bits) of the vector (512 fixed on KNC)
    return opSize / opWidth; // number of elements in the vector
}

static InternalResult GetNumberOfVectorElements(INS ins, xed_decoded_inst_t const* const xedd,
                                                xed_inst_t const* const xedi, const unsigned int operandCount,
                                                UINT32& vectorElements)
{
    // Calculate number of vector elements to pass to the instruction handler.
    INT32 vectorOperand = GetVectorRegOperandNum(xedd, xedi, 0, operandCount);
    if (vectorOperand < 0) return IR_VECTOR_OPERAND_NOT_FOUND;

    vectorElements = CalculateElementsForVectorOperand(xedd, vectorOperand);
    if (0 == vectorElements) return IR_ZERO_VECTOR_ELEMENT_WIDTH;

    // For conversion find the second operand and take a minimum between 2 vector elements.
    xed_category_enum_t cat = xed_decoded_inst_get_category(xedd);
    if (XED_CATEGORY_CONVERT == cat)
    {
        UINT32 secondVectorElements = MASK_MAX;
        INT32 secondVectorOperand = GetVectorRegOperandNum(xedd, xedi, vectorOperand + 1, operandCount);
        if (secondVectorOperand < 0) // if the second vector operand is not a vector register
        {
            // Make sure there is a vector memory operand.
            if (0 == INS_MemoryOperandCount(ins)) return IR_SECOND_VECTOR_OPERAND_NOT_FOUND;
            secondVectorElements = VECTORSIZE_BYTES / INS_MemoryOperandSize(ins, 0);
        }
        else
        {
            secondVectorElements = CalculateElementsForVectorOperand(xedd, secondVectorOperand);
            if (0 == secondVectorElements) return IR_ZERO_VECTOR_ELEMENT_WIDTH;
        }
        if (secondVectorElements < vectorElements)
        {
            vectorElements = secondVectorElements;
        }
    }
    return IR_SUCCESS;
}

static void FinlalizeThread(int thread, MaskStats* grandTotal)
{
    MaskStats* threadStats = ThreadsMaskStatsDB[thread];
    grandTotal->icount += threadStats->icount;
    grandTotal->error_count += threadStats->error_count;
    grandTotal->masked_prefetch_count += threadStats->masked_prefetch_count;
    grandTotal->mask_8_count += threadStats->mask_8_count;
    grandTotal->mask_16_count += threadStats->mask_16_count;
    grandTotal->mask_8_idle_count += threadStats->mask_8_idle_count;
    grandTotal->mask_16_idle_count += threadStats->mask_16_idle_count;
    grandTotal->mask_8_bits += threadStats->mask_8_bits;
    grandTotal->mask_16_bits += threadStats->mask_16_bits;
}

static void PrintStats(MaskStats* stats)
{
    UINT64 vectorInstructions = stats->mask_8_count + stats->mask_16_count;
    OutFile << "Instruction count: " << dec << stats->icount << endl;
    OutFile << "Prefetch instructions: " << stats->masked_prefetch_count << endl;
    OutFile << "Vector instructions: " << vectorInstructions << endl;
    double vectorPercentage = (0 == vectorInstructions) ? 0 : (double)vectorInstructions / (double)stats->icount * 100;
    OutFile.precision(2);
    OutFile << "Percentage of vector instructions: " << vectorPercentage << "%" << endl;
    double utilization8bit = ((double)stats->mask_8_bits / (double)(stats->mask_8_count*MASK_8)) * 100;
    double utilization16bit = ((double)stats->mask_16_bits / (double)(stats->mask_16_count*MASK_16)) * 100;
    double idle8bit = ((double)stats->mask_8_idle_count / (double)stats->mask_8_count) * 100;
    double idle16bit = ((double)stats->mask_16_idle_count / (double)stats->mask_16_count) * 100;
    double part8 = (double)stats->mask_8_count / (double)vectorInstructions;
    double part16 = (double)stats->mask_16_count / (double)vectorInstructions;
    OutFile << "Percentage of double-precision vector instructions: " << part8 * 100 << "%, utilization: " <<
               utilization8bit << "%" << endl;
    OutFile << "Percentage of idle instructions within the double-precision vector instructions: " <<
               idle8bit << "%" << endl;
    OutFile << "Percentage of single-precision vector instructions: " << part16 * 100 << "%, utilization: " <<
               utilization16bit << "%" << endl;
    OutFile << "Percentage of idle instructions within the single-precision vector instructions: " <<
               idle16bit << "%" << endl;
    double totalUtilization = (utilization8bit * part8) + (utilization16bit * part16);
    double totalIdle = (idle8bit * part8) + (idle16bit * part16);
    OutFile << "Total vector utilization percentage: " << totalUtilization << "%" << endl;
    OutFile << "Total percentage of idle vector instructions: " << totalIdle << "%" << endl;
    OutFile << "Errors encountered: " << stats->error_count << endl;
}

static void PrintStats(int thread)
{
    OutFile << endl << "Thread " << thread << " statistics:" << endl;
    PrintStats(ThreadsMaskStatsDB[thread]);
}


/////////////////////
// ANALYSIS FUNCTIONS
/////////////////////

static void count_block(MaskStats* threadMaskStats, ADDRINT numInsts) { threadMaskStats->icount += numInsts; }
static void count_masked_prefetch(MaskStats* threadMaskStats) { ++threadMaskStats->masked_prefetch_count; }
static void count_errors(MaskStats* threadMaskStats) { ++threadMaskStats->error_count; }

static void count_reg_read_single_precision(MaskStats* threadMaskStats, ADDRINT maskVal)
{
    // Update the relevant stats fields.
    ++threadMaskStats->mask_16_count;
    UINT64 maskPopCount = _mm_popcnt_u64(maskVal&0xffff);
    if (0 == maskPopCount)
    {
        ++threadMaskStats->mask_16_idle_count;
    }
    else
    {
        threadMaskStats->mask_16_bits += maskPopCount;
    }
}

static void count_reg_read_double_precision(MaskStats* threadMaskStats, ADDRINT maskVal)
{
    // Update the relevant stats fields.
    ++threadMaskStats->mask_8_count;
    UINT64 maskPopCount = _mm_popcnt_u64(maskVal&0xff);
    if (0 == maskPopCount)
    {
        ++threadMaskStats->mask_8_idle_count;
    }
    else
    {
        threadMaskStats->mask_8_bits += maskPopCount;
    }
}


static void count_fullvec_single_precision(MaskStats* threadMaskStats)
{
    ++threadMaskStats->mask_8_count;
    threadMaskStats->mask_8_bits += MASK_8;
}

static void count_fullvec_double_precision(MaskStats* threadMaskStats)
{
    ++threadMaskStats->mask_16_count;
    threadMaskStats->mask_16_bits += MASK_16;
}


/////////////////////
// INSTRUMENTATION FUNCTIONS
/////////////////////

static void HandleError(INS ins, string errorMessage)
{
    INS_InsertCall(ins,
                   IPOINT_AFTER,
                   (AFUNPTR)count_errors,
                   IARG_REG_VALUE, threadDataReg,
                   IARG_END);
    OutFile << "TOOL ERROR: " << errorMessage << endl <<
               "    0x" << hex << INS_Address(ins) << ": " << INS_Disassemble(ins) << endl;
}

static bool HandlePrefetch(INS ins, xed_inst_t const* const xedi)
{
    if (xed_inst_get_attribute(xedi, XED_ATTRIBUTE_PREFETCH))
    {
        INS_InsertCall(ins,
                       IPOINT_AFTER,
                       (AFUNPTR)count_masked_prefetch,
                       IARG_REG_VALUE, threadDataReg,
                       IARG_END);
        return true;
    }
    return false;
}

static bool HandleVectorReadOperand(INS ins, xed_reg_enum_t reg, UINT32 vectorElements)
{
    if (MASK_8 == vectorElements)
    {
        // Mask k0 cannot be selected as the writemask for a vector operation. The encoding that would
        // be expected to select mask k0 instead selects an implicit mask of 0xffff
        if (XED_REG_K0 == reg)
        {
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           (AFUNPTR)count_fullvec_double_precision,
                           IARG_REG_VALUE, threadDataReg,
                           IARG_END);
        }
        else
        {
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           (AFUNPTR)count_reg_read_double_precision,
                           IARG_REG_VALUE, threadDataReg,
                           IARG_REG_VALUE, (reg - XED_REG_K0 + REG_K_BASE),
                           IARG_END);
        }
    }
    else if (MASK_16 == vectorElements)
    {
        // Mask k0 cannot be selected as the writemask for a vector operation. The encoding that would
        // be expected to select mask k0 instead selects an implicit mask of 0xffff
        if (XED_REG_K0 == reg)
        {
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           (AFUNPTR)count_fullvec_single_precision,
                           IARG_REG_VALUE, threadDataReg,
                           IARG_END);
        }
        else
        {
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           (AFUNPTR)count_reg_read_single_precision,
                           IARG_REG_VALUE, threadDataReg,
                           IARG_REG_VALUE, (reg - XED_REG_K0 + REG_K_BASE),
                           IARG_END);
        }
    }
    else return false;
    return true;
}

static void Instruction(INS ins)
{
    xed_decoded_inst_t const* const xedd = INS_XedDec(ins);

    xed_extension_enum_t ext = xed_decoded_inst_get_extension(xedd);
    if (XED_EXTENSION_KNCE != ext) return; // not a vector instruction

    xed_inst_t const* const xedi = xed_decoded_inst_inst(xedd);
    const unsigned int operandCount = xed_inst_noperands(xedi);

    // Search for the mask register starting from index 1 to skip cases where the mask register is used
    // as the destination like vpcmpd.
    for (unsigned int i = 1; i < operandCount; ++i)
    {
        xed_operand_t const* const operand = xed_inst_operand(xedi, i);
        const xed_operand_enum_t operandName = xed_operand_name(operand);
        if (!xed_operand_is_register(operandName)) continue; // the operand is not a register

        xed_reg_enum_t reg = xed_decoded_inst_get_reg(xedd, operandName);
        xed_reg_class_enum_t reg_class = xed_reg_class(reg);
        if (XED_REG_CLASS_MASK != reg_class) continue; // the register is not a mask

        // Get the number of vector elements.
        UINT32 vectorElements = 0;
        // Count masked prefetch instructions.
        if (HandlePrefetch(ins, xedi)) return;
        InternalResult ires = GetNumberOfVectorElements(ins, xedd, xedi, operandCount, vectorElements);
        if (IR_SUCCESS != ires)
        {
            HandleError(ins, internalResultString[ires]);
            return;
        }

        // Finally, handle all read operations of a mask in a vector instruction.
        if (xed_operand_read(operand))
        {
            if (!HandleVectorReadOperand(ins, reg, vectorElements))
            {
                stringstream strm;
                strm << internalResultString[IR_INVALID_NUMBER_OF_VECTOR_ELEMENTS] << ": " << vectorElements << ".";
                HandleError(ins, strm.str());
                return;
            }
        }
    }
}

static void BasicBlock(BBL bbl)
{
    BBL_InsertCall(bbl, IPOINT_ANYWHERE,
                   AFUNPTR(count_block),
                   IARG_REG_VALUE, threadDataReg,
                   IARG_ADDRINT, ADDRINT(BBL_NumIns(bbl)),
                   IARG_END);
}

static VOID Trace(TRACE trace, VOID* v)
{
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        BasicBlock(bbl);
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            Instruction(ins);
        }
    }
}


/////////////////////
// CALLBACKS
/////////////////////

static VOID ThreadStart(THREADID tid, CONTEXT* ctxt, INT32 flags, VOID* v)
{
    MaskStats* threadMaskStats = new MaskStats();
    PIN_SetContextReg(ctxt, threadDataReg, (ADDRINT)threadMaskStats);
    ++numAppThreads;
    ThreadsMaskStatsDB.push_back(threadMaskStats);
}

static VOID Fini(INT32 code, VOID* v)
{
    MaskStats grandTotal;
    for(int thread = 0; thread < numAppThreads ; ++thread)
    {
        FinlalizeThread(thread, &grandTotal);
        PrintStats(thread);
    }
    OutFile << endl << "==============================================================" << endl << endl <<
               "Grand Total:" << endl;
    PrintStats(&grandTotal);
    OutFile.close();
}


/////////////////////
// MAIN FUNCTION
/////////////////////

int main(int argc, char *argv[])
{
    // Initialize Pin
    if (PIN_Init(argc,argv)) return Usage();

    // Open the output file
    OutFile.open(KnobOutputFile.Value().c_str());

    // Initialize global variables
    InitializeRegsets();
    threadDataReg = PIN_ClaimToolRegister();

    // Add instrumentation
    TRACE_AddInstrumentFunction(Trace, 0);
    PIN_AddThreadStartFunction(ThreadStart, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Start running the application
    PIN_StartProgram(); // never returns

    return 0;
}
