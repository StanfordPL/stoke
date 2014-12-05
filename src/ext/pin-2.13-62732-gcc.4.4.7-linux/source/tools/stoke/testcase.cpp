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
#include <vector>
#include <unordered_map>
#include <unordered_set>

#include "pin.H"

#include "src/state/cpu_states.h"

using namespace std;
using namespace stoke;

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

/* ============================================================================================= */
/* Global Variables */
/* ============================================================================================= */

// Max number of testcases to emit
int tc_remaining_;
// Line to begin recording on in the target function
uint64_t begin_line_;
// Lines to stop recording on in the target function (we always stop on ret)
unordered_set<uint64_t> end_lines_;

// Internal state associated with the current testcase
bool recording_;
size_t stack_frame_;
size_t call_depth_;
unordered_set<uint64_t> stack_valids_;
unordered_map<uint64_t, uint8_t> stack_defs_;
unordered_set<uint64_t> heap_valids_;
unordered_map<uint64_t, uint8_t> heap_defs_;
// The set of testcases so far accumulated (last is under construction)
CpuStates tcs_;
// Target ostream
ostream* os_;

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

VOID unsupported_check() {
	// If control hits here and we're recording, we need to quit
	if (recording_) {
		cout << "Encountered an unsupported instruction while recording!" << endl;
		exit(1);
	}
}

/* ============================================================================================= */

VOID update_state(ADDRINT rsp) {
	// Reset internal state if we're not recording; we might be about to start
	if (!recording_) {
		stack_frame_ = rsp;
		call_depth_ = 0;

		stack_valids_.clear();
		stack_defs_.clear();

		heap_valids_.clear();
		heap_defs_.clear();
	}
	// Otherwise, we've jumped into the target function while recording; increment the call counter
	else {
		call_depth_++;
	}
}

/* ============================================================================================= */

VOID begin_tc(ADDRINT rax, ADDRINT rbx, ADDRINT rcx, ADDRINT rdx,
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
  if (tc_remaining_ == 0 || recording_) {
    return;
  }
	// Otherwise, we're starting recording right now
	recording_ = true;
	tcs_.push_back(CpuState());
	auto& tc = tcs_.back();

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
	// Record RFLAGS
	for (size_t i = 0, ie = tc.rf.size(); i < ie; ++i) {
		tc.rf.set(i, (rflags >> i) & 0x1);
	}
}

/* ============================================================================================= */

VOID record_read(ADDRINT rip, VOID* addr, UINT32 size) {
	// Nothing to do here if we're not recording
  if (!recording_) {
    return;
  }

  for (size_t i = 0; i < size; ++i) {
    uint64_t ptr = (uint64_t)addr + i;
    if (ptr >= (stack_frame_ - KnobMaxStack.Value())) {
      if (stack_valids_.find(ptr) == stack_valids_.end()) {
        stack_valids_.insert(ptr);
        stack_defs_[ptr] = *((uint8_t*)ptr);
      }
    } else {
      if (heap_valids_.find(ptr) == heap_valids_.end()) {
        heap_valids_.insert(ptr);
        heap_defs_[ptr] = *((uint8_t*)ptr);
      }
    }
  }
}

/* ============================================================================================= */

VOID record_write(ADDRINT rip, VOID* addr, UINT32 size) {
	// Nothing to do here if we're not recording
  if (!recording_) {
    return;
  }

  for (size_t i = 0; i < size; ++i) {
    uint64_t ptr = (uint64_t)addr + i;
    if (ptr >= (stack_frame_ - KnobMaxStack.Value())) {
      stack_valids_.insert(ptr);
    } else {
      heap_valids_.insert(ptr);
    }
  }
}

/* ============================================================================================= */

VOID end_tc() {
	// Nothing to do if we're not recording
	if (!recording_) {
		return;
	}
	// If we aren't at the top of the call stack, just decrement and return
	if (call_depth_ > 0) {
		call_depth_--;
		return;
	}

	// Otherwise, we're done. Finish recording this testcase	
	auto& tc = tcs_.back();

  uint64_t stack_min = 0xffffffffffffffff;
  uint64_t stack_max = 0;
  for (const auto addr : stack_valids_) {
    stack_min = min(stack_min, addr);
    stack_max = max(stack_max, addr);
  }

	const auto default_stack = 0x7000000000000000;
	const auto stack_base = stack_valids_.empty() ? default_stack : stack_min;
	const auto stack_size = stack_valids_.empty() ? 0 : stack_max - stack_min + 1;
	tc.stack.resize(stack_base, stack_size);

  for (const auto addr : stack_valids_) {
    tc.stack.set_valid(addr, true);
  }
  for (const auto& def : stack_defs_) {
    tc.stack.set_defined(def.first, true);
    tc.stack[def.first] = def.second;
  }

  uint64_t heap_min = 0xffffffffffffffff;
  uint64_t heap_max = 0;
  for (const auto addr : heap_valids_) {
    heap_min = min(heap_min, addr);
    heap_max = max(heap_max, addr);
  }

	const auto default_heap = 0;
	const auto heap_base = heap_valids_.empty() ? default_heap : heap_min;
	const auto heap_size = heap_valids_.empty() ? 0 : heap_max - heap_min + 1;
	tc.heap.resize(heap_base, heap_size);

  for (const auto addr : heap_valids_) {
    tc.heap.set_valid(addr, true);
  }
  for (const auto& def : heap_defs_) {
    tc.heap.set_defined(def.first, true);
    tc.heap[def.first] = def.second;
  }

	// Stop recording and decrement the quota
	recording_ = false;
  tc_remaining_--;
}

