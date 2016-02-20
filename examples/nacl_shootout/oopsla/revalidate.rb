#!/usr/bin/ruby

require 'fileutils'
require_relative 'bench_config'
require_relative 'jobs'

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

def log(m)

  if(m[0] != "[")
    m = " " + m
  end

  m = "[#{Time.new}]#{m}"
  puts m
  File.open("results/#{$stamp}/revalidate_log","a") do |log|
    log.puts(m)
  end
end

### JOBS

class VerificationJob < Job

  def initialize(benchmark, rewrite_id, mode, log_file, alias_strategy)
    @benchmark = benchmark
    @mode = mode
    @rewrite_id = rewrite_id
    @rewrite_file = mk_folder(benchmark, @mode, "search") + "/outputs/#{@rewrite_id}.s"
    @log_file = log_file
    @alias_strategy = alias_strategy
    set_debug
  end

  def to_s
    "Verify/#{@benchmark}-#{@mode}/#{@rewrite_id}"
  end

  def run
    data = $benchmarks[@benchmark]
    folder = mk_folder(@benchmark, @mode, "revalidate")
    file = "#{folder}/#{@rewrite_id}.out"

    FileUtils.mkdir_p folder

    ### Run verify command
    cmd =  "timeout 40m stoke_debug_verify"
    cmd += " --target #{@benchmark}/target.s" 
    cmd += " --rewrite #{@rewrite_file}"
    cmd += " --strategy ddec"
    cmd += " --alias_strategy #{@alias_strategy}"
    cmd += " --def_in '#{data[:def_in]}'"
    cmd += " --live_out \"{ %rax }\""
    cmd += " --testcases #{@benchmark}/testcases"
    cmd += " --test_set '#{data[:test_set]}'"
    cmd += " --heap_out"
    cmd += " --sound_nullspace"
    cmd += " --no_ddec_bv"
    cmd += " --verify_nacl"
    cmd += " --solver z3"
    cmd += " >#{file} 2>/dev/null"

    verify_start = Time.new
    shell(cmd, ".")
    verify_end = Time.new
    verify_time = (verify_end - verify_start).round(3)

    debug "run finished"
    ### Test for success
    success = false
    timeout = true
    error = false
    File.open(file).each do |line|
      if /Equivalent/.match(line) then
        timeout = false
        if /yes/.match(line) then
          success = true 
        end
      end
      if /Encountered error/.match(line) then
        error = true
        timeout = false
      end
    end

    debug "computing status"
    ### Log the outcome
    if error
      status = "error"
    elsif success
      status = "verified"
    elsif timeout
      status = "timeout"
    else
      status = "fail"
    end

    debug "logging"
    File.open(@log_file, 'a') { |logfile|
      logfile.puts "#{@benchmark}, #{@mode},#{@rewrite_id},#{@alias_strategy},#{status},#{verify_time}"
    }
    debug "all done"

  end

end




#### Here's what to do

def main

  ## Setup logging facility
  if ARGV.length != 1 then
    puts "usage: ./jobmaster.rb <stamp>"
    exit 1
  end

  $stamp = ARGV[0]
  FileUtils.mkdir_p "results/#{$stamp}"

  ## Start the timer
  start_time = Time.new
  log "Starting"

  ## Setup the queue and signal handler
  s = Semaphore.new(30)
  $queue = JobQueue.new(s)
  $child_pids_lock = Mutex.new
  $child_pids = []

  exit_nicely

#  $benchmarks.each do |k,v|
#    j = SearchJob.new(k)
#    $queue.add_job(j)
#  end

#  j = SearchJob.new("wcpcpy")
#  j.set_debug
#  $queue.add_job(j)

  hard = ["strcpy", "wmemcmp", "wcscat"]
  often_fail = ["wmemset", "wcslen", "wcscpy", "wcsnlen"]
  others = ["wcpcpy", "wcschr", "strxfrm", "wcscmp", "wmemchr", "wcsrchr"]
  all = hard + often_fail + others

  logfile = "results/#{$stamp}/revalidate.csv"
  all.each do |bench|
    [:optimize, :transform].each do |mode|
      files = Dir.glob("#{mk_folder(bench, mode, "/search/outputs")}/*.s")
      log "Files are: #{files}"
      files = files.map { |f| f[f.rindex("/")+1,f.length-3-f.rindex("/")].to_i }
      log "Files are: #{files}"
      files.each do |id|
        j = VerificationJob.new(bench, id, mode, logfile, "flat")
        $queue.add_job(j)
        j = VerificationJob.new(bench, id, mode, logfile, "string")
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

