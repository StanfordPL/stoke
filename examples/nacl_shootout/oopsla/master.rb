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

class StatisticsJob < Job

  def initialize(benchmark,mode)
    @benchmark = benchmark
    @mode = mode
    set_debug
  end

  def to_s
    "Statistics/#{@benchmark}-#{@mode}"
  end

  def run
    out_file =        "#{mk_folder(@benchmark, @mode,"")}/stats"
    search_log =      "#{mk_folder(@benchmark, @mode, "search")}/outputs/outputs.csv"
    search_fail_log = "#{mk_folder(@benchmark, @mode, "search")}/outputs/fail_times.csv"
    search_stats =    "#{mk_folder(@benchmark, @mode, "search")}/search_stats.json"
    verify_log =      "#{mk_folder(@benchmark, @mode, "")}/verification_log.csv"
    bench_log =       "#{mk_folder(@benchmark, @mode, "")}/benchmark_log.csv"

    ## Performance of the best rewrite
    best_index = nil
    best_speedup = nil
    best_value = 0
    target_value = 0
    total_benchmark_time = 0

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

      total_benchmark_time += split[2].to_f
    end


    ## Copy the best rewrite and the binary into the top directory
    if not best_index.nil? then
      best_speedup = (best_value.to_f/target_value.to_f).round(3) unless target_value == 0
      FileUtils.cp("#{mk_folder(@benchmark, @mode, "search")}/outputs/#{best_index}.s", 
                   "#{mk_folder(@benchmark, @mode, "")}/result.s")
      FileUtils.cp("#{mk_folder(@benchmark, @mode, "benchmark")}/#{best_index}.bin", 
                   "#{mk_folder(@benchmark, @mode, "")}/result.bin")
    end

    ## Total bounded verification time and #runs
    total_bv_time = 0
    total_bv_runs = 0
    total_bv_success = 0
    average_bv_time = nil

    if File.exist?(search_fail_log) then
      File.open(search_fail_log).each do |line|
        time = line.to_f/1000
        total_bv_time += time
        total_bv_runs += 1
      end
    end

    if File.exist?(search_log) then
      File.open(search_log).each do |line|
        split = line.split(",")

        next if split[0] == "num"

        time = split[3].to_f/1000
        total_bv_time += time
        total_bv_runs += 1
        total_bv_success += 1
      end
    end

    average_bv_time = (total_bv_time/total_bv_runs).round(3) unless total_bv_runs == 0
    total_bv_time = total_bv_time.round(3)

    ## Total search time
    total_stoke_time = 0
    if File.exist?(search_stats) then
      File.open(search_stats).each do |line|
        match = /total_search_time": ([0-9.]*)/.match(line)
        if match
          total_stoke_time = match[1].to_f
        end
      end
    end

    total_search_time = total_stoke_time - total_bv_time
    total_search_time = total_search_time.round(3)
    total_bv_time = total_bv_time.round(3)


    ## Total, average DDEC time and # runs
    total_ddec_time = 0
    total_ddec_runs = 0
    total_ddec_success = 0
    average_ddec_time = nil

    if File.exist?(verify_log) then
      File.open(verify_log).each do |line|
        split = line.split(",")
        total_ddec_time += split[2].to_f/1000
        total_ddec_runs += 1
        if(split[1] == "verified")
          total_ddec_success += 1
        end
      end
    end

    average_ddec_time = (total_ddec_time/total_ddec_runs).round(3) unless total_ddec_runs == 0
    total_ddec_time = total_ddec_time.round(3)


    ## WRITE IT OUT!
    File.open(out_file, "w") do |outfile|
      outfile.puts("#{@benchmark}")
      outfile.puts("")
      outfile.puts("### Summary ###")
      if best_index.nil?
        outfile.puts("NO REWRITE FOUND")
      end
      outfile.puts("speedup: #{best_speedup}") unless best_speedup.nil?
      outfile.puts("best rewrite: #{best_index}") unless best_index.nil?
      outfile.puts("best rewrite score: #{best_value}")
      outfile.puts("target score: #{target_value}")
      outfile.puts("")
      outfile.puts("### Search ###")
      outfile.puts("total search time: #{total_search_time}")
      outfile.puts("total BV time: #{total_bv_time}")
      outfile.puts("total BV runs: #{total_bv_runs}")
      outfile.puts("average BV time: #{average_bv_time}") unless average_bv_time.nil?
      outfile.puts("total BV success: #{total_bv_success}")
      outfile.puts("total reported by stoke binary: #{total_stoke_time}")
      outfile.puts("")
      outfile.puts("### DDEC Verification ###")
      outfile.puts("total ddec runs: #{total_ddec_runs}")
      outfile.puts("total ddec success: #{total_ddec_success}")
      outfile.puts("total ddec time: #{total_ddec_time}")
      outfile.puts("average ddec time: #{average_ddec_time}") unless average_ddec_time.nil?
      outfile.puts("")
      outfile.puts("### Benchmarking ###")
      outfile.puts("total benchmark time: #{total_benchmark_time}")
      outfile.puts("")
    end
    debug "All done!"

  end
