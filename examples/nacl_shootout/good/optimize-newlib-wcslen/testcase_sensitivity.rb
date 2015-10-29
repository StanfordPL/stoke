#!/usr/bin/ruby

require 'erb'
require 'fileutils'

dir=ARGV[0]
tcs=ARGV[1].to_i
print "TCs=#{tcs}"

while true do

  available = []
  combination = []

  (1..90).each do |n|
    available.push(n)
  end

  (1..tcs).each do |m|
    item = available.sample
    available.delete(item)
    combination.push(item)
  end

  @training_set="\"{ #{combination.join(" ")} }\""
  @size = tcs

  dir_name="#{dir}/#{tcs}_#{rand(100000000)}"


  Dir.mkdir(dir_name);

  config_erb=IO.read("search.conf.erb")
  renderer=ERB.new(config_erb)
  config = renderer.result()

  File.open("#{dir_name}/search.conf", "w+") do |f|
    f.write(config)
  end

  FileUtils.cp("Makefile", dir_name)
  FileUtils.cp("target.s", dir_name)
  FileUtils.cp("testcases", dir_name)
  FileUtils.cp("binary", dir_name)

  Dir.chdir(dir_name);

  system "stoke_search --config search.conf >trace 2>err_trace"
  system "make benchmark > benchmark_data"

  Dir.chdir("../..");


end
