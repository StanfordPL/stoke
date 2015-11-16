#!/usr/bin/ruby

require 'erb'
require 'fileutils'

tcs=ARGV[0].to_i
print "TCs=#{tcs}"
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

dir_name="ts_runs/#{tcs}_#{rand(100000000)}"


Dir.mkdir(dir_name);

config_erb=IO.read("search.conf.erb")
renderer=ERB.new(config_erb)
config = renderer.result()

File.open("#{dir_name}/search.conf", "w+") do |f|
  f.write(config)
end

FileUtils.cp("target.s", dir_name)
FileUtils.cp("testcases", dir_name)

Dir.chdir(dir_name);

exec "stoke_search --config search.conf >trace 2>err_trace"




