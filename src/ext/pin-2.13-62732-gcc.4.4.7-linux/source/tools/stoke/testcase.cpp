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
#include <unordered_map>
#include <unordered_set>

#include "pin.H"

#include "../../../../cpputil/include/debug/stl_print.h"
#include "../../../../x64asm/include/x64asm.h"
#include "tools/ui/console.h"
#include "src/state/cpu_states.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

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
KNOB<string> KnobHexFile(KNOB_MODE_WRITEONCE, "pintool", "H", "", 
    "file containing hex offsets for x64asm's encoding of this binary");

/* ============================================================================================= */
/* Global Variables */
/* ============================================================================================= */

// Max number of testcases to emit
int tc_remaining_;
// Line to begin recording on in the target function
uint64_t begin_line_;
// Lines to stop recording on in the target function (we always stop on ret)
unordered_set<uint64_t> end_lines_;
// x64asm hex offset table for this binary
unordered_map<string, vector<uint64_t>> x64asm_offsets;
// Target ostream
ostream* os_;

// Global symbol table which we populate when instrumenting (callbacks reference this)
unordered_map<uint64_t, string> symbol_table_;

// Did we see the function the user wants to record for so far?
bool function_found = false;

// State associated with the current testcase
bool recording_;
size_t stack_frame_;
size_t call_depth_;
unordered_set<uint64_t> stack_valids_;
unordered_map<uint64_t, uint8_t> stack_defs_;
unordered_set<uint64_t> heap_valids_;
unordered_map<uint64_t, uint8_t> heap_defs_;
unordered_set<uint64_t> data_valids_;
unordered_map<uint64_t, uint8_t> data_defs_;

// The set of testcases so far accumulated (last is under construction)
CpuStates tcs_;

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

VOID update_state(ADDRINT rsp) {
	// Reset internal state if we're not recording; we might be about to start
	if (!recording_) {
		stack_frame_ = rsp;
		call_depth_ = 0;

		stack_valids_.clear();
		stack_defs_.clear();

		heap_valids_.clear();
		heap_defs_.clear();

		data_valids_.clear();
		data_defs_.clear();
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
	// Record RFLAGS --
	// Ordinarily we would use the Rflags API to avoid setting non-status flags.
	// We can skip that check here because this method is only ever called to load 
	// known good state from the cpu.
	for (size_t i = 0, ie = tc.rf.size(); i < ie; ++i) {
		tc.rf.set(i, (rflags >> i) & 0x1);
	}
}

/* ============================================================================================= */

VOID record_fxn(ADDRINT rip) {
	if (!recording_) {
		return;
	}

	const auto itr = symbol_table_.find(rip);
	if (itr == symbol_table_.end()) {
		Console::error(1) << "No symbol table information for function at address" << rip << endl;
	}
	Label l(itr->second);

	auto& tc = tcs_.back();
	if (!tc.sym_table.contains(l)) {
		tc.sym_table.insert(l, rip);
	}
}

/* ============================================================================================= */

VOID record_read(VOID* addr, UINT32 size, bool rip_deref, int64_t delta) {
	// Nothing to do here if we're not recording
  if (!recording_) {
    return;
  }

  for (size_t i = 0; i < size; ++i) {
    const auto ptr = (uint64_t)addr + i;
		if (rip_deref) {
			if (data_valids_.find(ptr + delta) == data_valids_.end()) {
				data_valids_.insert(ptr + delta);
				data_defs_[ptr + delta] = *((uint8_t*)(ptr));
			}
		} else if (ptr >= (stack_frame_ - KnobMaxStack.Value())) {
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

VOID record_write(VOID* addr, UINT32 size, bool rip_deref, int64_t delta) {
	// Nothing to do here if we're not recording
  if (!recording_) {
    return;
  }

  for (size_t i = 0; i < size; ++i) {
    const auto ptr = (uint64_t)addr + i;
		if (rip_deref) {
			data_valids_.insert(ptr+delta);
		} else if (ptr >= (stack_frame_ - KnobMaxStack.Value())) {
      stack_valids_.insert(ptr);
    } else {
      heap_valids_.insert(ptr);
    }
  }
}

/* ============================================================================================= */

VOID record_mem(uint64_t default_base, const unordered_set<uint64_t>& valids, 
		const unordered_map<uint64_t, uint8_t>& defs, Memory& mem) {
	// Compute bounds
  uint64_t min_addr = 0xffffffffffffffff;
  uint64_t max_addr = 0;
  for (const auto addr : valids) {
    min_addr = min(min_addr, addr);
    max_addr = max(max_addr, addr);
  }

	// Resize memory
	const auto base = valids.empty() ? default_base : min_addr;
	const auto size = valids.empty() ? 0 : max_addr - min_addr + 1;
	mem.resize(base, size);

	// Set values
  for (const auto addr : valids) {
    mem.set_valid(addr, true);
  }
  for (const auto& def : defs) {
    mem.set_defined(def.first, true);
    mem[def.first] = def.second;
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
	record_mem(0x700000000, stack_valids_, stack_defs_, tc.stack);
	record_mem(0x100000000, heap_valids_, heap_defs_, tc.heap);
	record_mem(0x000000000, data_valids_, data_defs_, tc.data);

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

	// State related to this function 
	bool is_target = RTN_Name(fxn) == KnobFxnName.Value();
	const auto fxn_rip = INS_Address(RTN_InsHead(fxn));
	
	// Lookup the x64asm hex offset table for this function
	// If we can't find an entry, we're probably off in a dynamic library. If so, skip
	const auto itr = x64asm_offsets.find(RTN_Name(fxn));
	if (itr == x64asm_offsets.end()) {
		RTN_Close(fxn);
		return;
	}
	const auto& x64asm_offset = itr->second;

	// Place this function in the global symbol table
	symbol_table_[fxn_rip] = string(".") + RTN_Name(fxn);
	// Potentially reset internal state if this is the target
	if (is_target) {
		RTN_InsertCall(fxn, IPOINT_BEFORE, (AFUNPTR)update_state, IARG_REG_VALUE, REG_RSP, IARG_END);
	}

	// Instrument every instruction (remember, we ignore labels and index from 1)
	size_t line = 1;
  for (INS ins = RTN_InsHead(fxn); INS_Valid(ins); ins = INS_Next(ins)) {
		// Potentially start recording a new testcase
		if (is_target && (line == begin_line_)) {
			emit_start(ins);
		}
		// Add this function into the current symbol table
		if (line == 1) {
			INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR) record_fxn, IARG_INST_PTR, IARG_END);
		}
		// Likewise, potentially it's time to stop
		if (is_target && ((end_lines_.find(line) != end_lines_.end()) || INS_IsRet(ins))) {
			emit_stop(ins);
		}

    // Record memory references
		const auto memOpCount = INS_MemoryOperandCount(ins);
		if (memOpCount > 0) {
			// If this is a rip-derefence, compute offset between this hex and x64asm hex
			const auto rip_deref = INS_RegRContain(ins, REG_INST_PTR) && !INS_IsCall(ins);
			const auto have_hex = line <= x64asm_offset.size();
			if (rip_deref && !have_hex) {
				Console::error(1) << "Missing hex offset information for rip dereference at " << RTN_Name(fxn) << ":" << line << endl;
			} 
			const auto x64asm_bytes = have_hex ? x64asm_offset[line-1] : 0;
			const int64_t delta = x64asm_bytes - (INS_NextAddress(ins) - fxn_rip);

			for (size_t i = 0; i < memOpCount; ++i) {
				if (INS_MemoryOperandIsRead(ins, i)) {
					INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR) record_read,
							IARG_MEMORYOP_EA, i, IARG_MEMORYREAD_SIZE, 
							IARG_BOOL, rip_deref, IARG_ADDRINT, delta, 
							IARG_END);
				}
				if (INS_MemoryOperandIsWritten(ins, i)) {
					INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR) record_write,
							IARG_MEMORYOP_EA, i, IARG_MEMORYWRITE_SIZE, 
							IARG_BOOL, rip_deref, IARG_ADDRINT, delta,
							IARG_END);
				}
			}
		}

		line++;
  }

	// If everything went according to plan, line should point to the end of the x64asm offset
	// table. I know for a fact this isn't always happening thanks to instructions like repz retq
	// and data32 ... let's deal with these as they come up.
  RTN_Close(fxn);
}

