
require "google/cloud/pubsub"
require "google/cloud/datastore"
require 'optparse'
require 'tempfile'

def parse_options
  options = {
    :id      => ENV['GOOGLE_CLOUD_PROJECT'],
    :topic   => "worklist",
    :jobs    => 1,
    :timeout => "1h"
  }

  OptionParser.new do |opts|
    opts.banner = "Usage: work.rb <options>"

    opts.on('-p', '--project-id ID', 'Project ID') { |v| options[:id] = v }
    opts.on('-t', '--topic TOPIC', 'Topic') { |v| options[:topic] = v }
    opts.on('-j', '--jobs N', 'Number of Jobs') { |v| options[:jobs] = v.to_i }
    opts.on('-m', '--timeout DURATION', 'Timeout for Obligation Checker') { |v| options[:timeout] = v }
  end.parse!

  options
end

# return the set of invalidated ids
def has_entries(ids)
#puts "[has_entries] called with ids=#{ids}"
  cached_ids = nil
  @datastore_cache_mutex.synchronize do
    cached_ids = ids & @datastore_cache
  end

#puts "[has_entries] in cache=#{cached_ids}"
  # ids not found in cache
  noncached_ids = ids - cached_ids
  noncached_keys = noncached_ids.map { |x| @datastore.key "QueueJobInvalidation", x }
  return cached_ids if noncached_keys.size == 0

  # database lookup of everything not found in cache
  result = @datastore.find_all *noncached_keys.to_a, :consistency => :eventual

  # ids not found in the cache, but were in the database
  found = result.all.map { |x| x.key.name }
#puts "[has_entries] not in cache, but were in DB=#{found}"

  @datastore_cache_mutex.synchronize do
    @datastore_cache.merge(found)
  end

  all = Set.new(found) + cached_ids
#puts "[has entries] in cache or in DB = #{all}"
  all
end

def has_cached_entry(id)
  in_cache = false
  @datastore_cache_mutex.synchronize do
    in_cache = @datastore_cache.include?(id)
  end
  in_cache
end

def has_queue_entry(id)
  key = @datastore.key "QueueInvalidation", id
  x = @datastore.find key, :consistency => :eventual
  result = !x.nil?
  return result
end


def has_entry(id)
  if has_cached_entry id
    return true
  end

  key = @datastore.key "QueueJobInvalidation", id
  x = @datastore.find key, :consistency => :eventual
  result = !x.nil?

  if result
    @datastore_cache_mutex.synchronize do
      @datastore_cache.add(result)
    end
  end

  result
end

def add_entry(id)
  if has_cached_entry id
    return
  end

  key = @datastore.key "QueueJobInvalidation", id
  x = @datastore.entity key
  @datastore.save x

  @datastore_cache_mutex.synchronize do
    @datastore_cache.add(id)
  end
end

# tell the monitor to watch for id entering the cache/datastore if it does,
# kill off the pid
def monitor_add(id, pid) 
  @monitor_mutex.synchronize do
    if @monitor_map.include?(id) then
      @monitor_map[id].add(pid)
    else
      s = Set.new
      s.add(pid)
      @monitor_map[id] = s
    end
  end
end

def monitor_remove(id, pid)
  @monitor_mutex.synchronize do
    x = @monitor_map[id]
    x.delete(pid) if not x.nil?
  end
end

# signal that a job is finished, and to kill any running processes working on this job
def monitor_kill(id, exclude_pid, job)
  s = nil
  @monitor_mutex.synchronize do
    s = @monitor_map[id]
    @monitor_map.delete(id)
  end
  return if s.nil?
  puts "Monitor Killing... #{s} exclude #{exclude_pid} (job #{id})"
  s.delete?(exclude_pid)
  s.each do |pid|
    begin
      pgid = Process.getpgid(pid)
      puts "Killing pid #{pid} with pgid #{pgid}"
      Process.kill "TERM", -pgid
    rescue Exception => e
      puts "Got exception killing #{pid}"
      puts e
      # process.kill throws an exception if pid isn't found, not what we want
    end
  end
end

def monitor_loop
  while true
    sleep 0.5
    s = nil
    @monitor_mutex.synchronize do
      s = @monitor_map.keys
    end

    # lookup all monitored keys in database (also updates cache)
    s = Set.new(s)
    to_kill = has_entries(s)

    # kill all processes associated with these jobs
    to_kill.each do |job| 
      monitor_kill(job, 0, 0)
    end

    # check to make sure we have no bad queues
    queue_check_list = Set.new
    @queues_seen_mutex.synchronize do
      queue_check_list.merge(@queues_seen)
    end
    @bad_queues_mutex.synchronize do
      queue_check_list -= @bad_queues
    end
#puts "Checking for bad queues #{queue_check_list}"
    new_bad_queues = Set.new
    queue_check_list.each do |queue_name|
      if has_queue_entry queue_name then
        new_bad_queues.add(queue_name)
        puts "Got bad queue #{queue_name}"
      end
    end
    if new_bad_queues.size > 0 then
      @bad_queues_mutex.synchronize do
        @bad_queues.merge(new_bad_queues)
      end
    end
  end
end



def get_topic(topic_name)
  entry = @topic_cache[topic_name]
  if not entry.nil? then
    return entry
  end

  topic = @pubsub.topic topic_name

  # create topic if needed
  if topic.nil? or not topic.exists? then
    puts "Creating topic..."
    @pubsub.create_topic topic_name
    topic = @pubsub.topic topic_name
  else
    puts "Topic exists..."
  end

  @topic_cache[topic_name] = topic
  topic
