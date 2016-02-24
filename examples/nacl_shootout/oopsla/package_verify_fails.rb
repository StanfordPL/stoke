#!/usr/bin/ruby

require 'fileutils'
require_relative 'bench_config'

#### Here's what to do

def package(folder, bench, mode, data)
  bench_dir = "#{folder}/#{bench}-#{mode}"
  FileUtils.mkdir_p bench_dir

  FileUtils.cp("#{bench}/target.s", bench_dir)
  FileUtils.cp("#{bench}/testcases", bench_dir)
  FileUtils.cp("results/#{$stamp}/#{bench}-#{mode}/verify.conf", bench_dir)
  FileUtils.cp("results/#{$stamp}/#{bench}-#{mode}/verification_log.csv", bench_dir)

  File.open("#{bench_dir}/verify.sh", 'w') do |script|
    script.puts("#!/bin/bash")
    script.puts("time stoke_debug_verify --config verify.conf\\")
    script.puts("")
  end
  File.chmod(0755, "#{bench_dir}/verify.sh")

  filename = "results/#{$stamp}/#{bench}-#{mode}/verification_log.csv"
  if File.exist?(filename) then
    File.open(filename).each do |line|
      splits = line.split(",") 
#next if splits[1] == "verified"
      id = splits[0]

      FileUtils.cp("results/#{$stamp}/#{bench}-#{mode}/search/outputs/#{id}.s", bench_dir)
    end
  end

end

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
    package(folder, bench, "opt", data)
    package(folder, bench, "trans", data)
  end

  %x(tar -cvf #{folder}.tar #{folder}/*)

end

main

