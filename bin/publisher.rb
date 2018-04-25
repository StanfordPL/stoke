#!/usr/bin/env ruby

require "google/cloud/pubsub"
require "google/cloud/datastore"
require 'optparse'

# inputs
# 1. on stdin, a list of things to publish
# 2. command line parameters:
#    - project id --project-id
#    - topic to publish to --topic
#    - an attribute "type" --type

@debug = false

def debug(s)
  if @debug
    puts s
  end
end

def parse_options
  options = {
    :id    => ENV['GOOGLE_CLOUD_PROJECT'],
    :topic => 'worklist'
  }

  OptionParser.new do |opts|
    opts.banner = "Usage: publisher.rb <options>"

    opts.on('-p', '--project-id ID', 'Project ID') { |v| options[:id] = v }
    opts.on('-t', '--topic TOPIC', 'Topic') { |v| options[:topic] = v }
    opts.on('-d', '--debug') { |d| @debug = true }
  end.parse!

  options
end

def publish(topic, attributes, data)
  topic.publish_async data, attributes
  if(attributes["type"] == "smt")
    puts "Published " + attributes["job"].to_s + " with solver/strategy " + attributes["solver"] + " / " + attributes["model"]
  elsif(attributes["type"] == "class")
    puts "Published " + attributes["job"].to_s
  else
    puts "Published message with type #{attributes["type"]}"
  end
  STDOUT.flush
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

def make_mini_blob(lines, name, index)
  byte_count = 0
  current_line = 0
  selected_text = ""
  line = lines[current_line]
  loop do
    break if byte_count + line.size > 1000000
    selected_text.concat(line)
    byte_count += line.size 
    current_line = current_line + 1
    break if current_line >= lines.size
    line = lines[current_line]
  end
  while current_line > lines.size 
    current_line = lines.size - 1
  end
  (1..current_line).each { |i| lines.delete_at(0) }


  debug "current_line=#{current_line}"
  debug "selected_text len = #{selected_text.size}"
  debug "index = #{index}"

  blob = @datastore.entity "Blob" do |t|
    t["name"] = name
    t["contents"] = selected_text
    t["index"] = index
    t.exclude_from_indexes! "contents", true
  end
  @datastore.save blob
end

def push_blob(attrs, lines)
  name = attrs["name"]
  puts "PUSHING BLOB #{name}"

  query = @datastore.query("Blob").
    where("name", "=", attrs["name"])
  existing = @datastore.run query
  return if not existing.nil? and existing.size > 0

  index = 0
  while lines.size > 0 do
    make_mini_blob(lines, name, index)
    index = index+1
  end

  puts "... BLOB PUSHED WITH #{index} ENTITIES"
  STDOUT.flush
end

def publish_loop(topic)

  lines = []
  attrs = {} 
  working_on = :none

  STDIN.each_line do |line|
    if line.strip == "== DONE ==" then
      exit 0
    elsif line.strip == "== END ==" and working_on == :data then
      debug "Got message to publish"
      publish(topic, attrs, lines.join("\n"))
      lines = []
      attrs = {}
      working_on = :none
    elsif line.strip == "== END ==" and working_on == :blob then
      debug "Got blob to upload"
      push_blob(attrs, lines)
      lines = []
      attrs = {}
      working_on = :none
    elsif line.strip == "== BLOB ==" then
      debug "Reading blob"
      working_on = :blob
    elsif line.strip == "== ATTRIBUTES ==" then
      debug "Reading attributes"
      working_on = :attrs
    elsif line.strip == "== DATA ==" then
      debug "Reading message"
      working_on = :data
    elsif working_on == :attrs then
      debug "  (got attr)"
      pieces = line.split(" ")
      attrs[pieces[0]] = pieces[1]
    elsif working_on == :data or working_on == :blob then
      debug "  (got line)"
      lines.push(line)
    end
  end

end

options = parse_options
puts options
@datastore = Google::Cloud::Datastore.new :project => options[:id]
topic = get_topic(options[:id], options[:topic])
puts "Got topic #{topic}"
STDOUT.flush
publish_loop(topic)
sleep 10


