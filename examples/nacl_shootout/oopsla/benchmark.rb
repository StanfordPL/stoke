#!/usr/bin/ruby

require 'fileutils'
require 'optparse'

require_relative 'jobs'
require_relative 'bench_config'


### MISC UTIL

def make_list(list)
  s = "\"{ "
  list.each do |val|
    s = s + "#{val} "
  end
  s = s + "}\""
  return s
end

def mk_folder(benchmark, mode, subdir)
  if mode == :optimize
    "results/#{$stamp}/#{benchmark}-opt/#{subdir}"
  elsif mode == :transform
    "results/#{$stamp}/#{benchmark}-trans/#{subdir}"
  end
end

$log_lock = Mutex.new

def log(m)

  m = m.to_s

  if(m[0] != "[")
    m = " " + m
  end

  m = "[#{Time.new}]#{m}"
  $log_lock.synchronize {
    puts m
    File.open("results/#{$stamp}/log","a") do |log|
      log.puts(m)
    end
  }
end

## Jobs

class BenchmarkJob < Job

  def initialize(benchmark, id, mode)
    @benchmark = benchmark
    @id = id
    @mode = mode
    set_debug
  end

  def to_s
    "Benchmark/#{@benchmark}-#{@mode}/#{@id}"
  end

  def run
    benchmark_start = Time.new

    FileUtils.mkdir_p(mk_folder(@benchmark, @mode, "benchmark"))

    binary = "#{@benchmark}/binary"
    rewrite = "#{mk_folder(@benchmark, @mode, "search")}/outputs/#{@id}.s"
    optbin = "#{mk_folder(@benchmark, @mode, "benchmark")}/#{@id}.bin"
    stats = "#{mk_folder(@benchmark, @mode, "benchmark")}/#{@id}.out.good"
    logfile = "#{mk_folder(@benchmark, @mode, "")}/benchmark_log.good.csv"

    if(@id == 0) #placeholder for target
      rewrite = "#{@benchmark}/target.s"
      optbin = "#{@benchmark}/binary"
    end

    ## Benchmark it
    cmd = "sel_ldr.py #{optbin} > #{stats} 2>/dev/null"
    shell(cmd, ".")

    ## Analyze the result, and log to a file
    times = []
    File.open(stats).each do |log|
      match = /[a-z]*\s*\(.*\): ([0-9]*)/.match(log)
      if match then
        times.push(match[1].to_i)
      end
    end

    if(times.length != 10 && times.length != 20)
      debug "got #{times.length} times -- invalid"
      result = 0
    else
      times = times.take(10)
      times = times.drop(3)
      sum = times.inject(0) { |x,y| x + y }
      result = sum.to_f/10
    end

    benchmark_end = Time.new
    benchmark_time = (benchmark_end - benchmark_start).round(3)

    File.open(logfile, "a") do |file|
      file.print "#{@id},#{result},#{benchmark_time}\n"
    end


  end

end

#### Exit nicely

def exit_nicely
  Signal.trap("INT") do
    kill_children
    exit
  end
  Signal.trap("TERM") do
    kill_children
    exit
  end
end



def kill_children
  log "Killing children"
  # it's not what you think!

  # stop the queue
  $queue.finish

  # kill any remaining children
  $child_pids_lock.synchronize {
    $child_pids.each do |pid|
      log "Killing #{pid}"
      %x(kill -9 #{pid})
    end
  }

  exit 1
end


#### Read any user config from the command line
def parse_cmdline
  optparse = OptionParser.new do |opts|
    opts.banner = "Usage: ./master.rb [options] <stamp>"

    opts.on("--optimize", "Only optimization; no transformation") do
      $global_settings[:optimize_only] = true
    end

    opts.on('-h', '--help') do
      puts opts
      exit 0
    end
  end

  optparse.parse!

  if (ARGV.length != 1)
    puts ARGV
    puts "Need a stamp!"
    exit 1
  end
  $stamp = ARGV[0]

end



#### Here's what to do
def main

  ## Record command line args
  arguments = ARGV.join(" ")

  ## Set globals via command line
  parse_cmdline

  if not Dir.exist?("results/#{$stamp}")
    puts "ERROR: directory doesn't exist!"
    exit 1
  end


  ## Start the timer
  start_time = Time.new
  log "Starting"
  log "Command line arguments: "
  log arguments
  log "Global settings: "
  log $global_settings

  ## Setup the queue and signal handler
  s = Semaphore.new(1)
  $queue = JobQueue.new(s)
  $child_pids_lock = Mutex.new
  $child_pids = []

  exit_nicely

  fast = ["wmemset", "wcslen", "wcscpy", "wcsnlen"]
  others = [ "strcpy", "wmemcmp", "wcscat", "wcpcpy", "wcschr", "strxfrm", "wcscmp", "wmemchr", "wcsrchr"]


  all = fast + others
  if $global_settings[:fast] then
    all = fast
  end

  modes = [:optimize, :transform]
  modes = [:optimize] if $global_settings[:optimize_only]
  puts "Modes: #{modes}"


  all.each do |bench|
    modes.each do |mode| 
      ids = Dir.glob("#{mk_folder(bench, mode, "benchmark")}/*.out").each do |outfile|
        outfile = outfile.split("/")
        outfile = outfile[outfile.length-1]
        id = outfile[0,outfile.length-4].to_i
        j = BenchmarkJob.new(bench, id, mode)
        $queue.add_job(j)
      end
    end
  end

  ## Run everything
  $queue.exec_all

  end_time = Time.new
  log "Finished"
  log "Wall time is #{(end_time - start_time).round(3)}"

end

main

