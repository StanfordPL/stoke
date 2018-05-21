#!/usr/bin/ruby

@default_def_ins = "\"{ %rdi %rsi %rdx %rcx %r8 %r9 }\""

def print_usage
  puts "usage: ./demo.rb verify <compiler1> <compiler2> <benchmark>"
  puts "                 tcgen  <compiler1> <compiler2> <benchmark>"
  puts ""
end

def check_file(s)
  if !File.exist?(s) then
    print_usage
    puts "Could not find file #{s}"
    exit 1
  end
end


def tcgen(compiler1, compiler2, benchmark) 

  name = "#{benchmark}_#{compiler1}_#{compiler2}"

  check_file "#{compiler1}/#{benchmark}.s"
  check_file "#{compiler2}/#{benchmark}.s"


  [compiler1, compiler2].each do |compiler|
    stoke_cmd = "stoke_tcgen --target #{compiler}/#{benchmark}.s "\
                " -o testcases/#{benchmark}_#{compiler}"
                " --bound 4"\
                " --def_in #{@default_def_ins}"\
                " --live_out \"{ }\""\
                " --mutants 4"
    `#{stoke_cmd}`
  end

  `cat testcases/#{benchmark}_#{compiler1} testcases/#{benchmark}_#{compiler2} > testcases/#{name}`
end

def randomgen(compiler1, compiler2, benchmark) 

  name = "#{benchmark}_#{compiler1}_#{compiler2}"

  check_file "#{compiler1}/#{benchmark}.s"
  check_file "#{compiler2}/#{benchmark}.s"


  [compiler1, compiler2].each do |compiler|
    stoke_cmd = "stoke_testcase --target #{compiler}/#{benchmark}.s "\
                " -o testcases/#{benchmark}_#{compiler}"
                " --max_memory 1000000"\
                " --max_jumps 1000000"\
                " --max_attempts 1000"\
                " --max_testcases 100"\
                " --def_in #{@default_def_ins}"\
                " --live_out \"{ }\""
    `#{stoke_cmd}`
  end

  `cat testcases/#{benchmark}_#{compiler1} testcases/#{benchmark}_#{compiler2} > testcases/#{name}`
end



def validate(compiler1, compiler2, benchmark) 

  num = 0
  prefix = "#{benchmark}_#{compiler1}_#{compiler2}"
  name = "#{prefix}.#{num}"

  check_file "#{compiler1}/#{benchmark}.s"
  check_file "#{compiler2}/#{benchmark}.s"
  check_file "testcases/#{prefix}"


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
    "--testcases testcases/#{prefix}",
    "--heap_out",
    "--stack_out",
    "--live_out \"{ }\"",
    "--def_in \"{ }\"",
    "--target_bound 10",
    "--rewrite_bound 2",
    ">traces/#{name}"
  ]

  stoke_cmd = "stoke_debug_verify #{stoke_args.join(" ")}"
  time_cmd = "/usr/bin/time -o times/#{name} #{stoke_cmd}"
end

if ARGV[0] == "verify" then
  if ARGV.size == 4 then 
    validate ARGV[1], ARGV[2], ARGV[3]
  else
    print_usage
  end
elsif ARGV[0] == "tcgen" then
  if ARGV.size == 4 then 
    tcgen ARGV[1], ARGV[2], ARGV[3]
  else
    print_usage
  end
elsif ARGV[0] == "randomgen" then
  if ARGV.size == 4 then 
    randomgen ARGV[1], ARGV[2], ARGV[3]
  else
    print_usage
  end
end
