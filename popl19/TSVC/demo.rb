#!/usr/bin/ruby

@default_def_ins = "\"{ %rdi %rsi %rdx %rcx %r8 %r9 }\""

def print_usage
  puts "usage: ./demo.rb verify <compiler1> <compiler2> <benchmark>"
  puts ""
end

def check_file(s)
  if !File.exist?(s) then
    print_usage
    puts "Could not find file #{s}"
    exit 1
  end
end


def validate(compiler1, compiler2, benchmark) 

  num = 0
  prefix = "#{benchmark}_#{compiler1}_#{compiler2}"
  name = "#{prefix}.#{num}"

  testcase_file = "testcases/8"
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
    "| tee traces/#{name}"
  ]

  puts "Recording data in traces/#{name}"
  stoke_cmd = "stoke_debug_verify #{stoke_args.join(" ")}"
  time_cmd = "/usr/bin/time -o times/#{name} #{stoke_cmd}"
  `#{time_cmd}`
end

if ARGV[0] == "verify" then
  if ARGV.size == 4 then 
    validate ARGV[1], ARGV[2], ARGV[3]
  else
    print_usage
  end
else
  print_usage
end
