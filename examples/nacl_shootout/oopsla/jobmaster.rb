#!/usr/bin/ruby

require 'fileutils'

require_relative 'bench_config'

### A semaphore to avoid using too much CPU at once

class Semaphore

  def initialize(n_cores)
    @lock = Mutex.new
    @n_cores = n_cores
    @available = n_cores
  end

  def acquire(m)

    got_it = false

    while(not got_it)
      @lock.synchronize {
        if(@available >= m) then
          @available = @available - m
          got_it = true
        end
      }

      if(not got_it)
        sleep 0.1
      end
    end

  end

  def release(m)
    @lock.synchronize {
      @available = @available + m
    }
  end
end

### A manager that runs jobs

class JobQueue

  def initialize(semaphore)
    @semaphore = semaphore
    @queue_lock = Mutex.new
    @queue = []
    @stop = false

    @running_lock = Mutex.new
    @running_jobs = 0
  end

  def finish()
    @stop = true
  end

  def add_job(j)
    @queue_lock.synchronize {
      @queue.push(j)
      log "Queued: #{j.to_s}"
    }
  end

  def exec(job)
    @semaphore.acquire(job.cores_needed)

    @running_lock.synchronize {
      @running_jobs = @running_jobs + 1        
    }

    log "Running: #{job.to_s}"

    Thread.new {

      begin
        job.run
      rescue => detail
        job.error(detail)
      ensure 
        job.finish
      end

      @running_lock.synchronize {
        @running_jobs = @running_jobs - 1
      }
      @semaphore.release(job.cores_needed)
      
      log "Finished: #{job.to_s}"
    }
  end

  def exec_all()
    while not @stop do

      job = nil

      while job.nil? and not @stop do
        @queue_lock.synchronize {
          if @queue.length > 0 
            index = rand(@queue.length)
            #picking a job at random helps to be more fair
            job = @queue.delete_at(index)
          else
            @running_lock.synchronize {
              if @running_jobs == 0
                @stop = true
                break
              end
            }
          end
        }
        if job.nil? then
          sleep 0.1
        end
      end

      if job.nil?
        break
      else
        exec(job)
      end
    end

  end
end

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
  File.open("results/#{$stamp}/log","a") do |log|
    log.puts(m)
  end
end

### JOBS

class Job

  def initialize
    @owner = nil
  end

  def cores_needed
    1
  end

  def set_debug
    @debug = true
  end

  def debug(x)
    if @debug
      log "[debug][#{self.to_s}] #{x}\n"
    end
  end

  def set_owner(x, p)
    @owner = x
    @owner_param = p
  end

  def finish
    if not @owner.nil? then
      @owner.job_finished(@owner_param)
    end
  end

  def error(e)
    log "[error][#{self.to_s}] Encountered exception"
    log "[error][#{self.to_s}] #{e}"
    log e.backtrace
  end

  def shell(cmd, dir)
    debug "cmd: #{cmd}"
    pid = Process.spawn(cmd, {:chdir => dir})
    $child_pids_lock.synchronize {
      $child_pids.push(pid)
    }
    Process.wait(pid)
    $child_pids_lock.synchronize {
      $child_pids.delete(pid)
    }
  end
end

class StagedJob < Job

  def initialize(n, name)
    @stage_count = n
    @stages = []
    for i in 1..n do
      @stages.push([])
    end

    @finished_stages = 0
    @finish_lock = Mutex.new
    @name = name
    set_debug
  end

  def cores_needed
    0
  end

  def add_to_stage(n, job)
    debug "Adding #{job} to stage #{n}"
    job.set_owner(self, n)
    @stages[n].push(job)
  end

  def to_s
    "StagedJob/#{@name}"
  end

  def job_finished(stage)
    do_run = false

    @finish_lock.synchronize {
      @stage_sizes[stage] -= 1
      if @stage_sizes[stage] == 0 then
        do_run = true
        @finished_stages = @finished_stages + 1
      end
      debug "Stage #{stage} job finished; #{@stage_sizes[stage]} jobs left at stage #{stage}"
    }

    if do_run and stage < @stage_count-1 then
      run_stage(stage+1)
    end
  end

  def run_stage(n)
    debug "Running stage #{n} with #{@stages[n].length} jobs"
    if @stages[n].length == 0 then
      debug "It looks like we have no jobs for stage #{n}; moving on"
      if n < @stage_count then
        run_stage(n+1)
      end
    else
      @stages[n].each do |j|
        $queue.add_job(j)
      end
    end
  end

  def run
    @stage_sizes = []
    @stages.each do |stage|
      @stage_sizes.push(stage.length)
    end

    run_stage(0)

    # wait until everything is finished
    while true do
      @finish_lock.synchronize {
        if(@finished_stages >= @stage_count)
          return
        end
      }
      sleep 0.1 
    end
  end

end

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
    shell("stoke_search --config search.conf >/dev/null 2>/dev/null", @folder)

    debug "Search finished"
    search_output_file = "#{@folder}/outputs/outputs.csv"

    stage_job = StagedJob.new(2, "#{@benchmark}-#{@mode}")
    stage_job.set_debug

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
        stage_job.add_to_stage(0, v)
        current_list = []
      end

      current_run = run
      current_list.push(id)
    end
    if current_list.size > 0
      debug "(final) verification job for #{current_list}"
      v = VerificationJob.new(@benchmark, current_list.reverse, @mode,
                              "#{mk_folder(@benchmark,@mode,"")}/verification_log.csv")
      stage_job.add_to_stage(0, v)
    end

    ## Create benchmark job for the target
    tbench = BenchmarkJob.new(@benchmark, 0, @mode)
    stage_job.add_to_stage(0, tbench)

    ## Create statistics job to aggregate results for this benchmark
    stats_job = StatisticsJob.new(@benchmark, @mode)
    stage_job.add_to_stage(1, stats_job)

    $queue.add_job(stage_job)
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
      file.write("--opcode_width_mass 1\n")
      file.write("\n")

      file.write("## Search\n")
      file.write("--cycle_timeout #{$global_settings[:cycle_timeout]}\n")
      file.write("--timeout_iterations #{$global_settings[:timeout_iterations]}\n")
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
      file.write("--strategy \"hold_out,bounded\"\n")
      file.write("--bound 1\n")
      file.write("--alias_strategy #{data[:alias_strategy]}\n")
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
    file = "#{folder}/#{@rewrite_id}.out"

    FileUtils.mkdir_p folder

    ### Run verify command
    cmd =  "stoke_debug_verify"
    cmd += " --target #{@benchmark}/target.s" 
    cmd += " --rewrite #{@rewrite_file}"
    cmd += " --strategy ddec"
    cmd += " --alias_strategy #{data[:alias_strategy]}"
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

    ### Test for success
    success = false
    File.open(file).each do |line|
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
      j.run
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
  s = Semaphore.new(16)
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
  doable = often_fail + others
  

  all.each do |bench|
    j = SearchJob.new(bench, :optimize)
    $queue.add_job(j)

    if $benchmarks[bench][:do_transform]
      j = SearchJob.new(bench, :transform)
      $queue.add_job(j)
    end
  end

  ## Run everything
  $queue.exec_all

  end_time = Time.new
  log "Finished"
  log "Wall time is #{(end_time - start_time).round(3)}"

end

main

