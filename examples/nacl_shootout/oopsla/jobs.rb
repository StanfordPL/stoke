
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
    log "---"
    log e.backtrace.join("\n")
    log "---"
  end

  def shell(cmd, dir)
    debug "shell: [in #{dir}] #{cmd}"
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



