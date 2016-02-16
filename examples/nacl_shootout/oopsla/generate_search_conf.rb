#!/usr/bin/ruby

### Per-Benchmark Settings

benchmarks = {
  "wcpcpy" => {
    :def_in         => "{ %rsp %rbp %r15 %rdi %rsi }",
    :live_out       => "{ %rax }",
    :training_set   => "{ 0 1 2 3 4 10 11 12 13 20 21 22 23 30 31 40 41 50 60 70 80 }",
    :test_set       => "{ 0 .. 20 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rsi", "%rdi"],
    :mem_ops_cons   => ["0x0", "0x4", "-0x4"],
    :alias_strategy => "string_antialias",
    :exec_timeout   => "30s",
  },
  "wcslen" => {
    :def_in         => "{ %rdi %r15 }",
    :live_out       => "{ %rax }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 222 160 200 }",
    :test_set       => "{ 0 .. 20 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi", "%rdx"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "flat",
    :exec_timeout   => "3m",
  },
  "wmemset" => {
    :def_in         => "{ %rdi %rsi %rdx %r15 }",
    :live_out       => "{ %rax }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi", "%r8"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcsnlen" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :live_out       => "{ %rax }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 222 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rax", "%rdi"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wmemcmp" => {
    :def_in         => "{ %rdi %rsi %rdx %r15 }",
    :live_out       => "{ %rax }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi", "%rsi"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcschr" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :live_out       => "{ %rax }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rax"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  }
}

### Global Settings

@verify_timeout = "30m"
@cycle_timeout = 200000
@repetitions = 20


@always_preserve = [
  "%r15",
  "%xmm0",
  "%xmm1",
  "%xmm2",
  "%xmm3",
  "%xmm4",
  "%xmm5",
  "%xmm6",
  "%xmm7",
  "%xmm8",
  "%xmm9",
  "%xmm10",
  "%xmm11",
  "%xmm12",
  "%xmm13",
  "%xmm14",
  "%xmm15"
]

@blacklist = [
  "prefetch*",
  "cmc",
  "stc",
  "clc",
  "lfence",
  "leaveq",
  "mfence",
  "sfence",
  "cbtw",
  "clt*",
  "cld",
  "crc32*",
  "cwt*",
  "pause",
  "imul*",
  "emms",
  "set*",
  "cmpxchg*",
  "adc*",
  "sbb*",
  "xchg*",
  "idiv*",
  "xadd*",
  "rol*",
  "rcl*",
  "ror*",
  "rcr*",
  "bswap",
  "div*",
  "ver*",
  "bsr*",
  "bsf*",
  "mul*",
  "btr*",
  "bts*",
  "bt*",
  "cmp*",
  "test*",
  "j*",
  "ud2",
  "cqt*",
  "shrd*"
]


def make_list(list)
  s = "\"{ "
  list.each do |val|
    s = s + "#{val} "
  end
  s = s + "}\""
  return s
end


def print_benchmark(name, data)

  if (not Dir.exists?(name))
    Dir.mkdir(name)
  end

  mem_ops = []
  data[:mem_ops_cons].each do |cons|
    data[:mem_ops_regs].each do |regs|
      mem_ops.push("#{cons}(%r15,#{regs})")
    end
  end

  File.open("#{name}/verify.sh", 'w') do |file|
    file.write("#!/bin/bash\n");
    file.write("\n")
    file.write("cd $1\n")
    file.write("for F in *.s; do\n")
    file.write("  echo -n $F >> verify_times\n")
    file.write("  echo -n ',' >> verify_times\n")
    file.write("  /usr/bin/time --format '%e' --append -o verify_times  \\\n")
    file.write("    timeout #{@verify_timeout} stoke debug verify \\\n")
    file.write("    --target ../target.s \\\n")
    file.write("    --rewrite $F \\\n")
    file.write("    --strategy ddec \\\n")
    file.write("    --alias_strategy #{data[:alias_strategy]} \\\n")
    file.write("    --def_in '#{data[:def_in]}' \\\n")
    file.write("    --live_out '#{data[:live_out]}' \\\n")
    file.write("    --testcases ../testcases \\\n")
    file.write("    --test_set '#{data[:test_set]}' \\\n")
    file.write("    --heap_out \\\n")
    file.write("    --sound_nullspace \\\n")
    file.write("    --no_ddec_bv \\\n")
    file.write("    --verify_nacl \\\n")
    file.write("    --solver z3 \\\n")
    file.write("    --result_file verify_times\n")
    file.write("done\n")
  end 
  File.chmod(0755, "#{name}/verify.sh")


  File.open("#{name}/search.conf", 'w') do |file|

    file.write("## Transforms\n")
    file.write("--add_nops_mass 1\n")
    file.write("--delete_mass 1\n")
    file.write("--opcode_width_mass 1\n")
    file.write("\n")

    file.write("## Search\n")
    file.write("--cycle_timeout #{@cycle_timeout}\n")
    file.write("--timeout_iterations #{@cycle_timeout*@repetitions}\n")
    file.write("--timeout_seconds 0\n")
    file.write("--init target\n")
    file.write("--target target.s\n")
    file.write("--verify_all\n")
    file.write("\n")

    file.write("## Cost\n")
    file.write("--restricted_reg_penalty 100\n")
    file.write("--cost \"correctness*1000000 + (nacl2 <= 5)*nacl2 + (nacl2 > 5)*nacl2*25 + measured\"\n")
    file.write("--correctness \"nacl2+correctness == 0\"\n")
    file.write("\n")

    file.write("## Input/Output\n")
    file.write("--def_in \"#{data[:def_in]}\"\n")
    file.write("--live_out \"#{data[:live_out]}\"\n")
    file.write("--heap_out\n")
    file.write("\n")

    file.write("## Testcases\n")
    file.write("--testcases testcases\n")
    file.write("--training_set \"#{data[:training_set]}\"\n")
    file.write("\n")

    file.write("## Transform Pool Options\n")
    file.write("--cpu_flags \"{ }\"\n")
    file.write("--opc_blacklist #{make_list(@blacklist)}\n")
    file.write("--opc_whitelist \"{ }\"\n")
    file.write("--validator_must_support\n")
    file.write("--preserve_regs #{make_list([@always_preserve, data[:preserve_regs]].flatten)}\n")
    file.write("--mem_ops #{make_list(mem_ops)}\n")
    file.write("\n")

    file.write("## Verification\n")
    file.write("--strategy \"hold_out,bounded\"\n")
    file.write("--bound 2\n")
    file.write("--alias_strategy #{data[:alias_strategy]}\n")
    file.write("\n")

    file.write("## Miscelaneous\n")
    file.write("--out result.s\n")
    file.write("--statistics_interval 25000\n")
    file.write("--postprocessing nacl\n")
    file.write("\n")

    
  end

end

benchmarks.each { |key, data|
  print_benchmark(key, data)
}

