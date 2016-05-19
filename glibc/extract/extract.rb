#!/usr/bin/ruby

require 'fileutils'
require '../util/common.rb'

#check_repoistory

### get libc versions

libc_versions = []

Dir.foreach("../build") do |name|
  if name.match(/glibc-[0-9.]*/) then
    libc_versions.push(name)
  end
end

### Do the extraction for production versions ###

libc_versions.each do |version|

  FileUtils.mkdir_p("output/#{version}")

  @benchmark_data.each do |name,info| 
    next if info[:versions].nil?
    next if info[:enabled] == false

    ## Extract each assembly
    info[:versions].each do |assm|
      in_file = "../build/#{version}/#{assm[:archive]}"
      out_file = "output/#{version}/#{name}"
      function = assm[:function]
      puts "Working on #{in_file}; looking for #{function}; writing to #{out_file}"
      puts `stoke extract -i #{in_file} -o #{out_file} --function #{function} 2>/dev/null`
      FileUtils.mv("output/#{version}/#{name}/#{function}.s", "output/#{version}/#{name}/#{assm[:name]}.s")
    end
  end

end