VOID ImageLoad(IMG img, VOID *v)
{
  auto target_name = KnobFxnName.Value();
  for( SEC sec= IMG_SecHead(img); !function_found && SEC_Valid(sec); sec = SEC_Next(sec) ) {
    for( RTN rtn= SEC_RtnHead(sec); !function_found && RTN_Valid(rtn); rtn = RTN_Next(rtn) ) {
      if (RTN_Name(rtn) == target_name) {
        function_found = true;
      }
    }
  }
}

/* ============================================================================================= */

VOID Fini(INT32 code, VOID* v) {
	// It's possible that we might still be recording here; don't check this as an error case.
	// Some programs terminate without returning.

  // Does the function we are looking for even exist?
  if (!function_found) {
    cerr << "ERROR: Function '" << KnobFxnName.Value() << "' not found in the binary.  Did you misspell its name?" << endl;
    exit(1);
  }

  if (tcs_.size() == 0) {
    cerr << "ERROR: failed to record any testcases." << endl;
    exit(1);
  }

	// Print everything to the target file
	tcs_.write_text(*os_);
	if (os_ == &cout) {
		*os_ << endl;
	}
	os_->flush();

	// Pin doesn't seem to like returning zero on exit. But if we're here, everything is okay.
	exit(0);
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
	// Read the contents of the x64asm offset file
	ifstream ifs(KnobHexFile.Value());
	ifs >> x64asm_offsets;

	// Either we're writing to a file, or if none is provided, cout
  os_ = KnobOutFile.Value() == "" ? &cout : new ofstream(KnobOutFile.Value().c_str());

	// Instrument every function and emit a finishing routine
  PIN_InitSymbols();
  RTN_AddInstrumentFunction(rtn, 0);
  PIN_AddFiniFunction(Fini, 0);
  IMG_AddInstrumentFunction(ImageLoad, 0);

  // Never returns; we start in a state where nothing is being recorded
	recording_ = false;
  PIN_StartProgram();

  return 0;
}

/* ============================================================================================= */
/* eof */
/* ============================================================================================= */
