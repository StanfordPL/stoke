#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

#include "src/args/code.h"
#include "src/args/reg_set.h"
#include "src/args/testcases.h"
#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input program:");

auto& target = FileArg<Code, CodeReader, CodeWriter>::create("target")
	.usage("<path/to/file>")
	.description("Target code")
	.default_val({{RET}});

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
	.usage("{ rax rsp ... }")
	.description("Registers defined on entry")
	.default_val(RegSet::linux_caller_save());

auto& h2 = Heading::create("Input state:");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
	.usage("<path/to/file>")
	.description("Testcases")
	.default_val({CpuState()});

auto& idx = ValueArg<size_t>::create("index")
  .usage("<int>")
  .description("Testcase index")
  .default_val(numeric_limits<size_t>::max());

auto& h3 = Heading::create("Sandboxing options:");

auto& sandbox_loops = FlagArg::create("sandbox_loops")
	.description("Report code with infinite loops");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
  .usage("<int>")
  .description("Maximum jumps before exit due to infinite loop")
  .default_val(1024);

auto& sandbox_abi = FlagArg::create("sandbox_abi")
	.description("Report x64 abi violations");

auto& h4 = Heading::create("Debugging options:");
	
auto& debug = FlagArg::create("debug")
  .alternate("d")
	.description("Debug mode, equivalent to --breakpoint 0"); 
	
auto& breakpoint = ValueArg<int>::create("breakpoint")
	.usage("<line>")
	.description("Set breakpoint")
	.default_val(-1);

void callback(size_t line, const CpuState* cs, void* arg) { 
	auto stepping = (bool*) arg;

  cout << "Error Code: " << (int)cs->code << endl;
  cout << endl;
	cout << *cs << endl; 
	cout << endl;
	cout << target.value()[line] << endl;
	cout << endl;

	if ( line != breakpoint && *stepping == false )
		return;

	auto key = ' ';
	while ( key != 'c' && key != 's' && key != 'd' ) {
		cout << "(l)ist, (c)ontinue, (s)tep, (d)isable, or (q)uit: ";
		cin >> key;
		cout << endl;

		switch ( key ) {
			case 'l':
				for ( size_t i = 0, ie = target.value().size(); i < ie; ++i )
					cout << (i == line ? "-> " : "   ") << target.value()[i] << endl;
				cout << endl;
				break;
			case 'c':
				*stepping = false;
				break;
			case 's':
				*stepping = true;
				break;
			case 'd':
				breakpoint.value() = numeric_limits<uint64_t>::max();
				*stepping = false;
				break;
			case 'q':
				exit(0);
			default:
				break;
		}
	}	
}

int main(int argc, char** argv) {
	CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

	Sandbox sb;
	sb.set_sandbox_loops(sandbox_loops)
		.set_sandbox_abi(sandbox_abi)
    .set_max_jumps(max_jumps)
    .set_input_reg_mask(def_in)
    .set_input_stack_mask(true)
    .set_input_heap_mask(true)
    .set_read_only_mem(false)
		.insert_input(testcases.value()[min(testcases.value().size()-1, idx.value())]);

	if ( debug ) 
		breakpoint.value() = 0;
	auto stepping = false;
	for ( size_t i = 0, ie = target.value().size(); i < ie; ++i )
		sb.insert_before(i, callback, &stepping);

	sb.run({target, def_in, RegSet::empty()});

	const auto result = *(sb.result_begin());
	if ( result.code != ErrorCode::NORMAL ) {
		cout << "Function exited abnormally with error code: ";
    cout << (int)result.code << endl;
	} else {
		cout << "Function exited normally with Final CPU State: " << endl;
		cout << endl;
		cout << result;
		cout << endl;
	}
	cout << endl;

	return 0;
}
