
require "google/cloud/pubsub"
require "google/cloud/datastore"
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
  topic.publish_async data, attributes
  if(attributes["type"] == "smt")
    puts "Published " + attributes["job"].to_s + " with solver/strategy " + attributes["solver"] + " / " + attributes["model"]
  elsif(attributes["type"] == "class")
    puts "Published " + attributes["job"].to_s
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

def push_blob(attrs, current_string)
  puts "PUSHING BLOB #{attrs["name"]}"

  query = @datastore.query("Blob").
    where("name", "=", attrs["name"])
  existing = @datastore.run query
  return if not existing.nil? and existing.size > 0

  blob = @datastore.entity "Blob" do |t|
    t["name"] = attrs["name"]
    t["contents"] = current_string
    t.exclude_from_indexes! "contents", true
  end
  @datastore.save blob
  puts "... BLOB PUSHED"
  STDOUT.flush
end

def publish_loop(topic)

  current_string = ""
  attrs = {} 
  working_on = :none

  STDIN.each_line do |line|
    if line.strip == "== DONE ==" then
      exit 0
    elsif line.strip == "== END ==" and working_on == :data then
      publish(topic, attrs, current_string)
      current_string = ""
      attrs = {}
      working_on = :none
    elsif line.strip == "== END ==" and working_on == :blob then
      push_blob(attrs, current_string)
      current_string = ""
      attrs = {}
      working_on = :none
    elsif line.strip == "== BLOB ==" then
      working_on = :blob
    elsif line.strip == "== ATTRIBUTES ==" then
      working_on = :attrs
    elsif line.strip == "== DATA ==" then
      working_on = :data
    elsif working_on == :attrs then
#puts "      got attr"
      pieces = line.split(" ")
      attrs[pieces[0]] = pieces[1]
    elsif working_on == :data or working_on == :blob then
#puts "      got line"
      current_string += line
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



