#!/usr/bin/env ruby

require "google/cloud/pubsub"
require "google/cloud/datastore"
require 'optparse'
require 'tempfile'

def parse_options
  options = {
    :id      => ENV['GOOGLE_CLOUD_PROJECT'],
    :topic   => "worklist",
    :jobs    => 32,
    :timeout => "1h"
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
  topic = @pubsub.topic topic_name
  # create topic if needed
  if topic.nil? or not topic.exists? then
    puts "Topic doesn't exist"
    exit 1
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



def work(options, sub)

  count = 0

  subscriber = sub.listen :threads => { :callback => options[:jobs] },
                          :inventory => options[:jobs]*100 do |message|
    puts "...ack"
    message.acknowledge!
    count = count+1
    puts "COUNT = " + count.to_s
    STDOUT.flush
  end

  subscriber.start

  while true
    sleep 1
  end
end

options = parse_options
puts options

@pubsub = Google::Cloud::Pubsub.new :project => options[:id]
topic = get_topic(options[:topic])
subscription = get_subscription(topic, options[:topic])
puts subscription
STDOUT.flush


work(options, subscription)


