#!/usr/bin/ruby

require 'fileutils'

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
  

  all.each do |bench|

    bench_dir = "#{folder}/#{bench}"
    FileUtils.mkdir_p bench_dir

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