end

class SearchJob < Job

  def initialize(benchmark, mode)
    @benchmark = benchmark
    @mode = mode
    @folder = mk_folder(@benchmark, @mode, "search")
    set_debug
  end

  def to_s
    "Search/#{@benchmark}-#{@mode}"
  end

  def run

    debug "Writing Config File"
    FileUtils.mkdir_p @folder
    write_config "#{@folder}/search.conf"

    debug "Running search"
    cmd =  "timeout #{$global_settings[:search_timeout]} "
    cmd += "stoke_search --config search.conf "
    cmd += " >/dev/null 2>/dev/null"
    shell(cmd, @folder)

    debug "Search finished"
    search_output_file = "#{@folder}/outputs/outputs.csv"

    ## Create verification jobs for each series of results
    current_list = []
    current_run = -1
    id = 0
    File.open(search_output_file).each do |line|
      split = line.split(",")
      id = split[0]
      run = split[2]

      next if id == "num"

      id = id.to_i
      if run != current_run and current_list.size > 0
        debug "verification job for #{current_list}"
        v = VerificationJob.new(@benchmark, current_list.reverse, @mode,
                                "#{mk_folder(@benchmark,@mode,"")}/verification_log.csv")
        $queue.add_job(v)
        current_list = []
      end

      current_run = run
      current_list.push(id)
    end
    if current_list.size > 0
      debug "(final) verification job for #{current_list}"
      v = VerificationJob.new(@benchmark, current_list.reverse, @mode,
                              "#{mk_folder(@benchmark,@mode,"")}/verification_log.csv")
      $queue.add_job(v)
    end

  end

  def write_config(filename)
    name = @benchmark
    data = $benchmarks[name]

    mem_ops = []
    data[:mem_ops_cons].each do |cons|
      data[:mem_ops_regs].each do |regs|
        mem_ops.push("#{cons}(%r15,#{regs})")
      end
    end

    FileUtils.cp("#{name}/target.s", @folder)
    FileUtils.cp("#{name}/testcases", @folder)
    FileUtils.cp("#{name}/transform.s", @folder) if @mode == :transform

    File.open(filename, 'w') do |file|

      file.write("## Transforms\n")
      file.write("--add_nops_mass 1\n")
      file.write("--delete_mass 1\n")
      file.write("--opcode_width_mass 0\n")
      file.write("\n")

      file.write("## Search\n")
      file.write("--cycle_timeout #{$global_settings[:cycle_timeout]}\n")
      file.write("--timeout_iterations #{$global_settings[:timeout_iterations]/data[:split]}\n")
      file.write("--timeout_seconds 0\n")
      file.write("--target target.s\n")
      file.write("--verify_all\n")
      file.write("\n")

      file.write("## Search Init\n")
      file.write("--init target\n")           if @mode == :optimize
      file.write("--init previous\n")         if @mode == :transform
      file.write("--previous transform.s\n")  if @mode == :transform


      file.write("## Cost\n")
      file.write("--restricted_reg_penalty 100\n")
      file.write("--distance doubleword\n")
      file.write("--cost \"correctness*1000000 + (nacl2 <= 5)*nacl2 + (nacl2 > 5)*nacl2*25 + measured\"\n")
      file.write("--correctness \"nacl2+correctness == 0\"\n")
      file.write("\n")

      file.write("## Input/Output\n")
      file.write("--def_in \"#{data[:def_in]}\"\n")
      file.write("--live_out \"{ %rax }\"\n")
      file.write("--heap_out\n")
      file.write("\n")

      file.write("## Testcases\n")
      file.write("--testcases testcases\n")
      file.write("--training_set \"#{data[:training_set]}\"\n")
      file.write("\n")

      file.write("## Transform Pool Options\n")
      file.write("--cpu_flags \"{ }\"\n")
      file.write("--opc_blacklist #{make_list($global_settings[:blacklist])}\n")
      file.write("--opc_whitelist \"{ }\"\n")
      file.write("--validator_must_support\n")
      file.write("--preserve_regs #{make_list([$global_settings[:always_preserve], data[:preserve_regs]].flatten)}\n")
      file.write("--mem_ops #{make_list(mem_ops)}\n")
      file.write("\n")

      file.write("## Verification\n")
      file.write("--no_bv\n") if $global_settings[:no_check_all]
      file.write("--strategy \"hold_out,bounded\"\n")
      file.write("--bound 1\n")
      if $global_settings[:alias_strategy].nil?
        file.write("--alias_strategy #{data[:alias_strategy]}\n")
      else
        file.write("--alias_strategy #{$global_settings[:alias_strategy]}\n")
      end
      file.write("\n")

      file.write("## Miscelaneous\n")
      file.write("--out result.s\n")
      file.write("--folder_name outputs\n")
      file.write("--statistics_interval 25000\n")
      file.write("--postprocessing nacl\n")
      file.write("--machine_output search_stats.json\n")
      file.write("\n")

      
    end

  end

