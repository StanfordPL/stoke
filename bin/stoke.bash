_stoke()
{
	local subcmd="extract replace search testcase debug benchmark \
								--help -h"
	local dbgcmd="cfg cost sandbox search state verify"
	local bmkcmd="cfg cost sandbox search state verify"

	local extract="--in -i --out -o \
	 							 --help -h"
	local replace="--in -i --rewrite --out -o \
	               --help -h"
	local search="--target --def_in --live_out --stack_out --heap_out \
	              --out -o \
								--testcases --shuffle_testcases --training_set --test_set \
								--distance --reduction --sse_width --sse_count --relax_reg --relax_mem \
									--misalign_penalty --sig_penalty --min_ulp \
								--perf --nesting_penalty \
								--abi_check --max_jumps \
								--flags --nop_percent --mem_read --mem_write --callee_save --preserve_regs \
								--instruction_mass --opcode_mass --operand_mass --local_swap_mass \
									--global_swap_mass --resize_mass --extension_mass \
								--timeout --timeout_itr --timeout_time --timeout_action --timeout_cycles 
									--statistics_interval --beta --max_instrs --init --current --best_yet
									--best_correct \
								--seed \
								--help -h"
	local testcase="--bin --args --out -o \
	                --max_tc \
									--fxn --begin_line --end_lines --max_stack \
	                --max_attempts --max_memory --target \
									--abi_check --max_jumps \
									--compress --decompress --in -i \
									--help -h"

	local cur=${COMP_WORDS[COMP_CWORD]}
	case $COMP_CWORD in
		# Auto-complete subcommands following stoke
		1)	
			COMPREPLY=( $(compgen -W "$subcmd" -- $cur) )
			;;
		# Auto-complete subcommand args
		2)
			case ${COMP_WORDS[1]} in
				debug)
					COMPREPLY=( $(compgen -W "$dbgcmd" -- $cur) )
					;;
				benchmark)
					COMPREPLY=( $(compgen -W "$bmkcmd" -- $cur) )
					;;
				extract)
					COMPREPLY=( $(compgen -W "$extract" -- $cur) )
					;;
				replace)
					COMPREPLY=( $(compgen -W "$replace" -- $cur) )
					;;
				search)
					COMPREPLY=( $(compgen -W "$search" -- $cur) )
					;;
				testcase)
					COMPREPLY=( $(compgen -W "$testcase" -- $cur) )
					;;
			esac
			;;
	esac
}

complete -F _stoke stoke
