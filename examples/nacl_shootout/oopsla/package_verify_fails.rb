#!/usr/bin/ruby

require 'fileutils'
require_relative 'bench_config'

#### Here's what to do

def main

  ## Setup logging facility
  if ARGV.length != 1 then
    puts "usage: ./package_verify_fails.rb <stamp>"
    exit 1
  end

  $stamp = ARGV[0]
  folder = "#{$stamp}-ddec-failures"
  FileUtils.mkdir_p folder

  hard = ["strcpy", "wmemcmp", "wcscat"]
  often_fail = ["wmemset", "wcslen", "wcscpy", "wcsnlen"]
  others = ["wcpcpy", "wcschr", "strxfrm", "wcscmp", "wmemchr", "wcsrchr"]

  all = hard + often_fail + others
  doable = often_fail + others
  

  $benchmarks.each do |bench, data|

    bench_dir = "#{folder}/#{bench}"
    FileUtils.mkdir_p bench_dir

    FileUtils.cp("#{bench}/target.s", bench_dir)
    FileUtils.cp("#{bench}/testcases", bench_dir)

    File.open("#{bench_dir}/verify.sh", 'w') do |script|
      script.puts("#!/bin/bash")
      script.puts("time stoke_debug_verify \\")
      script.puts("   --target target.s \\")
      script.puts("   --rewrite $1.s \\")
      script.puts("   --testcases testcases \\")
      script.puts("   --strategy ddec \\")
      script.puts("   --test_set '#{data[:test_set]}' \\")
      script.puts("   --alias_strategy #{data[:alias_strategy]} \\")
      script.puts("   --heap_out \\")
      script.puts("   --sound_nullspace \\")
      script.puts("   --no_ddec_bv \\")
      script.puts("   --verify_nacl \\")
      script.puts("   --solver z3 \\")
      script.puts("   --def_in '#{data[:def_in]}' \\")
      script.puts("   --live_out '{ %rax }'")
      script.puts("")
    end
    File.chmod(0755, "#{bench_dir}/verify.sh")

    filename = "results/#{$stamp}/#{bench}/verification_log.csv"
    if File.exist?(filename) then
      File.open(filename).each do |line|
        splits = line.split(",") 
        next if splits[1] == "verified"
        id = splits[0]

        FileUtils.cp("results/#{$stamp}/#{bench}/search/outputs/#{id}.s", bench_dir)
      end
    end
  end

  %x(tar -cvf #{folder}.tar #{folder}/*)

end

main