end

def get_subscription(topic, topic_name)
  name = topic.name
  subscription_name = topic_name + "-sub"
  sub = topic.subscription subscription_name
  if sub.nil? or not sub.exists? then
    puts "Creating subscription..."
    topic.subscribe subscription_name
    sub = topic.subscription subscription_name
  else
    puts "Subscription exists..."
  end
  sub
end

def whitelist(var, list)
  if not list.include?(var) then
    puts "Security exception: " + var + " not in " + list
    exit 1
  end
end

def queue_is_bad(name)
  okay = nil
  @bad_queues_mutex.synchronize do
    okay = @bad_queues.include?(name)
  end
  return okay
end

def process_smt(message, attrs, options)

  # get attributes
  solver = attrs["solver"]
  model = attrs["model"]
  job = attrs["job"]
  output_topic_name = attrs["output-topic"]
  @queues_seen_mutex.synchronize do
    @queues_seen.add(output_topic_name)
  end
  if queue_is_bad output_topic_name then
    puts "Discarding #{job} on invalid queue #{output_topic_name}"
    return
  end

  whitelist(solver, ["z3", "cvc4"])
  whitelist(model, ["flat", "arm"])
  puts "Handling #{job} with solver #{solver} strategy #{model} queue #{output_topic_name}"

  # check if we can skip this
  datastore_key = "#{output_topic_name}-#{job}"
  if has_entry datastore_key then
    puts "Skipping #{job} with solver #{solver} strategy #{model}; already done."
    return
  end

  # copy input data into a file
  infile = Tempfile.new('ocinput')
  infile.write(message.data)
  infile.close

  # create temporary file for output
  outfile = Tempfile.new('ocoutput')
  outfile.close

  #puts "Exists? #{File.exist?(infile.path)} #{File.exist?(outfile.path)} #{File.exist?(ocerr.path)}"
  #puts "Temp paths #{infile.path}, #{outfile.path} #{ocerr.path}"
  #puts "Running OC"

  # run obligation checker
  tmoutstring = "/usr/bin/timeout #{options[:timeout]}"
  cmdstring = "stoke_obligation_check --solver #{solver} --alias_strategy #{model} -o #{outfile.path} <#{infile.path}"
  pid = spawn(cmdstring, :pgroup => 0)
  monitor_add(job, pid)
  puts "Waiting on #{pid} (job #{job})"
  STDOUT.flush
  Process.waitpid(pid)
  monitor_remove(job, pid)
  puts "#{pid} Done (job #{job})"

  # check if we were killed early
  if has_cached_entry datastore_key then
    puts "Looks like #{pid} (job #{job}) was killed early; not generating output" 
    STDOUT.flush
    return
  end


  # delete temporary files
  data = File.read(outfile.path)
  infile.unlink
  outfile.unlink

  if data.size == 0 then
    data = generate_error("stoke_obligation_check failed")
    puts "Encountered error for job #{job} pid #{pid} with solver #{solver} strategy #{model}"
    STDOUT.flush
  end

  # publish response to output topic
  output_topic = get_topic(output_topic_name)
  output_topic.publish data, attrs

  # once published, invalidate this job
  puts "Adding entry #{job} to datastore"
  add_entry(datastore_key)
  monitor_kill(job, pid, job)

  puts "Finished #{job} with solver #{solver} strategy #{model}"
  STDOUT.flush

end

def generate_error(m)
  "0 0 1\n#{m}\n"
end

def process_message(message, options)
  begin
    attrs = message.attributes
    if(attrs["type"] == "smt")
      process_smt(message, attrs, options)
      return true
    end
    return false
  rescue Exception => e
    @exception_mutex.synchronize do
      STDERR.puts ""
      STDERR.puts ""
      STDERR.puts "Exception! #{e}"
      STDERR.puts ""
      STDERR.puts e.backtrace
      STDERR.flush
    end
    return false
  end
end

def work(options, sub)

  count = 0

  subscriber = sub.listen :threads => { :callback => options[:jobs] },
                          :inventory => options[:jobs]*100 do |message|
    puts "Got message"
    @working_mutex.synchronize do
      @working = @working + 1
      puts "WORKING: #{@working}"
    end
    outcome = process_message(message, options)
    @working_mutex.synchronize do
      @working = @working - 1
    end
    if outcome then
      puts "...ack"
      message.acknowledge!
      count = count+1
      puts "COUNT = " + count.to_s
      STDOUT.flush
    else
      puts "Can't handle this!"
      exit
    end
  end

  subscriber.start

  while true
    sleep 1
  end
end

options = parse_options
puts options

## global variables
@working_mutex = Mutex.new
@working = 0
@exception_mutex = Mutex.new
@topic_cache = { }
@pubsub = Google::Cloud::Pubsub.new :project => options[:id]
@datastore_cache = Set.new
@datastore_cache_mutex = Mutex.new
@datastore = Google::Cloud::Datastore.new :project => options[:id]
@monitor_map = { }
@monitor_mutex = Mutex.new
@queues_seen_mutex = Mutex.new
@queues_seen = Set.new
@bad_queues_mutex = Mutex.new
@bad_queues = Set.new

topic = get_topic(options[:topic])
subscription = get_subscription(topic, options[:topic])
puts subscription
STDOUT.flush

t = Thread.new do
  monitor_loop()
end

work(options, subscription)


