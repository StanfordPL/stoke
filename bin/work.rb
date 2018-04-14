
require "google/cloud/pubsub"
require 'optparse'
require 'tempfile'

def parse_options
  options = {
    :id   => ENV['GOOGLE_CLOUD_PROJECT'],
    :jobs => 1
  }

  OptionParser.new do |opts|
    opts.banner = "Usage: work.rb <options>"

    opts.on('-p', '--project-id ID', 'Project ID') { |v| options[:id] = v }
    opts.on('-t', '--topic TOPIC', 'Topic') { |v| options[:topic] = v }
    opts.on('-j', '--jobs N', 'Number of Jobs') { |v| options[:jobs] = v.to_i }
  end.parse!

  options
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

def process_smt(message, attrs)

  # get attributes
  solver = attrs["solver"]
  model = attrs["model"]
  whitelist(solver, ["z3", "cvc4"])
  whitelist(model, ["flat", "arm"])
  puts "Handling #{attrs["job"]} with solver #{solver} strategy #{model}"

  # copy input data into a file
  infile = Tempfile.new('ocinput')
  infile.write(message.data)
  infile.close

  # create temporary file for output
  outfile = Tempfile.new('ocoutput')
  outfile.close
  puts "Temp paths #{infile.path} and #{outfile.path}"
  puts "Infile exits? #{File.file?(infile.path)}"
  puts "Outfile exits? #{File.file?(outfile.path)}"

  puts "Running OC"
  # run obligation checker

  pid = Process.fork()
  if pid.nil? then
    exec("stoke_obligation_check --solver #{solver} --alias_strategy #{model} < #{infile.path} > #{outfile.path}")
  end
  puts "Waiting on #{pid}"
  Process.waitpid(pid)

  puts "OC Done"

  # delete temporary files
  data = File.read(outfile.path)
  infile.unlink
  outfile.unlink
  puts "Deleting temporary files"

  # publish response to output topic
  output_topic_name = attrs["output-topic"];
  output_topic = get_topic(output_topic_name)
  output_topic.publish_async data, attrs
  puts "Finished #{attrs["job"]} with solver #{solver} strategy #{model}"

end

def process_message(message)
  attrs = message.attributes
  if(attrs["type"] == "smt")
    process_smt(message, attrs)
    return true
  end
  return false
end

def work(options, sub)

  count = 0

  subscriber = sub.listen :threads => { :callback => options[:jobs] } do |message|
    outcome = process_message(message)
    if outcome then
      puts "...ack"
      message.acknowledge!
      count = count+1
      puts "COUNT = " + count.to_s
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
@topic_cache = { }
@pubsub = Google::Cloud::Pubsub.new :project => options[:id]

topic = get_topic(options[:topic])
subscription = get_subscription(topic, options[:topic])
puts subscription

work(options, subscription)

