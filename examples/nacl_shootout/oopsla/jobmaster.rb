#!/usr/bin/ruby

require 'fileutils'

### Per-Benchmark Settings

$benchmarks = {
  "wcpcpy" => {
    :def_in         => "{ %rsp %rbp %r15 %rdi %rsi }",
    :training_set   => "{ 0 1 2 3 4 10 11 12 13 20 21 22 23 30 31 40 41 50 60 70 80 }",
    :test_set       => "{ 0 .. 20 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rsi", "%rdi"],
    :mem_ops_cons   => ["0x0", "0x4", "-0x4"],
    :alias_strategy => "string_antialias",
    :exec_timeout   => "30s",
  },
  "wcslen" => {
    :def_in         => "{ %rdi %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 222 160 200 }",
    :test_set       => "{ 0 .. 20 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi", "%rdx"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "flat",
    :exec_timeout   => "3m",
  },
  "wmemset" => {
    :def_in         => "{ %rdi %rsi %rdx %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi", "%r8"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcsnlen" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 222 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rax", "%rdi"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wmemcmp" => {
    :def_in         => "{ %rdi %rsi %rdx %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi", "%rsi"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcschr" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rax"],
    :mem_ops_cons   => ["0x4","0x0","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "strxfrm" => {
    :def_in         => "{ %rdi %rsi %rdx %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi","%rsi"],
    :mem_ops_cons   => ["0x0","0x1","-0x1"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcscmp" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi","%rsi"],
    :mem_ops_cons   => ["0x0","0x4","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wmemchr" => {
    :def_in         => "{ %rdi %rsi %rdx %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdi","%rax"],
    :mem_ops_cons   => ["0x0","0x4","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcscpy" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rdx","%rcx","%rsi","%rdi"],
    :mem_ops_cons   => ["0x0","0x4","-0x4"],
    :alias_strategy => "string_antialias",
    :exec_timeout   => "30s",
  },
  "wcscat" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 4 5 100 101 102 103 104 105 200 201 202 203 204 205 300 301 302 303 304 305 401 402 403 404 405 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rsi","%rdi"],
    :mem_ops_cons   => ["0x0","0x4","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "strcpy" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 10 11 12 13 20 21 22 23 24 30 40 41 50 60 70 80 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rsi","%rdi"],
    :mem_ops_cons   => ["0x0","0x4","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  },
  "wcsrchr" => {
    :def_in         => "{ %rdi %rsi %r15 }",
    :training_set   => "{ 0 1 2 3 40 41 42 43 80 81 82 83 84 120 121 122 160 200 }",
    :test_set       => "{ 0 .. 100 }",
    :preserve_regs  => ["%rbx", "%rsp", "%rbp", "%r12", "%r13", "%r14"],
    :mem_ops_regs   => ["%rax","%rdi"],
    :mem_ops_cons   => ["0x0","0x4","-0x4"],
    :alias_strategy => "string",
    :exec_timeout   => "30s",
  }
}

### Global Settings

$global_settings = {
  :verify_timeout => "30m",
  :cycle_timeout => 10000, #200000,
  :timeout_iterations => 3*10000, #200000*20,

  :always_preserve => [ 
    "%r15",
    "%xmm0",
    "%xmm1",
    "%xmm2",
    "%xmm3",
    "%xmm4",
    "%xmm5",
    "%xmm6",
    "%xmm7",
    "%xmm8",
    "%xmm9",
    "%xmm10",
    "%xmm11",
    "%xmm12",
    "%xmm13",
    "%xmm14",
    "%xmm15" ],

  :blacklist => [ 
    "prefetch*",
    "cmc",
    "stc",
    "clc",
    "lfence",
    "leaveq",
    "mfence",
    "sfence",
    "cbtw",
    "clt*",
    "cld",
    "crc32*",
    "cwt*",
    "pause",
    "imul*",
    "emms",
    "set*",
    "cmpxchg*",
    "adc*",
    "sbb*",
    "xchg*",
    "idiv*",
    "xadd*",
    "rol*",
    "rcl*",
    "ror*",
    "rcr*",
    "bswap",
    "div*",
    "ver*",
    "bsr*",
    "bsf*",
    "mul*",
    "btr*",
    "bts*",
    "bt*",
    "cmp*",
    "test*",
    "j*",
    "ud2",
    "cqt*",
    "shrd*"
  ]
}

### A semaphore to avoid using too much CPU at once

class Semaphore

  def initialize(n_cores)
    @lock = Mutex.new
    @n_cores = n_cores
    @available = n_cores
  end

  def acquire()

    got_it = false

    while(not got_it)
      @lock.synchronize {
        if(@available > 0) then
          @available = @available - 1
          got_it = true
        end
      }

      if(not got_it)
        sleep 0.1
      end
    end

  end

  def release()
    @lock.synchronize {
      @available = @available + 1
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
      puts "Queued: #{j.to_s}"
    }
  end

  def exec(job)
    @semaphore.acquire

    @running_lock.synchronize {
      @running_jobs = @running_jobs + 1        
    }

    puts "Running: #{job.to_s}"

    Thread.new {

      begin
        job.run
        job.finish
      rescue => detail
        job.error(detail)
      end

      @running_lock.synchronize {
        @running_jobs = @running_jobs - 1
      }
      @semaphore.release
      
      puts "Finished: #{job.to_s}"
    }
  end

  def exec_all()
    while not @stop do

      job = nil

      while job.nil? and not @stop do
        @queue_lock.synchronize {
          if @queue.length > 0 
            job = @queue[0]
            @queue = @queue.drop(1)
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

      exec(job)
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

def mk_folder(benchmark, subdir)
  "results/#{$stamp}/#{benchmark}/#{subdir}"
end

### JOBS

class SillyJob

  def initialize(n)
    @n = n
  end

  def run
    print "#{@n}\n"
  end
end

class Job

  def initialize
    @owner = nil
  end

  def set_debug
    @debug = true
  end

  def debug(x)
    if @debug
      puts "[debug][#{self.to_s}] #{x}\n"
    end
  end

  def set_owner(x, p)
    @owner = x
    @owner_param = p
  end

  def finish
    if not @owner.nil? then
      @owner.job_finished(p)
    end
  end

  def error(e)
    puts "[error][#{self.to_s}] Encountered exception"
    puts "[error][#{self.to_s}] #{e}"
    puts e.backtrace
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

class StagedJob

  def initialize(n)
    @stage_count = n
    @stages = [[]]*n
    @finish_lock = Mutex.new
  end

  def add_to_stage(n, job)
    job.set_owner(self, n)
    @stages[n].push(job)
  end

  def job_finished(stage)
    do_run = false

    @finish_lock.synchronize {
      @stage_sizes[stage] = @stage_sizes[stage] - 1
      if @stage_sizes[stage] == 0
        do_run = true
      end
    }

    if(do_run)
      run_stage(stage)
    end
  end

  def run_stage(n)
    if @stages[n].length == 0
      if(n < @stage_count)
        run_stage(n+1)
      end
    else
      @stages[n].each do |j|
        $queue.push(j)
      end
    end
  end

  def run
    @stage_sizes = []
    @stages.each do |stage|
      @stage_sizes.push(stage.length)
    end

    run_stage(0)
  end

end

class StatisticsJob < Job

  def initialize(benchmark)
    @benchmark = benchmark
  end

  def to_s
    "Statistics/#{@benchmark}"
  end

  def run
    out_file =        "#{mk_folder(@benchmark,"")}/stats"
    search_log =      "#{mk_folder(@benchmark, "search")}/outputs/outputs.csv"
    search_fail_log = "#{mk_folder(@benchmark, "search")}/outputs/fail_times.csv"
    search_stats =    "#{mk_folder(@benchmark, "search")}/search_stats.json"
    verify_log =      "#{mk_folder(@benchmark, "")}/verification_log.csv"
    bench_log =       "#{mk_folder(@benchmark, "")}/benchmark_log.csv"

    ## Performance of the best rewrite
    best_index = -1
    best_value = 0
    target_value = 0
    total_benchmark_time = 0

    File.open(bench_log).each do |line|
      split = line.split(",")
      id = split[0].to_i
      value = split[1].to_f

      if(value > best_value)
        best_index = id
        best_value = value
      end

      if(id == 0)
        target_value = value
      end

      total_benchmark_time += split[2].to_f
    end

    best_speedup = best_value.to_f/target_value.to_f

    ## Copy the best rewrite and the binary into the top directory
    FileUtils.cp("#{mk_folder(@benchmark, "search")}/outputs/#{best_index}.s", 
                 "#{mk_folder(@benchmark, "")}/result.s")
    FileUtils.cp("#{mk_folder(@benchmark, "benchmark")}/#{best_index}.bin", 
                 "#{mk_folder(@benchmark, "")}/result.bin")

    ## Total bounded verification time and #runs
    total_bv_time = 0
    total_bv_runs = 0
    total_bv_success = 0

    File.open(search_fail_log) do |line|
      time = line.to_f/1000
      total_bv_time += time
      total_bv_runs += 1
    end

    File.open(search_log) do |line|
      split = line.split(",")
      time = split[3].to_f/1000
      total_bv_time += time
      total_bv_runs += 1
      total_bv_success += 1
    end

    ## Total search time
    File.open(search_stats).each do |line|
      total_stoke_time = 0
      match = /total_search_time": ([0-9.]*)/.match(line)
      if match
        total_stoke_time = match[1].to_f
      end
    end

    total_search_time = total_stoke_time - total_bv_time


    ## Total, average DDEC time and # runs
    total_ddec_time = 0
    total_ddec_runs = 0
    total_ddec_success = 0
    File.open(verify_log).each do |line|
      split = line.split(",")
      total_ddec_time += split[2].to_f
      total_ddec_runs += 1
      if(split[1] == "verified")
        total_ddec_success += 1
      end
    end


    ## WRITE IT OUT!
    File.open(out_file, "w") do |outfile|
      outfile.print("@benchmark")
      outfile.print("")
      outfile.print("### Summary ###")
      outfile.print("speedup: #{best_speedup}")
      outfile.print("best rewrite: #{best_index}")
      outfile.print("best rewrite score: #{best_value}")
      outfile.print("target score: #{target_value}")
      outfile.print("")
      outfile.print("### Search ###")
      outfile.print("total search time: #{total_search_time}")
      outfile.print("total BV runs: #{total_bv_runs}")
      outfile.print("total BV time: #{total_bv_time/1000}")
      outfile.print("average BV time: #{total_bv_time/(1000*total_bv_runs)}")
      outfile.print("total BV success: #{total_bv_success}")
      outfile.print("")
      outfile.print("### DDEC Verification ###")
      outfile.print("total ddec runs: #{total_ddec_runs}")
      outfile.print("total ddec success: #{total_ddec_success}")
      outfile.print("total ddec time: #{total_ddec_time/1000}")
      outfile.print("average ddec time: #{total_ddec_time/(1000*total_ddec_runs)}")
      outfile.print("")
      outfile.print("### Benchmarking ###")
      outfile.print("total benchmark time: #{total_benchmark_time}")
    end

  end
end

class SearchJob < Job

  def initialize(benchmark)
    @benchmark = benchmark
    @folder = mk_folder(@benchmark, "search")
  end

  def to_s
    "Search/#{@benchmark}"
  end

  def run

    debug "Writing Config File"
    FileUtils.mkdir_p @folder
    write_config "#{@folder}/search.conf"

    debug "Running search"
    shell("stoke_search --config search.conf >/dev/null 2>/dev/null", @folder)

    debug "Search finished"
    search_output_file = "#{@folder}/outputs/outputs.csv"

    stage_job = StagedJob.new(2)

    ## Create verification jobs for each result
    File.open(search_output_file).each do |line|
      split = line.split(",")
      id = split[0]
      if(id != "num")
        id = id.to_i
        debug "we found result #{id}"

        v = VerificationJob.new(@benchmark, id, "#{mk_folder(@benchmark,"")}/verification_log.csv")
        stage_job.add_to_stage(0, v)
      end
    end

    ## Create benchmark job for the target
    tbench = BenchmarkJob.new(@benchmark, 0)
    stage_job.add_to_stage(0, tbench)

    ## Create statistics job to aggregate results for this benchmark
    stats_job = StatisticsJob.new(@benchmark)
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
      file.write("--init target\n")
      file.write("--target target.s\n")
      file.write("--verify_all\n")
      file.write("\n")

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
      file.write("--bound 2\n")
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

  def initialize(benchmark, rewrite_id, log_file)
    @benchmark = benchmark
    @rewrite_file = mk_folder(benchmark, "search") + "/outputs/#{rewrite_id}.s"
    @rewrite_id = rewrite_id
    @log_file = log_file
    set_debug
  end

  def to_s
    "Verify/#{@benchmark}/#{@rewrite_id}"
  end

  def run
    data = $benchmarks[@benchmark]
    folder = mk_folder(@benchmark, "verify")
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
    if(success)
      status = "verified"
      j = BenchmarkJob.new(@benchmark, @rewrite_id)
#$queue.add_job(j)
      j.run
    end

    ### Log the outcome
    File.open(@log_file, 'a') { |logfile|
      logfile.puts "#{@rewrite_id},#{status},#{verify_time}"
    }
  end

end

class BenchmarkJob < Job

  def initialize(benchmark, id)
    @benchmark = benchmark
    @id = id
    set_debug
  end

  def to_s
    "Benchmark/#{@benchmark}/#{@id}"
  end

  def run
    benchmark_start = Time.new

    FileUtils.mkdir_p(mk_folder(@benchmark, "benchmark"))

    binary = "#{@benchmark}/binary"
    rewrite = "#{mk_folder(@benchmark, "search")}/outputs/#{@id}.s"
    optbin = "#{mk_folder(@benchmark, "benchmark")}/#{@id}.bin"
    stats = "#{mk_folder(@benchmark, "benchmark")}/#{@id}.out"
    logfile = "#{mk_folder(@benchmark, "")}/benchmark_log.csv"

    if(@id == 0) #placeholder for target
      rewrite = "#{@benchmark}/target.s"
    end

    ## Replace binary
    if not File.exist?(optbin) then
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
      match = /[a-z]*[ ]*\(.*\): ([0-9]*)/.match(log)
      if match then
        times.push(match[1].to_i)
      end
    end

    result = "bad"
    if(times.length != 10 && times.length != 20)
      times = times.take(10)
      sum = times.inject(0) { |x,y| x + y }
      result = sum.to_f/10
    end

    benchmark_end = Time.new
    benchmark_time = (benchmark_end - benchmark_start).round(3)

    File.open(logfile, "a") do |file|
      file.print "#{@id},#{result},#{benchmark_time}"
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
  puts "Killing children"
  # it's not what you think!

  # stop the queue
  $queue.finish

  # kill any remaining children
  $child_pids_lock.synchronize {
    $child_pids.each do |pid|
      puts "Killing #{pid}"
      %x(kill -9 #{pid})
    end
  }

  exit 1
end


#### Here's what to do

def main
  $stamp = "testing"

  s = Semaphore.new(32)
  $queue = JobQueue.new(s)
  $child_pids_lock = Mutex.new
  $child_pids = []

  exit_nicely

  $benchmarks.each do |k,v|
    j = SearchJob.new(k)
    $queue.add_job(j)
  end

#j = SearchJob.new("wcpcpy")
#j.set_debug
#$queue.add_job(j)

  $queue.exec_all
end

main

