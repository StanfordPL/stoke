
require "google/cloud/pubsub"
require 'optparse'

# inputs
# 1. on stdin, a list of things to publish
# 2. command line parameters:
#    - project id --project-id
#    - topic to publish to --topic
#    - an attribute "type" --type

def parse_options
  options = {
    :id   => ENV['GOOGLE_CLOUD_PROJECT'],
  }

  OptionParser.new do |opts|
    opts.banner = "Usage: publisher.rb <options>"

    opts.on('-p', '--project-id ID', 'Project ID') { |v| options[:id] = v }
    opts.on('-t', '--topic TOPIC', 'Topic') { |v| options[:topic] = v }
  end.parse!

  options
end

def get_topic(project_id, topic_name)
  pubsub = Google::Cloud::Pubsub.new :project => project_id
  topic = pubsub.topic topic_name

  # create topic if needed
  if topic.nil? or not topic.exists? then
    puts "Creating topic..."
    pubsub.create_topic topic_name
    topic = pubsub.topic topic_name
  else
    puts "Topic exists..."
  end

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

def work(sub)

  count = 0

  while true do
    messages = sub.pull :max => 100, :immediate => false
    if messages.size == 0 then
      exit
    end

    messages.each do |message|
      puts "RECEIVED!"
      puts message.data
      puts ""
      puts "...ack"
      message.acknowledge!
      count = count+1
      puts "COUNT = " + count.to_s
    end
  end

end

options = parse_options
puts options
topic = get_topic(options[:id], options[:topic])
subscription = get_subscription(topic, options[:topic])
puts subscription
work(subscription)
