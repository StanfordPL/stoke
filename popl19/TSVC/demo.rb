#!/usr/bin/ruby

@default_def_ins = "\"{ %rdi %rsi %rdx %rcx %r8 %r9 %rax %rbp %rsp %xmm0 %xmm1 %xmm2 %xmm3 %rbx %r8 %r9 %r10 %r11 %r12 %r13 %r14 %r15 }\""

def print_usage
  puts "usage: ./demo.rb verify <compiler1> <compiler2> <benchmark>"
  puts "       ./demo.rb verify-all <list>"
  puts "       ./demo.rb check-tc-all"
  puts ""
end

def check_file(s)
  if !File.exist?(s) then
    print_usage
    puts "Could not find file #{s}"
    exit 1
  end
end
  
def validate_all(filename)
  File.readlines(filename).each do |line|
    benchmark = line.strip
    validate "baseline", "gcc", benchmark, true
    validate "baseline", "llvm", benchmark, true
  end
  Process.waitall
end

def check_all_testcases(filename)
  File.readlines(filename).each do |line|
    benchmark = line.strip
    check_testcases 'baseline', benchmark, 'testcases/16'
    check_testcases 'gcc',      benchmark, 'testcases/16'
    check_testcases 'llvm',     benchmark, 'testcases/16'
  end
end

def check_testcases(compiler1, benchmark, tcfile)

  (0..15).each do |index|
    args = [
      "--testcases #{tcfile}",
      "--target #{compiler1}/#{benchmark}.s",
      "--index #{index}"
    ]

    stoke_cmd = "stoke_debug_sandbox #{args.join(" ")}"
    output = `#{stoke_cmd}`
#print output
    if output.include?("Control returned abnormally")
      puts "#{compiler1}/#{benchmark} BAD index=#{index}"
      return false
    end
      
  end
  puts "#{compiler1}/#{benchmark} GOOD"
  return true
end

def validate(compiler1, compiler2, benchmark, dofork=false) 
  puts "Running benchmark #{benchmark} with compilers #{compiler1}/#{compiler2}"

  num = 0
  prefix = "#{benchmark}_#{compiler1}_#{compiler2}"
  name = "#{prefix}.#{num}"

  testcase_file = "testcases/96"
  check_file "#{compiler1}/#{benchmark}.s"
  check_file "#{compiler2}/#{benchmark}.s"
  check_file testcase_file

  while File.exist?("traces/#{name}")
    num = num+1
    name = "#{prefix}.#{num}"
  end

  stoke_args = [
    "--strategy ddec",
    "--obligation_checker postgres",
    "--postgres ~/stoke/bin/postgres",
    "--target #{compiler1}/#{benchmark}.s",
    "--rewrite #{compiler2}/#{benchmark}.s",
    "--testcases #{testcase_file}",
    "--heap_out",
    "--stack_out",
    "--max_jumps 129000",
    "--live_out \"{ }\"",
    "--def_in #{@default_def_ins}",
    "--target_bound 10",
    "--rewrite_bound 2",
    "--assume \"t_%rdi<=16\"",
    "2> traces/#{name}.err",
    "| tee traces/#{name}"
  ]

  puts "Recording data in traces/#{name}"
  stoke_cmd = "stoke_debug_verify #{stoke_args.join(" ")}"
  time_cmd = "/usr/bin/time -o times/#{name} #{stoke_cmd}"

  print stoke_cmd
  if dofork
    Process.fork do
      `#{time_cmd}`
    end
  else
    `#{time_cmd}`
  end
end

if ARGV[0] == "verify" then
  if ARGV.size == 4 then 
    validate ARGV[1], ARGV[2], ARGV[3]
  else
    print_usage
  end
elsif ARGV[0] == "verify-all" then
  validate_all ARGV[1]
  while true do
    sleep 10
  end
elsif ARGV[0] == "check-tc-all" then
  check_all_testcases ARGV[1]
else
  print_usage
end