/* ============================================================================================= */

VOID emit_start(INS& ins) {
	INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)begin_tc,
                 IARG_REG_VALUE, REG_RAX, IARG_REG_VALUE, REG_RBX,
                 IARG_REG_VALUE, REG_RCX, IARG_REG_VALUE, REG_RDX,
                 IARG_REG_VALUE, REG_R8,  IARG_REG_VALUE, REG_R9,
                 IARG_REG_VALUE, REG_R10, IARG_REG_VALUE, REG_R11,
                 IARG_REG_VALUE, REG_R12, IARG_REG_VALUE, REG_R13,
                 IARG_REG_VALUE, REG_R14, IARG_REG_VALUE, REG_R15,
                 IARG_REG_VALUE, REG_RSP, IARG_REG_VALUE, REG_RBP,
                 IARG_REG_VALUE, REG_RSI, IARG_REG_VALUE, REG_RDI,
                 IARG_REG_REFERENCE, REG_YMM0,  IARG_REG_REFERENCE, REG_YMM1,
                 IARG_REG_REFERENCE, REG_YMM2,  IARG_REG_REFERENCE, REG_YMM3,
                 IARG_REG_REFERENCE, REG_YMM4,  IARG_REG_REFERENCE, REG_YMM5,
                 IARG_REG_REFERENCE, REG_YMM6,  IARG_REG_REFERENCE, REG_YMM7,
                 IARG_REG_REFERENCE, REG_YMM8,  IARG_REG_REFERENCE, REG_YMM9,
                 IARG_REG_REFERENCE, REG_YMM10, IARG_REG_REFERENCE, REG_YMM11,
                 IARG_REG_REFERENCE, REG_YMM12, IARG_REG_REFERENCE, REG_YMM13,
                 IARG_REG_REFERENCE, REG_YMM14, IARG_REG_REFERENCE, REG_YMM15,
								 IARG_REG_VALUE, REG_RFLAGS,
                 IARG_END);
}

/* ============================================================================================= */

VOID emit_stop(INS& ins) {
  INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)end_tc, IARG_END);
}

/* ============================================================================================= */

VOID rtn(RTN fxn, VOID* v) {
  RTN_Open(fxn);

	// Is this the target function?
	bool is_target = RTN_Name(fxn) == KnobFxnName.Value();

	// Whenever we hit the target, if we're not recording, we need to reset internal state
	if (is_target) {
		RTN_InsertCall(fxn, IPOINT_BEFORE, (AFUNPTR)update_state, IARG_REG_VALUE, REG_RSP, IARG_END);
	}

	size_t line = 1;
  for (INS ins = RTN_InsHead(fxn); INS_Valid(ins); ins = INS_Next(ins)) {
		// Potentially start recording a new testcase
		if (is_target && (line == begin_line_)) {
			emit_start(ins);
		}
		// Likewise, potentially it's time to stop
		if (is_target && ((end_lines_.find(line) != end_lines_.end()) || INS_IsRet(ins))) {
			emit_stop(ins);
		}
		line++;

    // Find memory operand (throw an error if we find an instruction that takes 2+)
    UINT32 memOpCount = INS_MemoryOperandCount(ins);
		if (memOpCount >= 2) {
			INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) unsupported_check, IARG_END);
		}

    // Record memory references
    if (memOpCount > 0 && INS_MemoryOperandIsRead(ins, 0))
      INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) record_read,
                     IARG_INST_PTR, IARG_MEMORYREAD_EA, IARG_MEMORYREAD_SIZE, IARG_END);
    if (memOpCount > 0 && INS_MemoryOperandIsWritten(ins, 0))
      INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) record_write,
                     IARG_INST_PTR, IARG_MEMORYWRITE_EA, IARG_MEMORYWRITE_SIZE, IARG_END);
  }

  RTN_Close(fxn);
}

/* ============================================================================================= */

VOID Fini(INT32 code, VOID* v) {
	// We used to throw an error here if we attempted to terminate while recording.
	// This is plausible, though. Some programs terminate without ever returning from a call.

	// We're all set; print everything to the target file
	tcs_.write_text(*os_);
	if (os_ == &cout) {
		*os_ << endl;
	}
}

/* ============================================================================================= */
/* Main                                                                  */
/* ============================================================================================= */

int main(int argc, char* argv[]) {
	// Check usage
  if (PIN_Init(argc, argv)) {
    return Usage();
  }

	// Read number of testcases to emit
  tc_remaining_ = KnobMaxTc.Value();

	// Read line number to begin recording on
	begin_line_ = KnobBeginLine.Value();
	// Read line numbers to stop recording on (we always stop on ret)
	istringstream iss(KnobEndLines.Value());
	uint64_t inst;
	while ( iss >> dec >> inst ) {
		end_lines_.insert(inst);
	}

	// Either we're writing to a file, or if none is provided, cout
  os_ = KnobOutFile.Value() == "" ? &cout : new ofstream(KnobOutFile.Value().c_str());

	// Instrument every function and emit a finishing routine
  PIN_InitSymbols();
  RTN_AddInstrumentFunction(rtn, 0);
  PIN_AddFiniFunction(Fini, 0);

  // Never returns; we start in a state where nothing is being recorded
	recording_ = false;
  PIN_StartProgram();

  return 0;
}

/* ============================================================================================= */
/* eof */
/* ============================================================================================= */
