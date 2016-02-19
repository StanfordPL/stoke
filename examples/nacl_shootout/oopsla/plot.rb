#!/usr/bin/ruby

require 'fileutils'
require_relative 'bench_config'

#### Here's what to do

def get_best(folder, benchmark)
  bench_log = "#{folder}/#{benchmark}/benchmark_log.csv"

  return 0 if not File.exist?(bench_log)

  ## Performance of the best rewrite
  best_index = nil
  best_speedup = nil
  best_value = 0
  target_value = nil

  File.open(bench_log).each do |line|
    split = line.split(",")
    id = split[0].to_i
    value = split[1].to_f

    if(value > best_value and id > 0)
      best_index = id
      best_value = value
    end

    if(id == 0)
      target_value = value
    end
  end


  ## Copy the best rewrite and the binary into the top directory
  if not best_index.nil? and not target_value.nil? then
    best_speedup = (best_value.to_f/target_value.to_f).round(3) unless target_value == 0
  else
    best_speedup = 0
  end

  best_speedup

end

def speedup_graph(folder)

  plot_src = "#{folder}/plots/srcs/speedup.dat"
  File.open(plot_src, "w") do |out|
    out.puts "Benchmark Optimization Translation \"Max Verified\""

    $benchmarks.each do |bench,data|
      opt = get_best(folder, "#{bench}-opt")
      trn = get_best(folder, "#{bench}-trans")
      out.puts "#{bench} #{opt} #{trn} #{[opt, trn].max}"
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
  folder = "results/#{$stamp}"

  if !File.exist?(folder)
    puts "Could not find folder: #{folder}"
    exit 1
  end

  FileUtils.mkdir_p "#{folder}/plots"
  FileUtils.mkdir_p "#{folder}/plots/srcs"

  speedup_graph(folder)


end

main

