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

  opts = []
  trans = []
  maxes = []

  plot_src = "#{folder}/plots/srcs/performance.dat"
  File.open(plot_src, "w") do |out|
    out.puts "Benchmark Optimization Translation \"Max Verified\""

    $benchmarks.each do |bench,data|
      opt = get_best(folder, "#{bench}-opt")
      trn = get_best(folder, "#{bench}-trans")
      max = [opt, trn, 1].max
      opts.push(opt)
      trans.push(trn)
      maxes.push(max)
      out.puts "#{bench} #{opt} #{trn} #{max}"
    end
  end

  opt_quarts = quartiles(opts)
  tran_quarts = quartiles(trans)
  max_quarts = quartiles(maxes)
  File.open("#{folder}/plots/srcs/improvements.dat", "w") do |out|
    out.puts "BestSpeedup-Mean  #{mean(maxes)}" 
    out.puts "Optimization-Mean #{mean(opts)}" 
    out.puts "Transformation-Mean #{mean(trans)}" 

    out.puts "BestSpeedup-Min  #{max_quarts[0]}" 
    out.puts "Optimization-Min #{opt_quarts[0]}" 
    out.puts "Transformation-Min #{tran_quarts[0]}" 

    out.puts "BestSpeedup-Q1  #{max_quarts[1]}" 
    out.puts "Optimization-Q1 #{opt_quarts[1]}" 
    out.puts "Transformation-Q1 #{tran_quarts[1]}" 

    out.puts "BestSpeedup-Median  #{max_quarts[2]}" 
    out.puts "Optimization-Median #{opt_quarts[2]}" 
    out.puts "Transformation-Median #{tran_quarts[2]}" 

    out.puts "BestSpeedup-Q3  #{max_quarts[3]}" 
    out.puts "Optimization-Q3 #{opt_quarts[3]}" 
    out.puts "Transformation-Q3 #{tran_quarts[3]}" 

    out.puts "BestSpeedup-Max  #{max_quarts[4]}" 
    out.puts "Optimization-Max #{opt_quarts[4]}" 
    out.puts "Transformation-Max #{tran_quarts[4]}" 
  end

  %x(cd #{folder}/plots/srcs; gnuplot performance.plot)
  FileUtils.cp("#{folder}/plots/srcs/performance.pdf", "#{folder}/plots")
end

def get_counts(folder, benchmark)


  search_success = 0
  ddec_success = 0

  ## Get number of successful DDEC runs
  if File.exist?("#{folder}/#{benchmark}/verification_log.csv")
    File.open("#{folder}/#{benchmark}/verification_log.csv").each do |line|
      pieces = line.split(",")
      ddec_success = ddec_success + 1 if pieces[1] == "verified"
    end
  end

  ## Get number of successful search runs
  if File.exist?("#{folder}/#{benchmark}/search/outputs/outputs.csv")
    current_run = -1
    File.open("#{folder}/#{benchmark}/search/outputs/outputs.csv").each do |line|
      pieces = line.split(",")
      run = pieces[2].to_i

      search_success = search_success + 1 if run != current_run 
      current_run = run
    end
  end

  ddec_bar = ddec_success
  search_bar = search_success - ddec_bar
  fail_bar = 10 - search_bar - ddec_bar

  [ddec_bar, search_bar, fail_bar]
end

def counts_graph(folder)

  plot_src = "#{folder}/plots/srcs/counts.dat"
  File.open(plot_src, "w") do |out|
    out.puts "Benchmark DDEC Search Fail"

    $benchmarks.each do |bench,data|
      opt_bars = get_counts(folder, "#{bench}-opt")
      out.puts "#{bench}-opt #{opt_bars[0]} #{opt_bars[1]} #{opt_bars[2]}" if not opt_bars.nil?

      trans_bars = get_counts(folder, "#{bench}-trans")
      out.puts "#{bench}-trans #{trans_bars[0]} #{trans_bars[1]} #{trans_bars[2]}" if not trans_bars.nil?
    end

  end

  %x(cd #{folder}/plots/srcs; gnuplot counts.plot)
  FileUtils.cp("#{folder}/plots/srcs/counts.pdf", "#{folder}/plots")

end

def mean(arr)
  sum = arr.inject(0) {|x,y| x+y}
  sum.to_f/arr.length
end

def median(arr)
  sorted = arr.sort
  size = sorted.length
  (sorted[(size-1)/2] + sorted[size/2])/2
end

def quartiles(arr)
  sorted = arr.sort
  size = sorted.length

  return [sorted[0], sorted[0], sorted[0], sorted[0], sorted[0]] if size == 1

  median = (sorted[(size-1)/2] + sorted[size/2])/2


  if size % 2 == 0
    lower = sorted[0, size/2]
    upper = sorted.slice(size/2, size)
  else
    lower = sorted[0, size/2]
    upper = sorted.slice(size/2+1, size)
  end

  q1 = median(lower)
  q3 = median(upper)

  [sorted[0], q1, median, q3, sorted[size-1]]

end

def get_ddec_stats(folder, benchmark, state)

  runs = []

  if File.exist?("#{folder}/#{benchmark}/verification_log.csv")
    File.open("#{folder}/#{benchmark}/verification_log.csv").each do |line|
      pieces = line.split(",")

      next if state == :verified and pieces[1] != "verified"
      next if state == :fail and pieces[1] == "verified"

      runs.push(pieces[2].to_f)
    end
  end

  return nil if runs.length == 0

  qs = quartiles runs
  qs.map { |x| Math.log(x,10).round(2) }

end

def ddec_times_graph(folder)

  plot_src = "#{folder}/plots/srcs/ddec_times_good.dat"
  n = 1
  File.open(plot_src, "w") do |out|

    $benchmarks.each do |bench,data|
      opt_stats = get_ddec_stats(folder, "#{bench}-opt", :verified)
      out.puts "#{n} #{bench}-opt-pass #{opt_stats[0]} #{opt_stats[1]} #{opt_stats[2]} #{opt_stats[3]} #{opt_stats[4]}" if not opt_stats.nil?
      n = n + 2

      trans_stats = get_ddec_stats(folder, "#{bench}-trans", :verified)
      out.puts "#{n} #{bench}-trans-pass #{trans_stats[0]} #{trans_stats[1]} #{trans_stats[2]} #{trans_stats[3]} #{trans_stats[4]}" if not trans_stats.nil?
      n = n + 2
    end
  end

  plot_src = "#{folder}/plots/srcs/ddec_times_fail.dat"
  n = 2
  File.open(plot_src, "w") do |out|
    $benchmarks.each do |bench,data|
      opt_stats = get_ddec_stats(folder, "#{bench}-opt", :fail)
      out.puts "#{n} #{bench}-opt-fail #{opt_stats[0]} #{opt_stats[1]} #{opt_stats[2]} #{opt_stats[3]} #{opt_stats[4]}" if not opt_stats.nil?
      n = n + 2

      trans_stats = get_ddec_stats(folder, "#{bench}-trans", :fail)
      out.puts "#{n} #{bench}-trans-fail #{trans_stats[0]} #{trans_stats[1]} #{trans_stats[2]} #{trans_stats[3]} #{trans_stats[4]}" if not trans_stats.nil?
      n = n + 2
    end
  end

  %x(cd #{folder}/plots/srcs; gnuplot ddec_times.plot)
  FileUtils.cp("#{folder}/plots/srcs/ddec_times.pdf", "#{folder}/plots")

end


def get_bv_stats(folder, benchmark, state)

  runs = []

  if state == :verified
    file = "#{folder}/#{benchmark}/search/outputs/outputs.csv"
    if File.exist?(file)
      File.open(file).each do |line|
        pieces = line.split(",")
        num = pieces[0]
        next if num == "num"

        runs.push(pieces[3].to_f)
      end
    end
  else
    file = "#{folder}/#{benchmark}/search/outputs/fail_times.csv"
    if File.exist?(file)
      File.open(file).each do |line|
        runs.push(line.to_f)
      end
    end
  end

  return nil if runs.length == 0

  qs = quartiles runs
  qs.map { |x| Math.log(x,10).round(2) }

end

def bv_times_graph(folder)

  plot_src = "#{folder}/plots/srcs/bv_times_good.dat"
  n = 1
  File.open(plot_src, "w") do |out|

    $benchmarks.each do |bench,data|
      opt_stats = get_bv_stats(folder, "#{bench}-opt", :verified)
      out.puts "#{n} #{bench}-opt-pass #{opt_stats[0]} #{opt_stats[1]} #{opt_stats[2]} #{opt_stats[3]} #{opt_stats[4]}" if not opt_stats.nil?
      n = n + 2

      trans_stats = get_bv_stats(folder, "#{bench}-trans", :verified)
      out.puts "#{n} #{bench}-trans-pass #{trans_stats[0]} #{trans_stats[1]} #{trans_stats[2]} #{trans_stats[3]} #{trans_stats[4]}" if not trans_stats.nil?
      n = n + 2
    end
  end

  plot_src = "#{folder}/plots/srcs/bv_times_fail.dat"
  n = 2
  File.open(plot_src, "w") do |out|
    $benchmarks.each do |bench,data|
      opt_stats = get_bv_stats(folder, "#{bench}-opt", :fail)
      out.puts "#{n} #{bench}-opt-fail #{opt_stats[0]} #{opt_stats[1]} #{opt_stats[2]} #{opt_stats[3]} #{opt_stats[4]}" if not opt_stats.nil?
      n = n + 2

      trans_stats = get_bv_stats(folder, "#{bench}-trans", :fail)
      out.puts "#{n} #{bench}-trans-fail #{trans_stats[0]} #{trans_stats[1]} #{trans_stats[2]} #{trans_stats[3]} #{trans_stats[4]}" if not trans_stats.nil?
      n = n + 2
    end
  end

  %x(cd #{folder}/plots/srcs; gnuplot bv_times.plot)
  FileUtils.cp("#{folder}/plots/srcs/bv_times.pdf", "#{folder}/plots")

end

def cost_vs_perf(folder, benchmark)

  plot_src = "#{folder}/plots/srcs/cost_perf.dat"

  benchmark_values = {}
  benchmark_cost = {}
  
  return nil if not File.exist?("#{folder}/#{benchmark}/benchmark_log.csv")

  File.open("#{folder}/#{benchmark}/benchmark_log.csv").each do |line|
    pieces = line.split(",")
    id = pieces[0]
    value = pieces[1]
    benchmark_values[id] = value
  end

  benchmark_values.each do |id, value|
    File.open("#{folder}/#{benchmark}/search/outputs/outputs.csv").each do |line|
      pieces = line.split(",")
      line_id = pieces[0]
      if(line_id == id)
        cost = pieces[1]
        benchmark_cost[id] = cost
      end
    end
  end

  File.open(plot_src, "a") do |outfile|
    benchmark_cost.each do |id, cost|
      value = benchmark_values[id]
      outfile.puts "#{id} #{cost} #{value}"
    end
  end

end

def cost_perf_graph(folder)

  plot_src = "#{folder}/plots/srcs/cost_perf.dat"
  File.delete(plot_src) if File.exist?(plot_src)

  $benchmarks.each do |bench,data|
    cost_vs_perf(folder, "#{bench}-opt")
    cost_vs_perf(folder, "#{bench}-trans")
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

  FileUtils.cp("gnuplot/performance.plot", "#{folder}/plots/srcs")
  FileUtils.cp("gnuplot/counts.plot", "#{folder}/plots/srcs")
  FileUtils.cp("gnuplot/ddec_times.plot", "#{folder}/plots/srcs")
  FileUtils.cp("gnuplot/bv_times.plot", "#{folder}/plots/srcs")
  FileUtils.cp("gnuplot/moreland.pal", "#{folder}/plots/srcs")

  speedup_graph(folder)
  counts_graph(folder)
  ddec_times_graph(folder)
  bv_times_graph(folder)
  cost_perf_graph(folder)


end

main

