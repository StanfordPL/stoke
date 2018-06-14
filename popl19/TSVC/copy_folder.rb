#!/usr/bin/ruby

require 'fileutils'


def copy_folder_best(from_dirname, to_dirname)

  mapping = {}

  # go through each file
  # create a map from prefixes -> best number
  Dir.foreach(from_dirname) do |item|
    data = /^(.*).([0-9]+)$/.match(item)
    next if data.nil?

    key = data[1]
    oldval = mapping[key]
    val = data[2].to_i
    if oldval.nil?
      mapping[key] = val
    else
      mapping[key] = [val, oldval].max
    end
  end

  # do the copy
  FileUtils.mkdir_p(to_dirname)
  mapping.each do |prefix, suffix| 
    FileUtils.copy("#{from_dirname}/#{prefix}.#{suffix}", "#{to_dirname}/#{prefix}")
    FileUtils.copy("#{from_dirname}/#{prefix}.#{suffix}.err", "#{to_dirname}/#{prefix}.err")
  end 
end

if ARGV.size != 2 then
  puts "Usage: ./copy_folder <src> <dest>"
  exit 1
end
copy_folder_best(ARGV[0], ARGV[1])

