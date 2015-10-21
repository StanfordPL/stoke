#!/usr/bin/ruby

require 'erb'
require 'fileutils'

tcs=ARGV[0].to_i
print "TCs=#{tcs}"
combination = [1..90].combination(tcs).to_a.sample

@training_set="\"{ #{combination.join(" ")} }\""

dir_name="ts_runs/#{tcs}_#{rand(10000)}"


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




