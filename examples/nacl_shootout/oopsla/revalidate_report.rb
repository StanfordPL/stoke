#!/usr/bin/ruby

require 'fileutils'
require_relative 'bench_config'
require_relative 'jobs'

def main

  ## Setup logging facility
  if ARGV.length != 1 then
    puts "usage: ./jobmaster.rb <stamp>"
    exit 1
  end

  $stamp = ARGV[0]
  FileUtils.mkdir_p "results/#{$stamp}"

  data = {
    "flat" => { },
    "string" => { },
  }

  times = {
    "flat" => 0,
    "string" => 0,
  }

  logfile = "results/#{$stamp}/revalidate.csv"
  File.open(logfile).each do |line|
    pieces = line.split(",")
    model = pieces[3]
    status = pieces[4]
    time = pieces[5]
    
    if data[model][status].nil?
      data[model][status] = 1
    else
      data[model][status] = data[model][status] + 1
    end
    times[model] = (times[model] + time.to_f).round(2)
  end

  data.each do |model, values|
    puts "== #{model} =="
    total = 0
    values.each do |status, number|
      puts "#{status}: #{number}"
      total = total + number
    end
    puts "total: #{total}"
    puts "time: #{times[model]}"
    puts "avg: #{(times[model]/total).round(2)}"
    puts ""
  end

end

main

