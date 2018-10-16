#!/usr/bin/ruby

@options = { 
  :target_bound => 18,
  :rewrite_bound => 4
}

@default_def_ins = "\"{ %rdi %rsi %rdx %rcx %r8 %r9 %rax %rbp %rsp %xmm0 %xmm1 %xmm2 %xmm3 %rbx %r8 %r9 %r10 %r11 %r12 %r13 %r14 %r15 }\""
@default_live_outs = "\"{ %rbx %rsp %rbp %r12 %r13 %r14 %r15 }\""

def print_usage
  puts "usage: ./demo.rb verify [options] <compiler1> <compiler2> <benchmark>"
  puts "       ./demo.rb verify-all [options] <list>"
  puts "       ./demo.rb verify-gcc [options] <list>"
  puts "       ./demo.rb verify-llvm [options] <list>"
  puts "       ./demo.rb check-tc-all"
  puts ""
  puts "Options:"
  puts ""
  puts "  --target-bound n"
  puts "  --rewrite-bound n"
  puts ""
end

def check_file(s)
  if !File.exist?(s) then
    print_usage
    puts "Could not find file #{s}"
    exit 1
  end
end
  
def validate_all(filename, compiler)
  File.readlines(filename).each do |line|
    benchmark = line.strip
    if compiler == :all or compiler == :gcc then
      validate "baseline", "gcc", benchmark, true
    end
    if compiler == :all or compiler == :llvm then
      validate "baseline", "llvm", benchmark, true
    end
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

  testcase_file = "testcases/256"
  check_file "#{compiler1}/#{benchmark}.s"
  check_file "#{compiler2}/#{benchmark}.s"
  check_file testcase_file
  check_file "rodata"

  while File.exist?("traces/#{name}")
    num = num+1
    name = "#{prefix}.#{num}"
  end

  stoke_args = [
    "--strategy ddec",
    "--obligation_checker postgres",
    "--postgres ~/stoke/bin/postgres",
    "--solver z3",
    "--alias_strategy flat",
    "--target #{compiler1}/#{benchmark}.s",
    "--rewrite #{compiler2}/#{benchmark}.s",
    "--testcases #{testcase_file}",
    "--rodata rodata",
    "--vector_invariants",
    "--heap_out",
#    "--stack_out",
    "--max_jumps 129000",
    "--live_out #{@default_live_outs}",
    "--def_in #{@default_def_ins}",
    "--target_bound #{@options[:target_bound]}",
    "--rewrite_bound #{@options[:rewrite_bound]}",
    "--assume \"(t_%rdi<=15)\"",
  ]

  puts "Recording data in traces/#{name}"
  io = "2> misc/#{name}.err | tee traces/#{name}"
  stoke_cmd = "stoke_debug_verify #{stoke_args.join(" ")}"
  time_cmd = "/usr/bin/time -o times/#{name} #{stoke_cmd} #{io}"

  File.open("misc/#{name}.cmd", 'w') do |file|
    file.write(stoke_cmd)
  end

  puts time_cmd
  if dofork
    Process.fork do
      `#{time_cmd}`
    end
  else
    `#{time_cmd}`
  end
end

def update_options
  n=1
  while ARGV[n].start_with?("-") do
    if ARGV[n] == "--target-bound" then
      n = n+1
      @options[:target_bound] = ARGV[n].to_i
    end
    if ARGV[n] == "--rewrite-bound" then
      n = n+1
      @options[:rewrite_bound] = ARGV[n].to_i
    end
    n = n+1
  end
  n
end

if ARGV[0] == "verify" then
  n = update_options
  if ARGV.size == n+3 then 
    validate ARGV[n], ARGV[n+1], ARGV[n+2]
  else
    print_usage
  end
elsif ARGV[0] == "verify-all" then
  n = update_options
  validate_all ARGV[n], :all
  while true do
    sleep 10
  end
elsif ARGV[0] == "verify-llvm" then
  n = update_options
  validate_all ARGV[n], :llvm
  while true do
    sleep 10
  end
elsif ARGV[0] == "verify-gcc" then
  n = update_options
  validate_all ARGV[n], :gcc
  while true do
    sleep 10
  end
elsif ARGV[0] == "check-tc-all" then
  check_all_testcases ARGV[1]
else
  print_usage
end
