
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

def publish(topic, attributes, data)
  if(attributes["type"] == "smt")
    puts "Publishing " + attributes["job"].to_s + " with solver/strategy " + attributes["solver"] + " / " + attributes["model"]
  elsif(attributes["type"] == "class")
    puts "Publishing " + attributes["job"].to_s
  end
  STDOUT.flush
  topic.publish_async data, attributes
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

def publish_loop(topic)

  current_string = ""
  attrs = {} 
  working_on_data = false
  working_on_attrs = false

  STDIN.each_line do |line|
    if line.strip == "== DONE ==" then
      exit 0
    elsif line.strip == "== END ==" then
      publish(topic, attrs, current_string)
      current_string = ""
      attrs = {}
      working_on_data = false
      working_on_attrs = false
    elsif line.strip == "== ATTRIBUTES ==" then
      working_on_attrs = true
      working_on_data = false
    elsif line.strip == "== DATA ==" then
      working_on_attrs = false
      working_on_data = true
    elsif working_on_attrs == true then
      pieces = line.split(" ")
      attrs[pieces[0]] = pieces[1]
    elsif working_on_data == true then
      current_string += line
    end
  end

end

ENV.each { |k,v| puts "#{k}=#{v}" }
options = parse_options
puts options
topic = get_topic(options[:id], options[:topic])
puts "Got topic #{topic}"
STDOUT.flush
publish_loop(topic)