end

class VerificationJob < Job

  def initialize(benchmark, rewrite_ids, mode, log_file)
    @benchmark = benchmark
    @mode = mode
    @rewrite_id = rewrite_ids[0]
    @rewrite_ids = rewrite_ids.drop(1)
    @rewrite_file = mk_folder(benchmark, @mode, "search") + "/outputs/#{@rewrite_id}.s"
    @log_file = log_file
    set_debug
  end

  def to_s
    "Verify/#{@benchmark}-#{@mode}/#{@rewrite_id}"
  end

  def run
    data = $benchmarks[@benchmark]
    folder = mk_folder(@benchmark, @mode, "verify")
    config = "#{folder}/#{@rewrite_id}.conf"

    FileUtils.mkdir_p folder
    FileUtils.cp("#{@benchmark}/target.s", folder, { :preserve => true })
    FileUtils.cp("#{@benchmark}/testcases", folder, { :preserve => true})
    FileUtils.cp("#{mk_folder(@benchmark, @mode, "search")}/outputs/#{@rewrite_id}.s", folder)

    ### Run verify command
    File.open(config, "w") do |config|
      config.puts(" --target target.s")
      config.puts(" --rewrite #{@rewrite_id}.s")
      config.puts(" --strategy ddec")
      if $global_settings[:alias_strategy].nil?
        config.puts(" --alias_strategy #{data[:alias_strategy]}")
      else
        config.puts(" --alias_strategy #{$global_settings[:alias_strategy]}")
      end
      config.puts(" --def_in \"#{data[:def_in]}\"")
      config.puts(" --live_out \"{ %rax }\"")
      config.puts(" --live_dangerously")
      config.puts(" --testcases testcases")
      config.puts(" --test_set \"#{data[:test_set]}\"")
      config.puts(" --heap_out")
      config.puts(" --sound_nullspace")
      config.puts(" --no_ddec_bv")
      config.puts(" --verify_nacl")
      config.puts(" --solver z3")
    end

    cmd =  "timeout #{$global_settings[:verify_timeout]} stoke_debug_verify"
    cmd += " --config #{@rewrite_id}.conf >#{@rewrite_id}.out 2>#{@rewrite_id}.err"

    verify_start = Time.new
    shell(cmd, folder)
    verify_end = Time.new
    verify_time = (verify_end - verify_start).round(3)

    ### Test for success
    success = false
    File.open("#{folder}/#{@rewrite_id}.out").each do |line|
      if /Equivalent/.match(line) then
        if /yes/.match(line) then
          success = true 
        end
      end
    end
    status = "fail"

    ### Log the outcome
    if(success)
      status = "verified"
    end

    File.open(@log_file, 'a') { |logfile|
      logfile.puts "#{@rewrite_id},#{status},#{verify_time}"
    }

    ### Run the next appropriate thing
    if(success)
      # if we succeeded, we're done with this set and we move on to
      # benchmarking
      debug "Success; benchmarking"
      j = BenchmarkJob.new(@benchmark, @rewrite_id, @mode)
      $queue.add_job(j)
    elsif @rewrite_ids.length() > 0
      # otherwise, we check the next verification candidate (if any)
      debug "Fail; verifying #{@rewrite_ids}"
      j = VerificationJob.new(@benchmark, @rewrite_ids, @mode, @log_file) 
      j.run
    end

  end

