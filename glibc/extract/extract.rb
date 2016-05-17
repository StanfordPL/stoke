#!/usr/bin/ruby

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
  @benchmark_data.each do |name,info| 
    `stoke extract -i ../build/#{version}/libc.so -o output/#{version}/#{name} --function #{name}`
    File.mv("output/#{version}/#{name}/#{name.s}", "output/#{version}/#{name}/production.s")
  end
end





