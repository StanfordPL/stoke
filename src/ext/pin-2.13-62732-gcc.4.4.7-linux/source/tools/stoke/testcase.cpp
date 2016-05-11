// Copyright 2014 eric schkufza
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/* ============================================================================================= */

#include <stdint.h>

#include <algorithm>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <stack>
#include <unordered_map>
#include <unordered_set>

#include <mutex>
#include <sys/types.h>
#include <sys/wait.h>

#include "pin.H"

#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/cpu_states.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

#define DEBUG_PINTOOL(X) { }

/* ============================================================================================= */
/* Commandline Switches */
/* ============================================================================================= */

KNOB<string> KnobFxnName(KNOB_MODE_WRITEONCE, "pintool", "f", "main",
    "function to generate tests for");
KNOB<string> KnobOutFile(KNOB_MODE_WRITEONCE, "pintool", "o", "",
    "file to write results to");
KNOB<size_t> KnobMaxStack(KNOB_MODE_WRITEONCE, "pintool", "x", "1024",
    "maximum number of bytes to assume appear on the stack");
KNOB<size_t> KnobMaxTc(KNOB_MODE_WRITEONCE, "pintool", "n", "0",
    "maximum number of testcases to emit");
KNOB<uint64_t> KnobBeginLine(KNOB_MODE_WRITEONCE, "pintool", "b", "0", 
    "address to begin logging at");
KNOB<string> KnobEndLines(KNOB_MODE_WRITEONCE, "pintool", "e", "0", 
    "addresses to stop logging at");
KNOB<string> KnobOutputDir(KNOB_MODE_WRITEONCE, "pintool", "d", "",
    "directory to write testcases too");
KNOB<string> KnobFunctionList(KNOB_MODE_WRITEONCE, "pintool", "l", "",
    "file with a list of functions to trace");

/* ============================================================================================= */
/* Global Variables */
/* ============================================================================================= */

// Line to begin recording on in the target function
uint64_t begin_line_;
// Lines to stop recording on in the target function (we always stop on ret)
unordered_set<uint64_t> end_lines_;

// Max number of testcases to emit
int tc_remaining_;
// Mutex used to synchronize the number of testcases left
mutex tc_remaining_mutex_;

// Vector of functions we're looking for
vector<string> functions_;

/* This group are used for the state of one test case.  They could probably be
 * refactored to not be globals. */

typedef unordered_map<uint64_t, uint8_t> MemoryMap;

/** This memory_values_ data structures is tricky.  Each MemoryMap contains a
 * store of the addresses written to.  Each "vector" represents a sequence of
 * maps in order that they occurred.  Every time we enter a new function, we
 * push a new vector onto the stack and put one map into it.  When we return
 * from a function, we pop the stack and append that vector to the new top.
 * That way, if there's a caller that invokes a callee, when we are finished
 * the caller sees all the memory writes of both itself and the callee. */
stack<vector<MemoryMap>> memory_values_;
stack<CpuState> tcs_;
stack<string> current_function_;

/* ============================================================================================= */
/* Functions */
/* ============================================================================================= */

INT32 Usage() {
  cerr << "STOKE - Testcase Generator" << endl;
  cerr << KNOB_BASE::StringKnobSummary();
  cerr << endl;

  return -1;
}

/* ============================================================================================= */

