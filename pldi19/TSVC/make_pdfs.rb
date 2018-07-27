#!/usr/bin/ruby

require 'fileutils'

FileUtils.mkdir_p("pdfs")
["gcc", "llvm", "baseline"].each do |compiler|
  File.readlines("benchmarks").each do |benchmark|
    benchmark = benchmark.strip
    puts "benchmark=#{benchmark} compiler=#{compiler}"
    `stoke debug cfg --target #{compiler}/#{benchmark}.s -o pdfs/#{benchmark}_#{compiler}.pdf`
  end
end

