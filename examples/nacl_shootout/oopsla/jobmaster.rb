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
  :cycle_timeout => 5000, #200000,
  :timeout_iterations => 5000, #200000*20,

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
  def set_debug
    @debug = true
  end

  def debug(x)
    if @debug
      puts "[debug][#{self.to_s}] #{x}\n"
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


class SearchJob < Job

  def initialize(benchmark)
    @benchmark = benchmark
    @folder = mk_folder(@benchmark, "search")
  end

  def run

    debug "Writing Config File"
    FileUtils.mkdir_p @folder
    write_config "#{@folder}/search.conf"

    debug "Running search"
    shell("stoke_search --config search.conf >/dev/null 2>/dev/null", @folder)

    debug "Search finished"
    search_output_file = "#{@folder}/outputs/outputs.csv"
    File.open(search_output_file).each do |line|
      split = line.split(",")
      id = split[0]
      if(id != "num")
        id = id.to_i
        debug "we found result #{id}"

        v = VerificationJob.new(@benchmark, id, "#{mk_folder(@benchmark,"")}/verification_log.csv")
        $queue.add_job(v)
      end
    end
  end

  def to_s
    "Search/#{@benchmark}"
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
      $queue.add_job(j)
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
    FileUtils.mkdir_p(mk_folder(@benchmark, "benchmark"))

    binary = "#{@benchmark}/binary"
    rewrite = "#{mk_folder(@benchmark, "search")}/outputs/#{@id}.s"
    optbin = "#{mk_folder(@benchmark, "benchmark")}/#{@id}.bin"
    ver = "#{mk_folder(@benchmark, "benchmark")}/#{@id}.ver"
    stats = "#{mk_folder(@benchmark, "benchmark")}/#{@id}.out"

    ## Replace binary
    cmd = "stoke_replace --nacl -i #{binary} --rewrite #{rewrite} -o #{optbin} >/dev/null 2>/dev/null"
    shell(cmd, ".")

    ## Benchmark it
    cmd = "sel_ldr.py #{optbin} > #{stats} 2>/dev/null"
    shell(cmd, ".")

    ## Analyze the result
    times = []
    File.open(stats).each do |log|
      match = /[a-z]*[ ]*\(.*\): ([0-9]*)/.match(log)
      if match then
        times.push(match[1].to_i)
      end
    end

    if(times.length != 10 && times.length != 20)
      return :bad
    else
      times = times.take(10)
      sum = times.inject(0) { |x,y| x + y }
      average = sum.to_f/10
      return average
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

  s = Semaphore.new(4)
  $queue = JobQueue.new(s)
  $child_pids_lock = Mutex.new
  $child_pids = []

  exit_nicely

#$benchmarks.each do |k,v|
#    j = SearchJob.new(k)
#j.set_debug
#    $queue.add_job(j)
#  end
  j = SearchJob.new("wcpcpy")
  j.set_debug
  $queue.add_job(j)

  $queue.exec_all
end

main