VOID begin_tc(const char* function_name,
              ADDRINT rax, ADDRINT rbx, ADDRINT rcx, ADDRINT rdx,
              ADDRINT r8, ADDRINT r9,  ADDRINT r10, ADDRINT r11,
              ADDRINT r12, ADDRINT r13, ADDRINT r14, ADDRINT r15,
              ADDRINT rsp, ADDRINT rbp, ADDRINT rsi, ADDRINT rdi,
              PIN_REGISTER* sse0, PIN_REGISTER* sse1, PIN_REGISTER* sse2, PIN_REGISTER* sse3,
              PIN_REGISTER* sse4, PIN_REGISTER* sse5, PIN_REGISTER* sse6, PIN_REGISTER* sse7,
              PIN_REGISTER* sse8, PIN_REGISTER* sse9, PIN_REGISTER* sse10, PIN_REGISTER* sse11,
              PIN_REGISTER* sse12, PIN_REGISTER* sse13, PIN_REGISTER* sse14, PIN_REGISTER* sse15,
							ADDRINT rflags
             ) {
	// Nothing to do if we've satisfied our quota, or we're currently recording
  if (tc_remaining_ <= 0) {
    return;
  }
  DEBUG_PINTOOL(cout << "beginning " << function_name << endl;)

	// Otherwise, we're starting recording right now
  CpuState tc;

	// Record GP registers
  tc.gp[0].get_fixed_quad(0) = rax;
  tc.gp[1].get_fixed_quad(0) = rcx;
  tc.gp[2].get_fixed_quad(0) = rdx;
  tc.gp[3].get_fixed_quad(0) = rbx;
  tc.gp[4].get_fixed_quad(0) = rsp;
  tc.gp[5].get_fixed_quad(0) = rbp;
  tc.gp[6].get_fixed_quad(0) = rsi;
  tc.gp[7].get_fixed_quad(0) = rdi;
  tc.gp[8].get_fixed_quad(0) = r8;
  tc.gp[9].get_fixed_quad(0) = r9;
  tc.gp[10].get_fixed_quad(0) = r10;
  tc.gp[11].get_fixed_quad(0) = r11;
  tc.gp[12].get_fixed_quad(0) = r12;
  tc.gp[13].get_fixed_quad(0) = r13;
  tc.gp[14].get_fixed_quad(0) = r14;
  tc.gp[15].get_fixed_quad(0) = r15;
	
	// Record SSE registers (width depends on architecture)
	#ifdef __AVX__
		constexpr size_t width = 4;
	#else
		constexpr size_t width = 2;
	#endif
  for (size_t i = 0; i < width; ++i) {
    tc.sse[0].get_fixed_quad(i) = sse0->qword[i];
    tc.sse[1].get_fixed_quad(i) = sse1->qword[i];
    tc.sse[2].get_fixed_quad(i) = sse2->qword[i];
    tc.sse[3].get_fixed_quad(i) = sse3->qword[i];
    tc.sse[4].get_fixed_quad(i) = sse4->qword[i];
    tc.sse[5].get_fixed_quad(i) = sse5->qword[i];
    tc.sse[6].get_fixed_quad(i) = sse6->qword[i];
    tc.sse[7].get_fixed_quad(i) = sse7->qword[i];
    tc.sse[8].get_fixed_quad(i) = sse8->qword[i];
    tc.sse[9].get_fixed_quad(i) = sse9->qword[i];
    tc.sse[10].get_fixed_quad(i) = sse10->qword[i];
    tc.sse[11].get_fixed_quad(i) = sse11->qword[i];
    tc.sse[12].get_fixed_quad(i) = sse12->qword[i];
    tc.sse[13].get_fixed_quad(i) = sse13->qword[i];
    tc.sse[14].get_fixed_quad(i) = sse14->qword[i];
    tc.sse[15].get_fixed_quad(i) = sse15->qword[i];
  }
	// Record RFLAGS --
	// Ordinarily we would use the Rflags API to avoid setting non-status flags.
	// We can skip that check here because this method is only ever called to load 
	// known good state from the cpu.
	for (size_t i = 0, ie = tc.rf.size(); i < ie; ++i) {
		tc.rf.set(i, (rflags >> i) & 0x1);
	}

  MemoryMap mm;
  memory_values_.push({ mm });
  tcs_.push(tc);
  current_function_.push(function_name);

}

/* ============================================================================================= */

VOID record_deref(VOID* addr, UINT32 size, bool rip_deref, bool read) {
	// Nothing to do here if we're not recording
  if (!tcs_.size()) {
    return;
  }
  DEBUG_PINTOOL(cout << "recording deref" << endl;)

  MemoryMap& current = memory_values_.top().back();
  for (size_t i = 0; i < size; ++i) {
    const auto ptr = (uint64_t)addr + i;
    current[ptr] = read ? *((uint8_t*)(ptr)) : 0;
  }
}

/* ============================================================================================= */