end

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

  def exclusive
    true
  end

  def run
    benchmark_start = Time.new

    FileUtils.mkdir_p(mk_folder(@benchmark, @mode, "benchmark"))

    binary = "#{@benchmark}/binary"
    rewrite = "#{mk_folder(@benchmark, @mode, "search")}/outputs/#{@id}.s"
    optbin = "#{mk_folder(@benchmark, @mode, "benchmark")}/#{@id}.bin"
    stats = "#{mk_folder(@benchmark, @mode, "benchmark")}/#{@id}.out"
    logfile = "#{mk_folder(@benchmark, @mode, "")}/benchmark_log.csv"

    if(@id == 0) #placeholder for target
      rewrite = "#{@benchmark}/target.s"
      optbin = "#{@benchmark}/binary"
    end

    ## Replace binary
    if @id > 0 and not File.exist?(optbin) then
      cmd = "stoke_replace --nacl -i #{binary} --rewrite #{rewrite} -o #{optbin} >/dev/null 2>/dev/null"
      shell(cmd, ".")
    end

    ## Benchmark it
    if not File.exist?(stats) then
      cmd = "sel_ldr.py #{optbin} > #{stats} 2>/dev/null"
      shell(cmd, ".")
    end

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
  $global_settings[:no_check_all] = false
  $global_settings[:num_cores] = 16
  $global_settings[:fast] = false

  optparse = OptionParser.new do |opts|
    opts.banner = "Usage: ./master.rb [options] <stamp>"

    opts.on('-n', '--num-cores NUM', Integer, "Number of cores to use (default 16)") do |value|
      $global_settings[:num_cores] = value.to_i
    end

    opts.on("-f", '--fast', "Do quick run") do
      $global_settings[:fast] = true
      $global_settings[:cycle_timeout] = 8000
      $global_settings[:timeout_iterations] = 8000*3
      $global_settings[:verify_timeout] = "5m"
      $global_settings[:search_timeout] = "10m"
      $global_settings[:optimize_only] = true
    end

    opts.on("--optimize", "Only optimization; no transformation") do
      $global_settings[:optimize_only] = true
    end

    opts.on('--memory-model (flat|string)', String, "Pick a memory model") do |model|
      if model != "flat" and model != "string"
        puts "Memory model must be 'flat' or 'string'; got '#{model}'"
        exit 1
      end 
      $global_settings[:alias_strategy] = model
    end

    opts.on("--no-check-all", "Skip bounded validator in search loop") do
      $global_settings[:no_check_all] = true
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

  ## Safety first!
  if Dir.exist?("results/#{$stamp}")
    puts "ERROR: directory already exists!"
    exit 1
  end

  ## Make a copy of all scripts; for debugging purposes
  FileUtils.mkdir_p "results/#{$stamp}"
  FileUtils.mkdir_p "results/#{$stamp}/scripts"

  for file in Dir.glob("*.rb")
    FileUtils.cp(file, "results/#{$stamp}/scripts")
  end

  ## Start the timer
  start_time = Time.new
  log "Starting"
  log "git rev-parse HEAD: #{`git rev-parse HEAD`}"
  log "git diff:"
  log "#{`git diff`}"
  log "git status: "
  log "#{`git status`}"
  log "Command line arguments: "
  log arguments
  log "Global settings: "
  log $global_settings

  ## Setup the queue and signal handler
  s = Semaphore.new($global_settings[:num_cores])
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

  all.each do |bench|
    $queue.add_job(SearchJob.new(bench, :optimize))
    $queue.add_job(BenchmarkJob.new(bench, 0, :optimize))

    if not $global_settings[:optimize_only]
      $queue.add_job(SearchJob.new(bench, :transform))
      $queue.add_job(BenchmarkJob.new(bench, 0, :transform))
    end
  end

  ## Run everything
  $queue.exec_all

  end_time = Time.new
  log "Finished"
  log "Wall time is #{(end_time - start_time).round(3)}"
  log "Plotting"

  ## Now agregate statistics
  $queue = JobQueue.new(s)
  all.each do |bench|
    $queue.add_job(StatisticsJob.new(bench, :optimize))

    if not $global_settings[:optimize_only]
      $queue.add_job(StatisticsJob.new(bench, :transform))
    end
  end
  $queue.exec_all

  `./plot.rb "#{$stamp}"`

end

main