VOID end_tc() {
	// Nothing to do if we're not recording
	if (!tcs_.size()) {
		return;
	}

  auto ended_function = current_function_.top();
  current_function_.pop();
  DEBUG_PINTOOL(cout << "ending " << ended_function << endl;)

	// Otherwise, we're done. Finish recording this testcase	
  // See the comments on the top about the memory_values_ data structure.
	auto tc = tcs_.top();
  tcs_.pop();
  unordered_map<uint64_t, cpputil::BitVector> memory_map;
  auto mem_map_list = memory_values_.top();
  memory_values_.pop();
  for(auto mem_map : mem_map_list) {
    for(auto pair : mem_map) {
      BitVector bv(8);
      bv.get_fixed_byte(0) = pair.second;
      memory_map[pair.first] = bv;
    }
    if(memory_values_.size())
      memory_values_.top().push_back(mem_map);
  }
  if(memory_values_.size()) {
    MemoryMap new_map;
    memory_values_.top().push_back(new_map);
  }
  tc.memory_from_map(memory_map);

  // Print the testcase
  ostream* os;
  bool delete_me = true;
  if(!KnobOutputDir.Value().empty()) {
    stringstream ss;
    ss << KnobOutputDir.Value() << "/" << ended_function;
    os = new ofstream(ss.str(), ofstream::app);
  } else if (!KnobOutFile.Value().empty()) {
    os = new ofstream(KnobOutFile.Value());
  } else {
    os = &cout;
    delete_me = false;
  }


  *os << "Testcase 0:" << endl << endl;
  tc.write_text(*os);
	if (os == &cout) {
		*os << endl;
	}
  *os << endl;
	os->flush();

  if(delete_me) {
    static_cast<ofstream*>(os)->close();
    delete os;
  }

  tc_remaining_mutex_.lock();
  tc_remaining_--;
  tc_remaining_mutex_.unlock();
}

/* ============================================================================================= */

VOID emit_start(INS& ins, const char* function_name) {
	INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)begin_tc,
                 IARG_PTR, function_name,
                 IARG_REG_VALUE, LEVEL_BASE::REG_RAX, IARG_REG_VALUE, LEVEL_BASE::REG_RBX,
                 IARG_REG_VALUE, LEVEL_BASE::REG_RCX, IARG_REG_VALUE, LEVEL_BASE::REG_RDX,
                 IARG_REG_VALUE, LEVEL_BASE::REG_R8,  IARG_REG_VALUE, LEVEL_BASE::REG_R9,
                 IARG_REG_VALUE, LEVEL_BASE::REG_R10, IARG_REG_VALUE, LEVEL_BASE::REG_R11,
                 IARG_REG_VALUE, LEVEL_BASE::REG_R12, IARG_REG_VALUE, LEVEL_BASE::REG_R13,
                 IARG_REG_VALUE, LEVEL_BASE::REG_R14, IARG_REG_VALUE, LEVEL_BASE::REG_R15,
                 IARG_REG_VALUE, LEVEL_BASE::REG_RSP, IARG_REG_VALUE, LEVEL_BASE::REG_RBP,
                 IARG_REG_VALUE, LEVEL_BASE::REG_RSI, IARG_REG_VALUE, LEVEL_BASE::REG_RDI,
#ifdef __AVX__
                 IARG_REG_REFERENCE, REG_YMM0,  IARG_REG_REFERENCE, REG_YMM1,
                 IARG_REG_REFERENCE, REG_YMM2,  IARG_REG_REFERENCE, REG_YMM3,
                 IARG_REG_REFERENCE, REG_YMM4,  IARG_REG_REFERENCE, REG_YMM5,
                 IARG_REG_REFERENCE, REG_YMM6,  IARG_REG_REFERENCE, REG_YMM7,
                 IARG_REG_REFERENCE, REG_YMM8,  IARG_REG_REFERENCE, REG_YMM9,
                 IARG_REG_REFERENCE, REG_YMM10, IARG_REG_REFERENCE, REG_YMM11,
                 IARG_REG_REFERENCE, REG_YMM12, IARG_REG_REFERENCE, REG_YMM13,
                 IARG_REG_REFERENCE, REG_YMM14, IARG_REG_REFERENCE, REG_YMM15,
#else
                 IARG_REG_REFERENCE, REG_XMM0,  IARG_REG_REFERENCE, REG_XMM1,
                 IARG_REG_REFERENCE, REG_XMM2,  IARG_REG_REFERENCE, REG_XMM3,
                 IARG_REG_REFERENCE, REG_XMM4,  IARG_REG_REFERENCE, REG_XMM5,
                 IARG_REG_REFERENCE, REG_XMM6,  IARG_REG_REFERENCE, REG_XMM7,
                 IARG_REG_REFERENCE, REG_XMM8,  IARG_REG_REFERENCE, REG_XMM9,
                 IARG_REG_REFERENCE, REG_XMM10, IARG_REG_REFERENCE, REG_XMM11,
                 IARG_REG_REFERENCE, REG_XMM12, IARG_REG_REFERENCE, REG_XMM13,
                 IARG_REG_REFERENCE, REG_XMM14, IARG_REG_REFERENCE, REG_XMM15,
#endif
								 IARG_REG_VALUE, LEVEL_BASE::REG_RFLAGS,
                 IARG_END);
}

/* ============================================================================================= */

VOID emit_stop(INS& ins) {
  INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)end_tc, IARG_END);
}

/* ============================================================================================= */

VOID routine_instrumentation(RTN fxn, VOID* v) {
  RTN_Open(fxn);

  bool is_target = false;
  auto this_function = RTN_Name(fxn);
  for(auto function : functions_) {
    if(this_function == function) {
      is_target = true;
      break;
    }  
  }

	// State related to this function 
	const auto fxn_rip = INS_Address(RTN_InsHead(fxn));
	
	// Instrument every instruction (remember, we ignore labels and index from 1)
	size_t line = 1;
  for (INS ins = RTN_InsHead(fxn); INS_Valid(ins); ins = INS_Next(ins)) {
		// Potentially start recording a new testcase
		if (is_target && (line == begin_line_)) {
			emit_start(ins, RTN_Name(fxn).c_str());
		}
		// Likewise, potentially it's time to stop
		if (is_target && ((end_lines_.find(line) != end_lines_.end()) || INS_IsRet(ins))) {
			emit_stop(ins);
		}

		if (INS_IsVgather(ins)) {
			// @todo -- Why is everything in pin so hard?
			continue;
		}

    // Record memory references
		for (size_t i = 0, ie = INS_MemoryOperandCount(ins); i < ie; ++i) {
			const auto rip_deref = INS_RegRContain(ins, REG_INST_PTR) && !INS_IsCall(ins);
			if (INS_MemoryOperandIsRead(ins, i)) {
				INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR) record_deref,
						IARG_MEMORYOP_EA, i, IARG_MEMORYREAD_SIZE, 
						IARG_BOOL, rip_deref, IARG_BOOL, true, 
						IARG_END);
			}
			if (INS_MemoryOperandIsWritten(ins, i)) {
				INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR) record_deref,
						IARG_MEMORYOP_EA, i, IARG_MEMORYWRITE_SIZE, 
						IARG_BOOL, rip_deref, IARG_BOOL, false,
						IARG_END);
			}
		}

		line++;
  }

	// If everything went according to plan, line should point to the end of the x64asm offset
	// table. I know for a fact this isn't always happening thanks to instructions like repz retq
	// and data32 ... let's deal with these as they come up.
  RTN_Close(fxn);
}

/* ============================================================================================= */

VOID Fini(INT32 code, VOID* v) {

  // wait for children to finish
  while(wait(NULL) > 0) { }

	exit(0);
}

/* ============================================================================================= */
/* Main                                                                  */
/* ============================================================================================= */

BOOL child_setup(CHILD_PROCESS childProcess, VOID* value) {
  return TRUE;
}

int main(int argc, char* argv[]) {


	// Check usage
  if (PIN_Init(argc, argv)) {
    return Usage();
  }

	// Read number of testcases to emit
  tc_remaining_mutex_.unlock();
  tc_remaining_ = KnobMaxTc.Value();
  tc_remaining_mutex_.lock();

	// Read line number to begin recording on
	begin_line_ = KnobBeginLine.Value();
	// Read line numbers to stop recording on (we always stop on ret)
  {
    istringstream iss(KnobEndLines.Value());
    uint64_t inst;
    while (iss >> dec >> inst) {
      end_lines_.insert(inst);
    }
  }

  // Read function list
  if(KnobFunctionList.Value().size()) {
    ifstream ifs(KnobFunctionList.Value());
    string name;
    while(ifs >> name) {
      functions_.push_back(name);
      DEBUG_PINTOOL(cout << "Tracing " << name << endl;)
    }
  }
  {
    istringstream iss(KnobFxnName.Value());
    string name;
    while(iss >> name) {
      functions_.push_back(name);
      DEBUG_PINTOOL(cout << "Tracing " << name << endl;)
    }
  }

  // Instrument every function and emit a finishing routine
  PIN_InitSymbols();
  RTN_AddInstrumentFunction(routine_instrumentation, 0);
  PIN_AddFollowChildProcessFunction(child_setup, 0);
  PIN_AddFiniFunction(Fini, 0);

  // Never returns; we start in a state where nothing is being recorded
  PIN_StartProgram();

  return 0;
}

/* ============================================================================================= */
/* eof */
/* ============================================================================================= */
